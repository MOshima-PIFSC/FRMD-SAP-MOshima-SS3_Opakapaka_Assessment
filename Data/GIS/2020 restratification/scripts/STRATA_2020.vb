if [depthstrat] = "D1" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then 
elseif [depthstrat] = "D1" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then 
elseif [depthstrat] = "D1" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then 
elseif [depthstrat] = "D1" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA1" and ([hbstrat] = "HB1" or [hbstrat] = "HB2")  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA1" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA2" and [hbstrat] = "HB1"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA2" and [hbstrat] = "HB2"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA2" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then 
elseif [depthstrat] = "D2" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D3" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then 
elseif [depthstrat] = "D3" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then 
elseif [depthstrat] = "D3" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then 
elseif [depthstrat] = "D3" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D4" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2")  Then 
elseif [depthstrat] = "D4" and [acrstrat] = "MA1" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D4" and [acrstrat] = "MA2" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D4" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then 
elseif [depthstrat] = "D4" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then 
elseif [depthstrat] = "D4" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then 
elseif [depthstrat] = "D5" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then 
elseif [depthstrat] = "D5" and [acrstrat] = "MA3" and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then 
elseif IsNull([depthstrat]) or IsNull([acrstrat]) or IsNull([hbstrat]) or [depthstrat] = "DZ" or [acrstrat] = "MAZ" or [hbstrat] = "HBZ" Then
  STRATA_2020 = "SZZ"

end if