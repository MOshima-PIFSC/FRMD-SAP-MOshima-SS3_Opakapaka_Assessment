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
islands <- data.frame(Island = c("Big Island", "Maui Nui", "Oahu", "Kauai", "Niihau"), 
                      lat_deg = c(19.6, 20.8, 21.45, 22.1, 21.9), 
                      lon_deg = c(-155.45, -156.25, -157.96, -159.52, -160.35))

HI %>% 
  filter(STATEFP == 15) %>% 
  ggplot() +
  geom_sf() +
  geom_point(data = N.drops, aes(x = lon_deg, y = lat_deg, colour = Gear, size = n), alpha = .5) +
  geom_text(data = islands, aes(lon_deg, lat_deg, label = Island), size = 4) + 
  scale_color_nmfs(palette = "regional web") +
  theme_classic() +
  labs(y = "Latitude", x = "Longitude")



small.fish.both <- lengths.combo %>% 
  filter((LENGTH_CM > 20 & LENGTH_CM < 25 & Gear == "Research Fishing") | (Gear == "Camera" & LENGTH_CM > 10 & LENGTH_CM < 15)) %>% 
  distinct(PSU, .keep_all = TRUE) %>% 
  merge(psu, by = "PSU")  
  
HI %>% 
  filter(STATEFP == 15) %>% 
  ggplot() +
  geom_sf() +
  geom_point(data = small.fish.both, 
             aes(x = lon_deg, y = lat_deg, colour = Gear), alpha = .4, size = 2.6) +
  geom_text(data = islands, aes(lon_deg, lat_deg, label = Island), size = 4) + 
  #coord_sf(xlim = c(-154.5, -159))
  theme_classic() +
  labs(y = "Latitude", x = "Longitude")
  
