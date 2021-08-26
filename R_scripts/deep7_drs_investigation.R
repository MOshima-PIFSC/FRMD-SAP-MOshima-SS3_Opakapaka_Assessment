library(tidyverse)
library(gt)
library(nmfspalette)
library(sf)
library(ggridges)

drs <- read.csv("./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/D7DealerData2000-2021.csv")
head(drs)


com_names <- c("Hapuupuu","Kalekale","Opakapaka","Ehu","Onaga","Ehu","Lehi","Gindai")
frs_id <- data.frame(COMMON_NAME = com_names,  SPECIES = c(15,17,19,21,22,36,58,97))


deep7_drs <- drs %>% 
 mutate(common_name = str_replace_all(local_name, 
                                      c("'Ula'ula Koa'e, Onaga, Ula" = "Onaga",
                                      "'Opakapaka" = "Opakapaka",
                                      "'Ula'ula, Ehu" = "Ehu", 
                                      "HÄ\u0081pu'u, HÄ\u0081pu'upu'u, Shapon" = "Hapuupuu",
                                      "Kalekale, Kalikali" = "Kalekale",
                                      "'Ukikiki, Gindai, Tai" = "Gindai"))) %>% 
  filter(pieces_bought == 1) %>% 
  separate(report_date, into = c("Year", "Month", "Day"), sep = "-", convert = TRUE) %>% 
  mutate(FYear = ifelse(Month < 7, Year, Year + 1)) %>% 
  select(c(Year, 
           FYear,
           Month,
           common_name, 
           pieces_bought, 
           pounds_bought, 
           total_value,
           data_source,
           report_type, 
           dealer_number)) %>% 
  filter(common_name == "Ehu" & pounds_bought < 12 
         | common_name == "Gindai" & pounds_bought < 5 
         | common_name == "Hapuupuu" & pounds_bought < 70 
         | common_name == "Kalekale" & pounds_bought < 4 
         | common_name == "Lehi" & pounds_bought < 33 
         | common_name == "Onaga" & pounds_bought < 35 
         | common_name == "Opakapaka" & pounds_bought < 19) %>% 
  filter(pounds_bought > 0)

## Save tidy dataset
write.csv(deep7_drs, file = "./FRMD-SAP-MOshima-SS3_Opakapaka_Assessment/Data/Data for Meg/DRS_deep7.csv")

deep7_frs <- deep7_frs %>% 
  filter(CAUGHT == 1) %>% 
  filter(COMMON_NAME == "Ehu" & LBS < 12 
         | COMMON_NAME == "Gindai" & LBS < 5 
         | COMMON_NAME == "Hapuupuu" & LBS < 563 
         | COMMON_NAME == "Kalekale" & LBS < 4 
         | COMMON_NAME == "Lehi" & LBS < 33 
         | COMMON_NAME == "Onaga" & LBS < 35 
         | COMMON_NAME == "Opakapaka" & LBS < 19) %>% 
  rename("common_name" = "COMMON_NAME")


deep7_drs %>% 
  group_by(common_name) %>% 
  ggplot(aes(x = pounds_bought)) +
  geom_density(colour = "#D02C2F", size = .75) + 
  geom_density(aes(x = LBS), data = deep7_frs, color = "#007078", size = .75) +
  facet_wrap(~common_name, scales = "free") +
  theme_classic()


table(drs$dealer_number)
