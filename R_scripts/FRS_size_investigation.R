### FRS length comp investigation  

library(tidyverse)
library(gt)
library(nmfspalette)
library(sf)
library(ggridges)

#FRS data broken up into 3 datasets
early <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/picdr_112849_fy48_15.csv")
late <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/picdr_112849_fy16_18.csv")
d2019 <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/picdr_112970_fy19.csv")
areas_frs <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/BF_Area_Grid_Reggie.csv",header=T)
areas_frs <- areas_frs %>% 
  filter(Valid. == "") %>% 
  select(-Valid.)


HDAR_areas <- st_read("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/GIS/Shapefiles/DAR_Reporting_grids_all.shp")
HDAR_areas <- HDAR_areas %>% 
  filter()


frs <- rbind(early, late, d2019)
head(frs)

### Double check with john that com_names is the same order as species id 
com_names <- c("Hapuupuu","Kalekale","Opakapaka","Ehu","Onaga","Ehu","Lehi","Gindai")
frs_id <- data.frame(COMMON_NAME = com_names,  SPECIES = c(15,17,19,21,22,36,58,97))


deep7_frs <- frs %>% 
  filter(SPECIES %in% frs_id$SPECIES) %>% 
  mutate(SPECIES = replace(SPECIES, 36, 21)) %>% 
  filter(AREA %in% areas_frs$area) %>% 
  filter(SUBAREA != "A|B") %>% 
  filter(AREA != 16123 & !is.na(SUBAREA)) %>% 
  filter(CAUGHT == 1) %>% 
  filter(GEAR == 3) %>% 
  select(SPECIES, HOURS, CAUGHT, LBS, NUM_SOLD, LBS_SOLD, F_SEASON, F_LBS, CYEAR, FYEAR, AREA) %>% 
  left_join(frs_id, by = "SPECIES")

deep7 <- unique(camera_lengths$COMMON_NAME)[-c(8:9)]

deep7_frs$Region <- cut(as.numeric(deep7_frs$AREA), breaks = c(99,300,400,500,20000), labels = c("BIG ISLAND","MAUI NUI","OAHU",'KAUAI-NIIHAU'))

write.csv(deep7_frs, file = "./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Deep_7_FRS.csv")
## Is it really reasonable to catch an opaka bigger than 20lbs? Looking at Sundberg and Underkoffler (weight and length sampling at the UFA fishing auction) and googling the max size, they all seem to be < 20lbs. Also state record is 18.5 lbs. John chose to cut off at 19lbs. 
opaka_frs <- deep7_frs %>% 
  filter(str_detect(COMMON_NAME, "Opakapaka") & LBS < 19) %>% 
  mutate(Decade = floor(FYEAR / 10) * 10,
         Decade = factor(Decade, levels = seq(1940, 2010, by = 10)))
  
summary(opaka_frs)

opaka_frs %>%  
  ggplot(aes(x = LBS, group = Decade, color = Decade)) +
  geom_density() +
  theme_classic()
  
opaka_frs %>% 
  group_by(Decade) %>% 
  summarise(N = n()) %>% 
  gt()

opaka_frs %>% 
  ggplot(aes(x = Decade, y = LBS)) +
  geom_boxplot() +
  theme_classic()

opaka_frs %>% filter(LBS == 0.5)

hist(opaka_frs$LBS %% 1)

opaka_frs %>% 
  filter(LBS >= 2 & LBS <= 5) %>% 
  ggplot(aes(x = LBS)) +
  geom_density()

opaka_frs %>% 
  # group_by(AREA) %>% 
  # summarise(n())
  ggplot(aes(x = LBS, color = AREA, group = AREA)) +
  geom_density() 
  facet_wrap(~AREA)
  
  
HDAR_areas %>% 
  ggplot() +
  geom_sf()

mhi_cropped <- st_crop(HDAR_areas, xmin = -162, xmax = -153,
                          ymin = 17, ymax = 24)

opaka_frs %>% 
  rename(AREA_ID = "AREA") %>% 
  right_join(mhi_cropped, by = "AREA_ID") %>% 
  st_sf() %>% 
  group_by(AREA_ID) %>% 
  summarise(lbs = as.numeric(as.character(sum(LBS)))) %>% 
  ungroup() %>% 
  ggplot() +
  geom_sf() +
  #geom_text(aes(label = AREA_ID)) +
  theme_classic()


opaka_frs <- deep7_frs %>% 
  filter(str_detect(COMMON_NAME, "Opakapaka") & LBS < 19) %>% 
  mutate(Decade = floor(FYEAR / 10) * 10,
         Decade = factor(Decade, levels = seq(1940, 2010, by = 10)),
         AREA = as.numeric(AREA))

opaka_lbs_sum <- opaka_frs %>% 
  group_by(Decade, AREA) %>% 
  summarise(tot_lbs = sum(LBS)) %>% 
  rename(AREA_ID = AREA) %>% 
  right_join(mhi_cropped, by = "AREA_ID") %>% 
  mutate(Lbs_caught = case_when(
    tot_lbs >= 1& tot_lbs <= 50 ~ "0-50 lbs",
    tot_lbs >= 51 & tot_lbs <= 100 ~ "51-100 lbs",
    tot_lbs >= 101 & tot_lbs <= 500 ~ "101-500 lbs",
    tot_lbs >= 501 & tot_lbs <= 5000 ~ "501-5000 lbs"
  ),
  Lbs_caught = factor(Lbs_caught, levels = c("0-50 lbs", 
                                             "51-100 lbs", 
                                             "101-500 lbs", 
                                             "501-5000 lbs"))) %>% 
  filter(!is.na(Lbs_caught)) %>% 
  ungroup() %>% 
  st_sf()

mhi_cropped %>%   
  ggplot() +
  geom_sf(fill = "white") +
  geom_sf(data = opaka_lbs_sum, aes(fill = Lbs_caught), alpha = .5) +
  coord_sf(
    xlim = c(-162, -154),
    ylim = c(18, 23.5)
  ) +
  facet_wrap(~Decade) +
  theme_classic() +
  scale_fill_nmfs("regional web")


opaka_frs %>% 
    merge(mhi_cropped, by.x = "AREA", by.y = "AREA_ID", all = TRUE) %>% 
    filter(!is.na(LBS)) %>%
    group_by(TYPE) %>%
    filter(str_detect(TYPE, "MHI")) %>% 
    ggplot(aes(x = LBS, y = TYPE)) +
    geom_density_ridges()
    
# convert from weight to length by L = (W/alpha)^(1/beta)
  
alpha <- 2.311E-05
beta <- 2.928

opaka_frs %>% 
  mutate(
    kg = (LBS *0.45359237), 
    Length = (kg/alpha)^(1/beta)) %>% 
  ggplot(aes(x = Length)) +
  geom_density() +
  geom_density(data = cam, aes(x = LENGTH_CM), color = "purple") +
  theme_classic()
  


deep7_frs %>% 
  filter(CAUGHT == 1) %>% 
  group_by(COMMON_NAME) %>% 
  summarise(Min = min(LBS),
            q1 = quantile(LBS, probs = .25), 
            med = median(LBS), 
            q3 = quantile(LBS, probs = .75), 
            Max = max(LBS))


onaga = 35
ehu = 12
gindai = 5
Hapuupuu = 563
kalekale = 4
lehi = 33
opakapaka = 19

deep7_frs <- deep7_frs %>% 
  filter(CAUGHT == 1) %>% 
  filter(COMMON_NAME == "Ehu" & LBS < 12 | COMMON_NAME == "Gindai" & LBS < 5 | COMMON_NAME == "Hapuupuu" & LBS < 563 | COMMON_NAME == "Kalekale" & LBS < 4 | COMMON_NAME == "Lehi" & LBS < 33 | COMMON_NAME == "Onaga" & LBS < 35 | COMMON_NAME == "Opakapaka" & LBS < 19)
