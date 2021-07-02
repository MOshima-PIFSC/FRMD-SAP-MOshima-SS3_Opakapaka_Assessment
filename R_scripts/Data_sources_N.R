library(tidyverse)
library(nmfspalette)

camera_lengths <- read.csv("./Data/BFISH 2016-2019 Camera Lengths.csv")
fishing_lengths <- read.csv("./Data/BFISH 2016-2019 Research Fishing Lengths.csv")
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
  select(SPECIES, HOURS, CAUGHT, LBS, NUM_SOLD, LBS_SOLD, F_SEASON, F_LBS, CYEAR, FYEAR) %>% 
  left_join(frs_id, by = "SPECIES")

deep7 <- unique(camera_lengths$COMMON_NAME)[-c(8:9)]
  

cam_sum <- camera_lengths %>% 
  filter(COMMON_NAME %in% deep7) %>% 
  select(COMMON_NAME, OFFICIAL_DEPTH_M, LENGTH_CM) %>% 
  group_by(COMMON_NAME) %>% 
  summarise(N = n()) %>% 
  mutate(Data_Source = "BFISH_camera_length")

rfish_sum <- fishing_lengths %>% 
  filter(COMMON_NAME %in% deep7) %>% 
  select(COMMON_NAME, LENGTH_CM) %>% 
  group_by(COMMON_NAME) %>% 
  summarise(N = n()) %>% 
  mutate(Data_Source = "BFISH_fishing_length")

frs_sum <- deep7_frs %>% 
  group_by(COMMON_NAME) %>% 
  summarise(N = n()) %>% 
  mutate(Data_Source = "FRS_lbs_caught",
         N = N/1000) 


data.df <- bind_rows(cam_sum, rfish_sum, frs_sum) %>% 
  mutate(COMMON_NAME = factor(COMMON_NAME, 
                              levels = c("Opakapaka", 
                                         "Onaga", 
                                         "Ehu", 
                                         "Kalekale", 
                                         "Hapuupuu", 
                                         "Gindai", 
                                         "Lehi")),
         Data_Source = factor(Data_Source)) %>% 
  group_by(Data_Source) 

#get x coordinates for text labels to the side
x.pos <- group_indices(data.df)


##
ggplot(data = data.df, aes(x = Data_Source, y = COMMON_NAME, alpha = N)) + 
  geom_point(aes(size = N+5), color = "#0093D0", show.legend = FALSE) +
  geom_text(aes(label = N, x = x.pos + .25), alpha = 1.0, size = 4, color = "#0093D0") +
  scale_alpha_continuous(range = c(0.3, 0.7)) + 
  scale_size_area(max_size = 20) +
  labs(x = "Data Source", 
       y = "Common Name",
       caption = "Amount of data available per species (Nrows). Note FRS_lbs_caught is x1000.") +
  theme_classic()  +
  ggsave(filename = "./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data_sources_N.png")

