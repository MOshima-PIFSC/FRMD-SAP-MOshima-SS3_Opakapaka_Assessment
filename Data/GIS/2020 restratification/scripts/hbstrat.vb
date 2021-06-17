if [pct_over_136] < 0.24  Then  hbstrat = "HB1"
elseif ([pct_over_136] >= 0.24  and [pct_over_136] < 0.46)  Then  hbstrat = "HB2"
elseif [pct_over_136] >= 0.46  Then  hbstrat = "HB3"
elseif IsNull([pct_over_136])  Then  hbstrat = "HBZ"

end if