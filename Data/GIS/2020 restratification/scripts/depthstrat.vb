if [Depth_MEDIAN_m] < 75   Then 
elseif ([Depth_MEDIAN_m] >= 75 and [Depth_MEDIAN_m] < 110)  Then 
elseif ([Depth_MEDIAN_m] >= 110 and [Depth_MEDIAN_m] < 170)  Then 
elseif ([Depth_MEDIAN_m] >= 170 and [Depth_MEDIAN_m] < 220)  Then 
elseif ([Depth_MEDIAN_m] >= 220 and [Depth_MEDIAN_m] < 330)  Then 
elseif ([Depth_MEDIAN_m] >= 330 and [Depth_MEDIAN_m] <= 400)  Then 
elseif [Depth_MEDIAN_m] > 400   Then 
elseif IsNull([Depth_MEDIAN_m])  Then 

end if