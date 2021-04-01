### ss3diags 
#install_github("jabbamodel/ss3diags")
library(ss3diags)
library(r4ss)
library(tidyverse)

rep. <- SS_output("./Run1/Indices")

SSplotJABBAres(rep., 
print = TRUE, 
plotdir = "./Run1/Indices")

SSrunstest(rep., quants = "cpue")
SSplotRunstest(rep., 
               subplots = "cpue",
               plotdir = "./Run1/Indices",
               print = TRUE)

rep.normalized <- SS_output("./Run1/normalized_indices")

SSplotJABBAres(rep.normalized, 
print = TRUE, 
plotdir = "./Run1/normalized_indices")

SSrunstest(rep.normalized, quants = "cpue")
SSplotRunstest(rep., 
               subplots = "cpue",
               plotdir = "./Run1/normalized_indices",
               print = TRUE)



## Recruitment profiling
head(rep.$parameters, n = 20)

ro.vec <- seq(1, 10, length.out = 30)
SS_profile(dir = "./Run1/Indices/R0_profiling/", 
           masterctlfile = "control.ss_new", 
           newctlfile = "control_mod.ss",
           string = "R0",
           profilevec = ro.vec,
           model = "ss3")

# read the output files (with names like Report1.sso, Report2.sso, etc.)
Nprofile <- length(ro.vec)
profilemodels <- SSgetoutput(dirvec="./Run1/Indices/R0_profiling/", keyvec=1:Nprofile)
# summarize output
profilesummary <- SSsummarize(profilemodels)

# OPTIONAL COMMANDS TO ADD MODEL WITH PROFILE PARAMETER ESTIMATED
MLEmodel <- SS_output("./Run1/Indices")
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

