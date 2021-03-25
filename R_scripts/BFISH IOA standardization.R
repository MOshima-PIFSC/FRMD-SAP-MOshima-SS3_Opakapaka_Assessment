### BFISH IOA standardization
library(tidyverse)
library(r4ss)

bfish <- read.csv("./Data/Survey_data_paka.csv")
head(bfish)

b_mu <- mean(bfish$Biomass_kg)

bfish$IOA <- bfish$Biomass_kg / b_mu
bfish$CV <- bfish$SE_Biomass_kg/b_mu


### switching standardized data into dat file
opaka.dat <- SS_readdat(file = "./Run1/opakadat.ss", version = "3.30")

cpue <- opaka.dat$CPUE
nrow(cpue)
class(cpue)
cpue <- cpue %>% 
    group_by(index) %>% 
    mutate(mu = mean(obs),
        stand_cpue = obs / mu,
        cv = se_log / mu)  %>% 
    select(year, seas, index, stand_cpue, cv) %>% 
    rename(obs = stand_cpue,
           se_log = cv) %>% 
    ungroup() %>% 
    as.data.frame()

opaka.dat$CPUE <- cpue


SS_writedat(opaka.dat, outfile = "./Run1/standardized_indices/opakadat.ss", overwrite = TRUE)

rep. <- SS_output("./Run1/standardized_indices")
SS_plots(rep.)

