#V3.30
#C file created using the SS_writectl function in the R package r4ss
#C file write time: 2021-04-05 10:40:32
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
4 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
1 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	1	1	0	#_recr_dist_pattern1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
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
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
#_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
3 #_Age(post-settlement)_for_L1;linear growth below this
32 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
2 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.0010	  2.0000	 1.010e-01	 1.010e-01	99.0	0	 -2	0	0	0	0	0	0	0	#_NatM_p_1_Fem_GP_1        
 0.0000	 25.0000	 1.170e+01	 1.170e+01	99.0	0	 -4	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1       
40.0000	120.0000	 6.740e+01	 6.740e+01	99.0	0	 -2	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1       
 0.1500	  0.3000	 2.420e-01	 2.420e-01	99.0	0	 -4	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1       
 0.0100	  0.5000	 1.150e-01	 1.150e-01	99.0	0	 -3	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1        
 0.0100	  0.5000	 6.700e-02	 6.700e-02	99.0	0	 -3	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1          
 0.0000	  3.0000	 2.311e-05	 2.311e-05	-1.0	0	 -3	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1         
 0.0000	  3.0000	 2.928e+00	 2.928e+00	-1.0	0	 -3	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1         
30.0000	 50.0000	 4.070e+01	 4.070e+01	99.0	0	 -3	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1          
-6.0000	  0.0000	-3.700e+00	-3.700e+00	99.0	0	 -3	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1       
 0.0000	  3.0000	 1.000e+00	 1.000e+00	99.0	0	 -3	0	0	0	0	0	0	0	#_Eggs/kg_inter_Fem_GP_1   
 0.0000	  3.0000	 0.000e+00	 0.000e+00	99.0	0	 -3	0	0	0	0	0	0	0	#_Eggs/kg_slope_wt_Fem_GP_1
-4.0000	  4.0000	 1.000e+00	 1.000e+00	99.0	0	 -3	0	0	0	0	0	0	0	#_CohortGrowDev            
 0.0001	  0.9999	 5.000e-01	 5.000e-01	 0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1          
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
 4.0	25	7.381340	13.600000	99	0	 1	0	0	0	0	0	0	0	#_SR_LN(R0)  
 0.2	 1	0.650642	 0.650642	99	0	-4	0	0	0	0	0	0	0	#_SR_BH_steep
 0.0	 2	0.400000	 0.600000	99	0	-3	0	0	0	0	0	0	0	#_SR_sigmaR  
-5.0	 5	0.000000	 0.000000	99	0	-3	0	0	0	0	0	0	0	#_SR_regime  
 0.0	 0	0.000000	 0.000000	99	0	-1	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1949 # first year of main recr_devs; early devs can preceed this era
2018 # last year of main recr_devs; forecast devs start in following year
2 #_recdev phase
1 # (0/1) to read 13 advanced options
-10 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
1 #_recdev_early_phase
0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1939.4 #_last_yr_nobias_adj_in_MPD; begin of ramp
1979.5 #_first_yr_fullbias_adj_in_MPD; begin of plateau
2008.5 #_last_yr_fullbias_adj_in_MPD
2015.9 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
0.7246 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
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
#Fishing Mortality info
0.1 # F ballpark
-1949 # F ballpark year (neg value to disable)
2 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
#_overall start F value; overall phase; N detailed inputs to read
0.05 4 0 #_F_setup
#
#_initial_F_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
0.001	5	0.120812	0.1	99	0	1	#_InitF_1
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	0	0	0	#_FL2       
    3	1	0	0	0	0	#_FL3       
    4	1	0	0	0	0	#_FL4       
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-20	20	-4.68922	0	1	0	1	0	0	0	0	0	0	0	#_LnQ_base_FL2(2)
-20	20	-6.72368	0	2	0	1	0	0	0	0	0	0	0	#_LnQ_base_FL3(3)
-20	20	-5.00000	0	1	0	1	0	0	0	0	0	0	0	#_LnQ_base_FL4(4)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
1	0	0	0	#_1 FL1
5	0	0	1	#_2 FL2
5	0	0	1	#_3 FL3
5	0	0	1	#_4 FL4
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
0	0	0	0	#_1 FL1
0	0	0	0	#_2 FL2
0	0	0	0	#_3 FL3
0	0	0	0	#_4 FL4
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
 5	 90	35.0000	40.0	99	0	 2	0	0	0	0	0	0	0	#_SizeSel_P_1_FL1(1)
 5	120	20.8581	16.5	99	0	 3	0	0	0	0	0	0	0	#_SizeSel_P_2_FL1(1)
-1	 -1	-1.0000	-1.0	99	0	-4	0	0	0	0	0	0	0	#_SizeSel_P_1_FL2(2)
-1	 -1	-1.0000	-1.0	99	0	-4	0	0	0	0	0	0	0	#_SizeSel_P_2_FL2(2)
-1	 -1	-1.0000	-1.0	99	0	-4	0	0	0	0	0	0	0	#_SizeSel_P_1_FL3(3)
-1	 -1	-1.0000	-1.0	99	0	-4	0	0	0	0	0	0	0	#_SizeSel_P_2_FL3(3)
-1	 -1	-1.0000	-1.0	99	0	-4	0	0	0	0	0	0	0	#_SizeSel_P_1_FL4(4)
-1	 -1	-1.0000	-1.0	99	0	-4	0	0	0	0	0	0	0	#_SizeSel_P_2_FL4(4)
#_AgeSelex
#_No age_selex_parm
#_no timevary selex parameters
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Factor	Fleet	Value
    1	2	0.1	#_Variance_adjustment_list1
    1	3	0.1	#_Variance_adjustment_list2
    1	4	0.1	#_Variance_adjustment_list3
-9999	0	0.0	#_terminator               
#
5 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 5 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
    1	2	1	1	1	#_Surv_FL2_Phz1                                                                           
    1	3	1	1	1	#_Surv_FL3_Phz1                                                                           
    1	4	1	1	1	#_Surv_FL4_Phz1                                                                           
    6	1	1	1	1	#_SizeFreq_FL1_sizefreq_method_1_Phz1                                                     
    9	1	1	0	1	#_init_equ_catch_FL1_lambda_for_init_equ_catch_can_only_enable/disable for_all_fleets_Phz1
-9999	0	0	0	0	#_terminator                                                                              
#
0 # 0/1 read specs for more stddev reporting
#
999
