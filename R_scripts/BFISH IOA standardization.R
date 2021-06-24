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
opaka.dat$endyr <- 2019
endyr <- opaka.dat$endyr
bfish <- bfish %>% 
    filter(YEAR <= endyr) %>% 
    mutate(seas = rep(7, nrow(bfish)), 
       index = rep(4, nrow(bfish)),
       se_log = log(SE_Biomass_kg)) %>% 
    select(YEAR, seas, index, Biomass_kg, se_log) %>% 
    rename(year = "YEAR",
           obs = "Biomass_kg")

opaka.dat$CPUE <- bind_rows(opaka.dat$CPUE, bfish)

data.frame(type = 1, surveytiming = 0.5, area = 1, units = 1, need_catch_mult = 0, fleetname = "BFISH")
opaka.dat$fleetinfo <- bind_rows(opaka.dat$fleetinfo, 
                                 data.frame(type = 3, surveytiming = 0.5, area = 1, units = 1, need_catch_mult = 0, fleetname = "BFISH"))
opaka.dat$Nfleets <- 4
opaka.dat$CPUEinfo <- bind_rows(opaka.dat$CPUEinfo, data.frame(Fleet = 4, Units = 1, Errtype = 0, SD_Report = 0, row.names = "BFISH"))
opaka.dat$catch <- bind_rows(opaka.dat$catch, 
                            data.frame(year = 2019, seas = 1, fleet = 1, catch = 159.89, catch_se = 0.01))
SS_writedat(opaka.dat, outfile = "./Run2/Indices/opakadat.ss", overwrite = TRUE)

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

rep. <- SS_output("./Run2/Indices")
SS_plots(rep.)

rownames(rep.$parameters)
rep.$parameters %>% 
filter(str_detect(rownames(.), "sigmaR")) %>% 
select(1:12)

rep.$parameters %>% 
select(Value, Min, Max, Gradient)

rep.$rmse_table
rep.$Size_comp_Eff_N_tuning_check
rep.$index_variance_tuning_check

rep.$parameters_with_highest_gradients

head(rep.$CoVar, n = 5)
rep.$CoVar %>% 
filter(label.j == "SR_LN(R0)") %>% 
filter(corr >= 0.97 | corr <= -0.97)

rep.$likelihoods_by_fleet

rep.$equil_yield
rep.$Size_comp_Eff_N_tuning_check


SSMethod.TA1.8(rep., "size", 1, plotit = TRUE)
rep.$Size_comp_Eff_N_tuning_check
SS_tune_comps(rep., option = "Francis", dir = dir., exe_in_path = TRUE, model = "ss3")

head(rep.$sizedbase)
rep.$sizedbase %>% 
filter(Pearson > 0.8 | Pearson < -0.8) %>% 
group_by(Yr) %>% 
summarise(n())

rep.$parameters %>% 
filter(str_detect(row.names(.), "Size_"))

png("./Run2/Indices/plots/bfish_index.png", height = 6, width = 8, units = "in", res = 300)
plot(as.numeric(bfish$YEAR), 
    bfish$Biomass_kg, 
    pch = 1, 
    ylim = c(1000000, 6000000), 
    ylab = "Index", 
    xlab = "Year", 
    xaxt = "n")
axis(side = 1, 
    at = as.numeric(bfish$YEAR), 
    labels = TRUE)
arrows(x0 = as.numeric(bfish$YEAR), 
    y0 = bfish$Biomass_kg - bfish$SE_Biomass_kg, 
    x1 = bfish$YEAR, 
    y1 = bfish$Biomass_kg + bfish$SE_Biomass_kg, 
    length = 0.02, 
    code = 3, 
    angle = 90)
dev.off()