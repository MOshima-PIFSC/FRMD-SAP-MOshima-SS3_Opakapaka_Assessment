### BFISH PSUs 

library(rgdal)
library(tidyverse)
library(sf)
library(usmap)
#remotes::install_github("nmfs-general-modeling-tools/nmfspalette")
library(nmfspalette)

psu <- st_read(
  "./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/GIS/Shapefiles/BFISH_PSU.shp")
### HI shapefile, unadjusted coordinates
HI <- st_read("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/GIS/Shapefiles/cb_2017_us_state_20m.shp")

camera_lengths <- read.csv("./Data/BFISH 2016-2019 Camera Lengths.csv")
fishing_lengths <- read.csv("./Data/BFISH 2016-2019 Research Fishing Lengths.csv")
sp_code <- "PRFI"

cam <- camera_lengths %>% 
  filter(str_detect(SPECIES_CD, sp_code)) %>% 
  filter(str_detect(BFISH, "_S", negate = TRUE)) %>% 
  select(-X)

fish <- fishing_lengths %>% 
  filter(str_detect(SPECIES_CD, sp_code)) %>% 
  filter(str_detect(BFISH, "_S", negate = TRUE)) %>% 
  select(-X)

psu.cam <- cam %>% 
  select(PSU) %>% 
  distinct(PSU) %>% 
  pull(PSU)

psu.cam

psu.fish <- fish %>% 
  dplyr::select(PSU) %>% 
  distinct(PSU) %>% 
  pull(PSU)

psu.sampled <- psu %>% 
  filter(PSU %in% psu.cam) %>% 
  mutate(Gear = "Camera") %>% 
  dplyr::select(lon_deg, lat_deg, PSU, Gear) %>% 
  st_set_geometry(NULL)

fish.sampled <- psu %>% 
  filter(PSU %in% psu.fish) %>% 
  mutate(Gear = "Research Fishing") %>% 
  dplyr::select(lon_deg, lat_deg, PSU, Gear) %>% 
  st_set_geometry(NULL)

psu.sampled <- psu.sampled %>% 
  bind_rows(fish.sampled)

HI %>% 
  filter(STATEFP == 15) %>% 
  ggplot() + 
  geom_sf() + 
  geom_point(data = psu.sampled, aes(x = lon_deg, y = lat_deg, colour = Gear), alpha = .5, size = 2.5) +
  scale_color_nmfs(palette = "regional web") + 
  theme_classic() +
  labs(y = "Latitude", x = "Longitude")

## map with dots size = n of sampling in that location
cam.n <- cam %>% 
  group_by(PSU) %>% 
  summarise(n = n()) %>% 
  merge(psu, by = "PSU") %>% 
  mutate(Gear = "Camera")

  
fish.n <- fish %>% 
  group_by(PSU) %>% 
  summarise(n = n()) %>% 
  merge(psu, by = "PSU") %>% 
  mutate(Gear = "Research Fishing")

N.drops <- bind_rows(fish.n, cam.n)
islands <- cbind(ib.shp, st_coordinates(st_centroid(ib.shp)))
CRS(islands) <- CRS(HI)

HI %>% 
  filter(STATEFP == 15) %>% 
  ggplot() +
  geom_sf() +
  geom_point(data = N.drops, aes(x = lon_deg, y = lat_deg, colour = Gear, size = n), alpha = .5) +
  #geom_sf(data = islands, fill = NA) +
  #geom_label(data = islands, aes(X, Y, label = Island), size = 3) + 
  scale_color_nmfs(palette = "regional web") +
  theme_classic() +
  labs(y = "Latitude", x = "Longitude")


