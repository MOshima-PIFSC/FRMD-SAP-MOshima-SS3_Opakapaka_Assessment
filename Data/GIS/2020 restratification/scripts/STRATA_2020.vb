if [depthstrat] = "D1" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then   STRATA_2020 = "S01"
elseif [depthstrat] = "D1" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then   STRATA_2020 = "S02"
elseif [depthstrat] = "D1" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then   STRATA_2020 = "S03"
elseif [depthstrat] = "D1" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S04"
elseif [depthstrat] = "D2" and [acrstrat] = "MA1" and ([hbstrat] = "HB1" or [hbstrat] = "HB2")  Then   STRATA_2020 = "S05"
elseif [depthstrat] = "D2" and [acrstrat] = "MA1" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S06"
elseif [depthstrat] = "D2" and [acrstrat] = "MA2" and [hbstrat] = "HB1"  Then   STRATA_2020 = "S07"
elseif [depthstrat] = "D2" and [acrstrat] = "MA2" and [hbstrat] = "HB2"  Then   STRATA_2020 = "S08"
elseif [depthstrat] = "D2" and [acrstrat] = "MA2" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S09"
elseif [depthstrat] = "D2" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then   STRATA_2020 = "S10"
elseif [depthstrat] = "D2" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then   STRATA_2020 = "S11"
elseif [depthstrat] = "D2" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S12"
elseif [depthstrat] = "D3" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then   STRATA_2020 = "S13"
elseif [depthstrat] = "D3" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then   STRATA_2020 = "S14"
elseif [depthstrat] = "D3" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then   STRATA_2020 = "S15"
elseif [depthstrat] = "D3" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S16"
elseif [depthstrat] = "D4" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2")  Then   STRATA_2020 = "S17"
elseif [depthstrat] = "D4" and [acrstrat] = "MA1" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S18"
elseif [depthstrat] = "D4" and [acrstrat] = "MA2" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S19"
elseif [depthstrat] = "D4" and [acrstrat] = "MA3" and [hbstrat] = "HB1"  Then   STRATA_2020 = "S20"
elseif [depthstrat] = "D4" and [acrstrat] = "MA3" and [hbstrat] = "HB2"  Then   STRATA_2020 = "S21"
elseif [depthstrat] = "D4" and [acrstrat] = "MA3" and [hbstrat] = "HB3"  Then   STRATA_2020 = "S22"
elseif [depthstrat] = "D5" and ([acrstrat] = "MA1" or [acrstrat] = "MA2") and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then   STRATA_2020 = "S23"
elseif [depthstrat] = "D5" and [acrstrat] = "MA3" and ([hbstrat] = "HB1" or [hbstrat] = "HB2" or [hbstrat] = "HB3")  Then   STRATA_2020 = "S24"
elseif IsNull([depthstrat]) or IsNull([acrstrat]) or IsNull([hbstrat]) or [depthstrat] = "DZ" or [acrstrat] = "MAZ" or [hbstrat] = "HBZ" Then
  STRATA_2020 = "SZZ"

end if