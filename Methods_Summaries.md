## BFISH Biomass estimate 

#### equations: 
$$ 
B_{yr} = BIO_{survey} / (1000000 * 2.20462) /(25892*104.4653)  
$$
$$
s_\eta^2 = (SE_{survey}/1000000*2.20462/(25892*104.4653))^2  
$$
$$
s_CV <- sqrt(s_eta2)/BioYR
$$


$(1000000 * 2.20462)$ converts biomass from kg to millions of lbs (units in SS)  
$(25892*104.4653)$ represents the total number of sample grids in the MHI area and the assumed swept area of the camera gear 

* in vermilion assessment the landings data were assumed to have constant variance and interannual variation in the CPUE and survey indices were estimated through the standardization. For the indices, the CV (SE/mean) was converted to log(SE) using $SE = sqrt(log_e(1+CV)^2)$ The SE was normlized to a mean of 0.2. 



#### normalization:  
* $z = (B_{yr}-B_{ave})/\sigma$  
      
* $B_{yr}/B_{ave}$ 


#### selectivity:  
used the same selectivity for the BFISH survey as the commercial fishery because the fishing techniques are almost the exact same thing


#### Questions for John:  
1. Should I set end year to 2019 to include the final year of bfish assessment data?
   1. maybe try it both ways (end year 2018 and end year 2019 bc going to be adding more years of data at some point)