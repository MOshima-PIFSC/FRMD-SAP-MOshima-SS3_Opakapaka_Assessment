if [med_acr] < 4  Then  acrstrat = "MA1"
elseif ([med_acr] >= 4  and [med_acr] < 9)  Then  acrstrat = "MA2"
elseif [med_acr] >= 9  Then  acrstrat = "MA3"
elseif IsNull([med_acr])  Then  acrstrat = "MAZ"

end if