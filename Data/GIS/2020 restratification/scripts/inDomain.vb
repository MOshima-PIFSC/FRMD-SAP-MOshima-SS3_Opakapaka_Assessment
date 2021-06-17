if ([Depth_MEDIAN_m] >= 75 and [Depth_MEDIAN_m] <= 400)and [Depth_px_n] >= 3000 and [med_slp] > 1.1 and [STRATA_2020] <> "SZZ" Then 
 inDomain = "Y"
else
 inDomain = "N"

end if