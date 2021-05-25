library(tidyverse)
library(r4ss)
library(magrittr)

camera_lengths <- read.csv("./Data/BFISH 2016-2019 Camera Lengths.csv")
fishing_lengths <- read.csv("./Data/BFISH 2016-2019 Research Fishing Lengths.csv")

head(camera_lengths)
head(fishing_lengths)

sp_code <- "PRFI"

### What is causing the mode in the smaller sizes of the BFISH camera data?
cam <- camera_lengths %>% 
filter(str_detect(SPECIES_CD, sp_code)) %>% 
filter(str_detect(BFISH, "_S", negate = TRUE)) %>% 
select(-X)
head(cam)

summary(cam)

cam %>% 
ggplot(aes(x = LENGTH_CM)) +
geom_density()

cam %>% 
filter(LENGTH_CM < 20) %>% 
ggplot(aes(x = LENGTH_CM)) +
geom_density()

small_mode_drops <- cam %>% 
filter(LENGTH_CM < 15 & LENGTH_CM > 10) %>% 
group_by(DROP_CD) %>% 
summarise(n = n()) %>% 
filter(n >= 10) %>% 
pull(DROP_CD)

small_mode_drops

cam %>% 
filter(str_detect(DROP_CD, paste0(small_mode_drops, collapse = "|"))) %>% 
filter(LENGTH_CM < 20) %>% 
group_by(DROP_CD) %>% 
summarise(n())

## 4 camera drops had 10 or more fish < 20cm 
## The samples came from Maui Nui (1 site) and Oahu (3 sites)
## Those small fish came from depths of 80 - 110 m (first 1st quantile of depths)
cam %>% 
filter(str_detect(DROP_CD, paste0(small_mode_drops, collapse = "|")))  %>% 
ggplot(aes(x = LENGTH_CM, y = OFFICIAL_DEPTH_M)) + 
geom_point(aes(colour = DROP_CD), size = 3.5) +
scale_y_reverse() +
theme_classic()

### What is causing the mode in the larger sizes of the BFISH camera data?
cam %>% 
filter(LENGTH_CM > 50 & LENGTH_CM < 60) %>% 
ggplot(aes(x = LENGTH_CM)) +
geom_density()

cam %>% 
filter(LENGTH_CM > 50 & LENGTH_CM < 60) %>% 
group_by(DROP_CD) %>% 
summarise(n = n()) %>% 
filter(n > 1) %>% 
ggplot(aes(x = DROP_CD, y = n)) + geom_point()

large_mode_drops <- cam %>% 
filter(LENGTH_CM > 50 & LENGTH_CM < 60) %>% 
group_by(DROP_CD) %>% 
summarise(n = n()) %>% 
filter(n > 5) %>% 
pull(DROP_CD)

cam %>% 
filter(str_detect(DROP_CD, paste0(large_mode_drops, collapse = "|")))  %>% 
ggplot(aes(x = LENGTH_CM, y = OFFICIAL_DEPTH_M)) + 
geom_point(aes(colour = DROP_CD, shape = Island), size = 3.5) +
scale_y_reverse() +
theme_classic()


fish <- fishing_lengths %>% 
  filter(str_detect(SPECIES_CD, sp_code)) %>% 
  filter(str_detect(BFISH, "_S", negate = TRUE)) %>% 
  select(-X)

small_mode_fish <- fish %>% 
filter(LENGTH_CM > 20 & LENGTH_CM < 25)  %>% 
group_by(SAMPLE_ID) %>% 
summarise(n = n()) %>% 
filter(n > 1) %>% 
pull(SAMPLE_ID)

summary(fish)

fish %>% 
filter(str_detect(SAMPLE_ID, paste0(small_mode_fish, collapse = "|")))  %>% 
filter(LENGTH_CM > 20 & LENGTH_CM < 25) %>% 
ggplot(aes(x = LENGTH_CM, y = SAMPLE_MEAN_DEPTH_M)) + 
geom_point(aes(colour = SAMPLE_ID, shape = Island), size = 3.5) +
scale_y_reverse() +
theme_classic()
