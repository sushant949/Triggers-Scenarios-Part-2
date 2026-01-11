Account insert par Name uppercase karo.

Account insert par default Industry = “IT” set karo.

Account update par Phone blank ho to error dikhao.

Account insert par Rating = “Warm” set karo.

Account insert par Billing Country = India ho to State set karo.

Account update par Name change hua ho to Description update karo.

Account insert par Annual Revenue null ho to 0 set karo.

Account update par Industry = “IT” ho to Type = “Customer” set karo.

Contact insert par Last Name mandatory karo.

Contact insert par Email blank ho to error dikhao.

Contact update par Phone blank ho to error dikhao.

Lead insert par Lead Source = “Website” ho to Rating = “Hot” set karo.

Lead insert par Company blank ho to error dikhao.

Opportunity insert par Stage = “Prospecting” set karo.

Opportunity insert par Amount null ho to 0 set karo.

Account insert par auto Contact create karo.

Account update par related Contacts ka Description update karo.

Opportunity Stage = “Closed Won” hone par Account Type = “Customer” set karo.

Account delete hone se pehle agar Contacts exist karte hain to delete block karo.

Account update par Annual Revenue > 1 Cr ho to Rating = “Hot” set karo.