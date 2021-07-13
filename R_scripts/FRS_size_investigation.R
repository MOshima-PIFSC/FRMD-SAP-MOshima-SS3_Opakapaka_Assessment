### FRS length comp investigation  

library(tidyverse)
library(gt)

#FRS data broken up into 3 datasets
early <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/picdr_112849_fy48_15.csv")
late <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/picdr_112849_fy16_18.csv")
d2019 <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/picdr_112970_fy19.csv")
areas_frs <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/BF_Area_Grid_Reggie.csv",header=T)
areas_frs <- areas_frs %>% 
  filter(Valid. == "") %>% 
  select(-Valid.)


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
  select(SPECIES, HOURS, CAUGHT, LBS, NUM_SOLD, LBS_SOLD, F_SEASON, F_LBS, CYEAR, FYEAR, AREA) %>% 
  left_join(frs_id, by = "SPECIES")

deep7 <- unique(camera_lengths$COMMON_NAME)[-c(8:9)]

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
