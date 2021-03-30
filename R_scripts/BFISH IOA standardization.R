### BFISH IOA standardization
library(tidyverse)
library(r4ss)

bfish <- read.csv("./Data/Survey_data_paka.csv")
head(bfish)

b_mu <- mean(bfish$Biomass_kg)
b_se <- mean(bfish$SE_Biomass_kg)

bfish$IOA <- bfish$Biomass_kg / b_mu
bfish$CV <- log(bfish$se_log)

bfish$SE_log <- sqrt(log(1+bfish$CV)^2)


bfish$Biomass_kg/min(bfish$Biomass_kg)

### adding BFISH survey data into dat file
opaka.dat <- SS_readdat(file = "./Run1/opakadat.ss", version = "3.30")
endyr <- opaka.dat$endyr
bfish <- bfish %>% 
    filter(YEAR <= endyr) %>% 
    mutate(seas = rep(7, nrow(bfish)), 
       index = rep(4, nrow(bfish)),
       se_log = SE_Biomass_kg/mean(Biomass_kg)) %>% 
    select(YEAR, seas, index, Biomass_kg, SE_Biomass_kg) %>% 
    rename(year = "YEAR",
           obs = "Biomass_kg",
           se_log = "SE_Biomass_kg")

opaka.dat$CPUE <- bind_rows(opaka.dat$CPUE, bfish)

data.frame(type = 1, surveytiming = 0.5, area = 1, units = 1, need_catch_mult = 0, fleetname = "BFISH")
opaka.dat$fleetinfo <- bind_rows(opaka.dat$fleetinfo, 
                                 data.frame(type = 3, surveytiming = 0.5, area = 1, units = 1, need_catch_mult = 0, fleetname = "BFISH"))
opaka.dat$Nfleets <- 4
opaka.dat$CPUEinfo <- bind_rows(opaka.dat$CPUEinfo, data.frame(Fleet = 4, Units = 1, Errtype = 0, SD_Report = 0, row.names = "BFISH"))

SS_writedat(opaka.dat, outfile = "./Run1/Indices/opakadat.ss", overwrite = TRUE)

##Normalizing the CPUE data by mean  ######
cpue <- opaka.dat$CPUE
head(cpue)
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


SS_writedat(opaka.dat, outfile = "./Run1/normalized_indices/opakadat.ss", overwrite = TRUE)

rep. <- SS_output("./Run1/Indices")
SS_plots(rep.)



