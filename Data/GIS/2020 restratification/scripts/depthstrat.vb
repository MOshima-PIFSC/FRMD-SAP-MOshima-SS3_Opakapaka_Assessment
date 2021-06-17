if [Depth_MEDIAN_m] < 75   Then  depthstrat = "DZ"
elseif ([Depth_MEDIAN_m] >= 75 and [Depth_MEDIAN_m] < 110)  Then  depthstrat = "D1"
elseif ([Depth_MEDIAN_m] >= 110 and [Depth_MEDIAN_m] < 170)  Then  depthstrat = "D2"
elseif ([Depth_MEDIAN_m] >= 170 and [Depth_MEDIAN_m] < 220)  Then  depthstrat = "D3"
elseif ([Depth_MEDIAN_m] >= 220 and [Depth_MEDIAN_m] < 330)  Then  depthstrat = "D4"
elseif ([Depth_MEDIAN_m] >= 330 and [Depth_MEDIAN_m] <= 400)  Then  depthstrat = "D5"
elseif [Depth_MEDIAN_m] > 400   Then  depthstrat = "DZ"
elseif IsNull([Depth_MEDIAN_m])  Then  depthstrat = "DZ"

end if