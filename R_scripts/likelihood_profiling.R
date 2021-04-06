### Running likelihood profiles  

library(r4ss)

dir. <- "./Run2/Indices"
profile.vec <- seq(1, 10, length.out = 20)

starter <- SS_readstarter(file = paste0(dir., "/starter.ss"), v = TRUE)
starter$ctlfile <- "modified_ctl.ss"
starter$prior_like <- 1
starter$jitter_fraction <- 0.1
SS_writestarter(starter, dir., overwrite = TRUE)

### create profiling folder and move key files and ss3.exe into that directory
SS_profile(paste0(dir., "/R0_profiling"), 
            model = "ss3", 
            masterctlfile = "opakactl.ss", 
            newctlfile = "modified_ctl.ss",
            string = "R0", 
            profilevec = profile.vec)


# read the output files (with names like Report1.sso, Report2.sso, etc.)
Nprofile <- length(profile.vec)
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

## Piner plot shows the likelihood components by data type over the profiled parameter
PinerPlot(profilesummary, 
          print = TRUE,
          component = "Surv_like",
          plotdir = paste0(dir., "/R0_profiling"),
          minfraction = 0.0)


