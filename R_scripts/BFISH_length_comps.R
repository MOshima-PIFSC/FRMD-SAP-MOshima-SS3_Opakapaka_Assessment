library(tidyverse)
library(r4ss)
library(gridExtra)

camera_lengths <- read.csv("./Data/BFISH 2016-2019 Camera Lengths.csv")
fishing_lengths <- read.csv("./Data/BFISH 2016-2019 Research Fishing Lengths.csv")

head(camera_lengths)
head(fishing_lengths)

sp_code <- "PRFI"

opaka_lengths <- camera_lengths %>% 
filter(str_detect(SPECIES_CD, sp_code)) %>% 
separate(BFISH, into = c("BFISH", "YEAR", "SEASON"), sep = "_") %>% 
filter(str_detect(SEASON, "F")) %>% 
select(YEAR, LENGTH_CM) %>% 
mutate(GEAR = "Camera")

opaka_lengths <- fishing_lengths %>% 
filter(str_detect(SPECIES_CD, sp_code)) %>% 
separate(BFISH, into = c("BFISH", "YEAR", "SEASON"), sep = "_") %>% 
filter(str_detect(SEASON, "F")) %>% 
select(YEAR, LENGTH_CM) %>% 
filter(!is.na(LENGTH_CM)) %>% 
mutate(GEAR = "Fishing") %>% 
bind_rows(opaka_lengths) %>% 
mutate(bin = cut(LENGTH_CM, seq(min(LENGTH_CM), max(LENGTH_CM) + 2, 2), right = FALSE))

bw <- 2 * IQR(opaka_lengths$LENGTH_CM) / length(opaka_lengths$LENGTH_CM)^(1/3)

opaka_lengths %>% 
ggplot(aes(LENGTH_CM, colour = GEAR)) +
geom_freqpoly(binwidth = 3) +
facet_wrap(~YEAR, scales = "free") +
theme_classic()

grid.arrange(p1, p2, nrow = 1)

plot_fun = function(data, x, z, bw) {
     ggplot(data, aes(x = .data[[x]], colour = .data[[z]]) ) +
          geom_freqpoly(binwidth = bw) +
          facet_wrap(~YEAR, scales = "free")+
          theme_bw()
}

opaka_lengths  %>% 
plot_fun(x = "LENGTH_CM", z = "GEAR", bw = 3)

bw.vec <- seq(1, 5, by = 1)

opaka_lengths %>% 
plot_fun(., x = "LENGTH_CM", z = "GEAR", bw = bw.vec)

plots = map(bw.vec, ~ggplot(data = opaka_lengths, aes(x = LENGTH_CM, colour = GEAR) ) +
          geom_freqpoly(binwidth = .x) +
          facet_wrap(~YEAR, scales = "free")+
          theme_bw()
)

walk2(.x = plots, .y = bw.vec, 
  ~ ggsave(filename = paste0("length_bin", .y, ".png"), plot = .x))
