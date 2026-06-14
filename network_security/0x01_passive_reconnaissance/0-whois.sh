#!/bin/bash
whois "$1" | awk -F': ' '/^(Registrant|Admin|Tech) (Name|Organization|City|State\/Province|Postal Code|Country|Phone|Fax|Email):|^(Registrant|Admin|Tech) (Phone|Fax) Ext:|^(Registrant|Admin|Tech) Street:/{if(/Street/) line=$1","$2" "; else line=$1","$2; lines[++n]=line} END{for(i=1;i<n;i++) print lines[i]; printf "%s",lines[n]}' > "$1.csv"
