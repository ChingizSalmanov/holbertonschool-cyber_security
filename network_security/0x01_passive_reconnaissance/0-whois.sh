#!/bin/bash
whois "$1" | awk '
/^Registrant |^Admin |^Tech / {
    section=$1
}
/^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Fax|Email):/ {
    split($0, a, ": ")
    key=a[1]
    value=a[2]
    gsub(/ $/, "", key)
    if ($0 ~ /Street/) value=value" "
    print key","value
}
/^(Registrant|Admin|Tech) Phone Ext:|^(Registrant|Admin|Tech) Fax Ext:/ {
    split($0, a, ": ")
    print a[1]":"","a[2]
}
' > "$1.csv"
