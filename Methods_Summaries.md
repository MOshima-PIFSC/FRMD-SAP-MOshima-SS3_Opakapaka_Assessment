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


#### standardization:  
* $z = (B_{yr}-B_{ave})/\sigma$  
      
* $B_{yr}/B_{ave}$ 

