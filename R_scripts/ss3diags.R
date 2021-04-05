### ss3diags 
#install_github("jabbamodel/ss3diags")
library(ss3diags)
library(r4ss)
library(tidyverse)

dir. <- "./Run2/Indices"
dir. <- "./Run1"
rep. <- SS_output(dir.)

SSplotJABBAres(rep., 
print = TRUE, 
plotdir = dir.)

SSrunstest(rep., quants = "cpue")
SSplotRunstest(rep., 
               subplots = "cpue",
               plotdir = dir.,
               print = TRUE)

## Recruitment profiling
head(rep.$parameters, n = 20)

ro.vec <- seq(1, 10, length.out = 30)
SS_profile(dir = paste0(dir., "/R0_profiling/"), 
           masterctlfile = "control.ss_new", 
           newctlfile = "control_mod.ss",
           string = "R0",
           profilevec = ro.vec,
           model = "ss3")

# read the output files (with names like Report1.sso, Report2.sso, etc.)
Nprofile <- length(ro.vec)
profilemodels <- SSgetoutput(dirvec= paste0(dir., "/R0_profiling/"), keyvec=1:Nprofile)
# summarize output
profilesummary <- SSsummarize(profilemodels)

# OPTIONAL COMMANDS TO ADD MODEL WITH PROFILE PARAMETER ESTIMATED
MLEmodel <- SS_output(dir.)
profilemodels$MLE <- MLEmodel
profilesummary <- SSsummarize(profilemodels)
# END OPTIONAL COMMANDS

# plot profile using summary created above
SSplotProfile(profilesummary,           # summary object
              profile.string = "R0", # substring of profile parameter
              profile.label="Ln(R0)") # axis label


mainlike_components <- c("Survey") 

mainlike_components_labels  <- c('Index likelihood') 


SSplotProfile(profilesummary,           # summary object
              profile.string = "R0", # substring of profile parameter
              components = mainlike_components,
              component.labels = mainlike_components_labels,
              profile.label=expression(log(italic(R)[0]))) # axis label

PinerPlot(profilesummary, 
          print = TRUE,
          component = "Surv_like",
          plotdir = paste0(dir., "/R0_profiling"))
