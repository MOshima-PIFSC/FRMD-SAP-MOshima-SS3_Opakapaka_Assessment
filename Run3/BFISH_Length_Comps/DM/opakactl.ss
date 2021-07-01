#V3.30.14.08-safe;_2019_12_02;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.0
#Stock Synthesis (SS) is a work of the U.S. Government and is not subject to copyright protection in the United States.
#Foreign copyrights may apply. See copyright.txt for more information.
#_user_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_user_info_available_at:https://vlab.ncep.noaa.gov/group/stock-synthesis
#_data_and_control_files: Uku.dat // Uku.ctl
0  # 0 means do not read wtatage.ss; 1 means read and use wtatage.ss and also read and use growth parameters
1  #_N_Growth_Patterns (Growth Patterns, Morphs, Bio Patterns, GP are terms used interchangeably in SS)
1 #_N_platoons_Within_GrowthPattern 
#_Cond 1 #_Platoon_between/within_stdev_ratio (no read if N_platoons=1)
#_Cond  1 #vector_platoon_dist_(-1_in_first_val_gives_normal_approx)
#
4 # recr_dist_method for parameters:  2=main effects for GP, Area, Settle timing; 3=each Settle entity; 4=none (only when N_GP*Nsettle*pop==1)
1 # not yet implemented; Future usage: Spawner-Recruitment: 1=global; 2=by area
1 #  number of recruitment settlement assignments 
0 # unused option
#GPattern month  area  age (for each settlement assignment)
 1 1 1 0
#
#_Cond 0 # N_movement_definitions goes here if Nareas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
0 #_Nblock_Patterns
#_Cond 0 #_blocks_per_pattern 
# begin and end years of blocks
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
 1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen time-varying parms of this category; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
#_Available timevary codes
#_Block types: 0: P_block=P_base*exp(TVP); 1: P_block=P_base+TVP; 2: P_block=TVP; 3: P_block=P_block(-1) + TVP
#_Block_trends: -1: trend bounded by base parm min-max and parms in transformed units (beware); -2: endtrend and infl_year direct values; -3: end and infl as fraction of base range
#_EnvLinks:  1: P(y)=P_base*exp(TVP*env(y));  2: P(y)=P_base+TVP*env(y);  3: null;  4: P(y)=2.0/(1.0+exp(-TVP1*env(y) - TVP2))
#_DevLinks:  1: P(y)*=exp(dev(y)*dev_se;  2: P(y)+=dev(y)*dev_se;  3: random walk;  4: zero-reverting random walk with rho;  21-24 keep last dev for rest of years
#
#_Prior_codes:  0=none; 6=normal; 1=symmetric beta; 2=CASAL's beta; 3=lognormal; 4=lognormal with biascorr; 5=gamma
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement 
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
#
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr; 5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
3 #_Age(post-settlement)_for_L1;linear growth below this
32 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0  #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
#
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
2 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W  
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_ LO HI INIT PRIOR PR_SD PR_type PHASE env_var&link dev_link dev_minyr dev_maxyr dev_PH Block Block_Fxn
# Sex: 1  BioPattern: 1  NatMort
 0.001 2 0.101 0.101 99 0 -2 0 0 0 0 0 0 0 # NatM_p_1_Fem_GP_1
# Sex: 1  BioPattern: 1  Growth
 0 25 11.7 11.7 99 0 -4 0 0 0 0 0 0 0 # L_at_Amin_Fem_GP_1
 40 120 67.4 67.4 99 0 -2 0 0 0 0 0 0 0 # L_at_Amax_Fem_GP_1
 0.15 0.3 0.242 0.242 99 0 -4 0 0 0 0 0 0 0 # VonBert_K_Fem_GP_1
 0.01 0.5 0.115 0.115 99 0 -3 0 0 0 0 0 0 0 # CV_young_Fem_GP_1
 0.01 0.5 0.067 0.067 99 0 -3 0 0 0 0 0 0 0 # CV_old_Fem_GP_1
# Sex: 1  BioPattern: 1  WtLen
0 3 2.311e-005 2.311e-005 -1 0 -3 0 0 0 0 0 0 0 # Wtlen_1_Fem
 0 3 2.928 2.928 -1 0 -3 0 0 0 0 0 0 0 # Wtlen_2_Fem
# Sex: 1  BioPattern: 1  Maturity&Fecundity
 30 50 40.7 40.7 99 0 -3 0 0 0 0 0 0 0 # Mat50%_Fem
 -6 0 -3.7 -3.7 99 0 -3 0 0 0 0 0 0 0 # Mat_slope_Fem
 0 3 1 1 99 0 -3 0 0 0 0 0 0 0 # Eggs/kg_inter_Fem
 0 3 0 0 99 0 -3 0 0 0 0 0 0 0 # Eggs/kg_slope_wt_Fem
# Hermaphroditism
#  Recruitment Distribution  
#  Cohort growth dev base
 -4 4 1 1 99 0 -3 0 0 0 0 0 0 0 # CohortGrowDev
#  Movement
#  Age Error from parameters
#  catch multiplier
#  fraction female, by GP
 0.0001 0.9999 0.5 0.5 0.5 0 -99 0 0 0 0 0 0 0 # FracFemale_GP_1
#
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 0 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; Options: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm; 8=Shepherd_3Parm; 9=RickerPower_3parm
0  # 0/1 to use steepness in initial equ recruitment calculation
0  #  future feature:  0/1 to make realized sigmaR a function of SR curvature
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn #  parm_name
            4            25       7.38134          13.6            99             0          1          0          0          0          0          0          0          0 # SR_LN(R0)
           0.2             1      0.650642         0.650642            99             0     -4          0          0          0          0          0          0          0 # SR_BH_steep
             0             2          0.4           0.6            99             0         -3          0          0          0          0          0          0          0 # SR_sigmaR
            -5             5             0            0            99             0         -3         0          0          0          0          0          0          0 # SR_regime  #JS parameterized as “envlink from paka file
             0             0             0            0            99             0         -1          0          0          0          0          0          0          0 # SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1949 # first year of main recr_devs; early devs can precede this era
2020 # last year of main recr_devs; forecast devs start in following year
2 #_recdev phase 
1 # (0/1) to read 13 advanced options
 -10 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 1 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
1939.4   #_last_early_yr_nobias_adj_in_MPD 
1979.5   #_first_yr_fullbias_adj_in_MPD 
2008.5   #_last_yr_fullbias_adj_in_MPD 
2015.9   #_first_recent_yr_nobias_adj_in_MPD 
0.7246  #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -10 #min rec_dev
 10 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#  1938E 1939E 1940E 1941E 1942E 1943E 1944E 1945E 1946E 1947E 1948R 1949R 1950R 1951R 1952R 1953R 1954R 1955R 1956R 1957R 1958R 1959R 1960R 1961R 1962R 1963R 1964R 1965R 1966R 1967R 1968R 1969R 1970R #1971R 1972R 1973R 1974R 1975R 1976R 1977R 1978R 1979R 1980R 1981R 1982R 1983R 1984R 1985R 1986R 1987R 1988R 1989R 1990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 2001R 2002R 2003R #2004R 2005R 2006R 2007R 2008R 2009R 2010R 2011R 2012R 2013R 2014R 2015R 2016R 2017R 2018F 2019F
#  0.00347689 0.0107379 0.0210974 0.0353081 0.0557405 0.0877397 0.140421 0.221022 0.20036 -0.0381698 0.00745118 -0.082082 -0.069102 -0.126673 -0.24415 -0.290763 -0.395791 -0.404372 -0.338419 -0.381122 -0.368149 -0.314376 #-0.30246 -0.290992 -0.315539 -0.221406 -0.111298 -0.13966 -0.201716 -0.0293346 0.0383464 0.0440115 0.367789 0.274526 -0.0947807 -0.230944 0.0107071 0.246341 -0.0577438 -0.116388 0.0608994 -0.0883758 0.0876727 -0.0957695 #0.458533 0.21821 0.0648712 -0.294448 -0.27003 0.0119655 0.656449 -0.225362 -0.111939 -0.0549684 -0.156492 -0.219149 -0.0403554 0.232634 0.0977376 -0.0490448 -0.0423879 -0.144457 -0.133191 -0.0350874 0.327193 0.73248 #0.385077 0.167339 0.0147251 0.0455835 0.267342 0.248024 0.434335 0.350394 0.218088 0.720315 0.400361 -0.0298874 -0.055188 -0.0160106 0 0
# implementation error by year in forecast:  0
#
#Fishing Mortality info 
0.1 # F ballpark
-1949 # F ballpark year (neg value to disable)
2 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
 0.05 4 0 # overall start F value; overall phase; N detailed inputs to read
#Fleet Yr Seas F_value se phase (for detailed setup of F_Method=2; -Yr to fill remaining years)


#
#_initial_F_parms; count = 1
#_ LO HI INIT PRIOR PR_SD  PR_type  PHASE
 0.001 5 0.120812 0.1 99 0 1 # InitF_seas_1_flt_1Catch_Com_DSH  #TODO
#2019 2069
# F rates by fleet
#STOPPED TRANSFERRING SOME  HUGE COMMENTED OUT BLOCKS HERE


#_Q_setup for fleets with cpue or survey data
#_1:  fleet number
#_2:  link type: (1=simple q, 1 parm; 2=mirror simple q, 1 mirrored parm; 3=q and power, 2 parm; 4=mirror with offset, 2 parm)
#_3:  extra input for link, i.e. mirror fleet# or dev index number
#_4:  0/1 to select extra sd parameter
#_5:  0/1 for biasadj or not
#_6:  0/1 to float
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
        2         1         0         0         0        0  #  CPUE_DSH_old
        3         1         0         0         0        0  #  CPUE_DSH_recent
        4         1         0         0         0        0  #  BFISH
     -9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_  LO    HI   INIT   PRIOR  PR_SD   PR_type  PHASE  env-var  use_dev   dev_mnyr dev_mxyr  dev_PH  Block Blk_Fxn  #  parm_name
-20    20  -4.68922    0       1     0      1    0      0     0     0   0     0     0  #  LnQ_base_CPUE_DSH_old(2)
-20    20  -6.72368    0       2     0      1    0      0     0     0   0     0     0  #  LnQ_base_CPUE_DSH_recent(3)
-20    20  -5          0       1     0      1    0      0     0     0   0     0     0  # LnQ_base_BFISH   
#_no timevary Q parameters
#
#_size_selex_patterns
#Pattern:_0; parm=0; selex=1.0 for all sizes
#Pattern:_1; parm=2; logistic; with 95% width specification
#Pattern:_5; parm=2; mirror another size selex; PARMS pick the min-max bin to mirror
#Pattern:_15; parm=0; mirror another age or length selex
#Pattern:_6; parm=2+special; non-parm len selex
#Pattern:_43; parm=2+special+2;  like 6, with 2 additional param for scaling (average over bin range)
#Pattern:_8; parm=8; New doublelogistic with smooth transitions and constant above Linf option
#Pattern:_9; parm=6; simple 4-parm double logistic with starting length; parm 5 is first length; parm 6=1 does desc as offset
#Pattern:_21; parm=2+special; non-parm len selex, read as pairs of size, then selex
#Pattern:_22; parm=4; double_normal as in CASAL
#Pattern:_23; parm=6; double_normal where final value is directly equal to sp(6) so can be >1.0
#Pattern:_24; parm=6; double_normal with sel(minL) and sel(maxL), using joiners
#Pattern:_25; parm=3; exponential-logistic in size
#Pattern:_27; parm=3+special; cubic spline 
#Pattern:_42; parm=2+special+3; // like 27, with 2 additional param for scaling (average over bin range)
#_discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead;_4=define_dome-shaped_retention
#_Pattern Discard Male Special
 1 0 0 0 # 1 Catch_Com_DSH
 15 0 0 1 # 2 CPUE_DSH_old
 15 0 0 1 # 3 CPUE_DSH_recent
 1 0 0 0 # 4 BFISH


##
#_age_selex_patterns
#Pattern:_0; parm=0; selex=1.0 for ages 0 to maxage
#Pattern:_10; parm=0; selex=1.0 for ages 1 to maxage
#Pattern:_11; parm=2; selex=1.0  for specified min-max age
#Pattern:_12; parm=2; age logistic
#Pattern:_13; parm=8; age double logistic
#Pattern:_14; parm=nages+1; age empirical
#Pattern:_15; parm=0; mirror another age or length selex
#Pattern:_16; parm=2; Coleraine - Gaussian
#Pattern:_17; parm=nages+1; empirical as random walk  N parameters to read can be overridden by setting special to non-zero
#Pattern:_41; parm=2+nages+1; // like 17, with 2 additional param for scaling (average over bin range)
#Pattern:_18; parm=8; double logistic - smooth transition
#Pattern:_19; parm=6; simple 4-parm double logistic with starting age
#Pattern:_20; parm=6; double_normal,using joiners
#Pattern:_26; parm=3; exponential-logistic in age
#Pattern:_27; parm=3+special; cubic spline in age
#Pattern:_42; parm=2+special+3; // cubic spline; with 2 additional param for scaling (average over bin range)
#_Pattern Discard Male Special
 0 0 0 0 # 1 Catch_Com_DSH
 0 0 0 0 # 2 CPUE_DSH_old
 0 0 0 0 #3 CPUE_DSH_recent
 0 0 0 0 #4 BFISH
#
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
# 1   Catch_Com_DSH LenSelex
             5           90             35            40           99             0          2          0          0          0          0          0          0          0  #  Size_inflection_Catch_Com_DSH(1)
             1           120       20.8581          16.5            99             0          3          0          0          0          0          0          0          0  #  Size_95%width_Catch_Com_DSH(1)
# 2  CPUE_DSH_old LenSelex
           # -1            -1            -1            -1            99             0         -4          0          0          0          0          0          0          0  #  SizeSel_P1_CPUE_DSH_old(6)
          # -1            -1            -1            -1            99             0         -4          0          0          0          0          0          0          0  #  SizeSel_P2_CPUE_DSH_old(6)
# 3   CPUE_DSH_recent LenSelex
           # -1            -1            -1            -1            99             0         -4          0          0          0          0          0          0          0  #  SizeSel_P1_CPUE_DSH_recent(7)
          #  -1            -1            -1            -1            99             0         -4          0          0          0          0          0          0          0  #  SizeSel_P2_CPUE_DSH_recent(7)
# 4   BFISH LenSelex
            1           90             7            40           99             0          2          0          0          0          0          0          0          0  #  Size_inflection_BFISH
            -1           120       20.8581          16.5          99             0          3          0          0          0          0          0          0          0  #  Size_95%width_BFISH
# 1   Catch_Com_DSH AgeSelex
# 2  CPUE_DSH_old AgeSelex
# 3   CPUE_DSH_recent AgeSelex
#_DM_error_len
#_ LO   HI  INIT   PRIOR  PR_SD  PR_type  PHASE  env-var  use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
#-5 20 .5 0 99 0 2 0 0 0 0 0 0 0 # ln(DM_theta)_Catch_Com_DSH
#-5 20 .5 0 99 0 2 0 0 0 0 0 0 0 # ln(DM_theta)_CPUE_DSH_old
#-5 20 .5 0 99 0 2 0 0 0 0 0 0 0 # ln(DM_theta)_CPUE_DSH_recent
#-5 20 .5 0 99 0 2 0 0 0 0 0 0 0  # ln(DM_theta)_BFISH_Len

#_no timevary selex parameters
#
0   #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read and autogen if tag data exist; 1=read
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# no timevary parameters
#
#
# Input variance adjustments factors: 
 #_1=add_to_survey_CV
 #_2=add_to_discard_stddev
 #_3=add_to_bodywt_CV
 #_4=mult_by_lencomp_N
 #_5=mult_by_agecomp_N
 #_6=mult_by_size-at-age_N
 #_7=mult_by_generalized_sizecomp
#_Factor  Fleet  Value
#      1      1       0.1
#      1      2       0.1
#      1      3       0.1
#      1      4       0.1
 -9999   1    0  # terminator
#
6 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 7 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin; 17=F_ballpark; 18=initEQregime
#like_comp fleet  phase  value  sizefreq_method
 1 2 1 1 1
 1 3 1 1 1
 1 4 1 1 1
 6 1 1 1 1
 6 4 1 1 1
 9 1 1 0 1
-9999  1  1  1  1  #  terminator
#
# lambdas (for info only; columns are phases)
#  0 0 0 0 0 #_CPUE/survey:_1
#  0 0 0 0 0 #_CPUE/survey:_2
#  0 0 0 0 0 #_CPUE/survey:_3
#  0 0 0 0 0 #_CPUE/survey:_4
#  0 0 0 0 0 #_CPUE/survey:_5
#  1 1 1 1 1 #_CPUE/survey:_6
#  1 1 1 1 1 #_CPUE/survey:_7
#  1 1 1 1 1 #_CPUE/survey:_8
#  1 1 1 1 1 #_CPUE/survey:_9
#  1 1 1 1 1 #_CPUE/survey:_10
#  1 1 1 1 1 #_sizefreq:_1
#  0 0 0 0 0 #_init_equ_catch
#  1 1 1 1 1 #_recruitments
#  1 1 1 1 1 #_parameter-priors
#  1 1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 1 #_crashPenLambda
#  0 0 0 0 0 # F_ballpark_lambda
0 # (0/1) read specs for more stddev reporting 
 # 0 0 0 0 0 0 0 0 0 # placeholder for # selex_fleet, 1=len/2=age/3=both, year, N selex bins, 0 or Growth pattern, N growth ages, 0 or NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999