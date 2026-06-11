#!/bin/bash
# Extract Whois information and save as CSV

whois "$1" | awk -F': *' '
BEGIN {
    OFS=","
}
$1 ~ /Registrant Name/ {print "Registrant Name",$2}
$1 ~ /Registrant Organization/ {print "Registrant Organization",$2}
$1 ~ /Registrant Street/ {print "Registrant Street",$2}
$1 ~ /Registrant City/ {print "Registrant City",$2}
$1 ~ /Registrant State\/Province/ {print "Registrant State/Province",$2}
$1 ~ /Registrant Postal Code/ {print "Registrant Postal Code",$2}
$1 ~ /Registrant Country/ {print "Registrant Country",$2}
$1 ~ /Registrant Phone/ && $1 !~ /Ext/ {print "Registrant Phone",$2}
$1 ~ /Registrant Phone Ext/ {print "Registrant Phone Ext:",$2}
$1 ~ /Registrant Fax/ && $1 !~ /Ext/ {print "Registrant Fax",$2}
$1 ~ /Registrant Fax Ext/ {print "Registrant Fax Ext:",$2}
$1 ~ /Registrant Email/ {print "Registrant Email",$2}

$1 ~ /Admin Name/ {print "Admin Name",$2}
$1 ~ /Admin Organization/ {print "Admin Organization",$2}
$1 ~ /Admin Street/ {print "Admin Street",$2}
$1 ~ /Admin City/ {print "Admin City",$2}
$1 ~ /Admin State\/Province/ {print "Admin State/Province",$2}
$1 ~ /Admin Postal Code/ {print "Admin Postal Code",$2}
$1 ~ /Admin Country/ {print "Admin Country",$2}
$1 ~ /Admin Phone/ && $1 !~ /Ext/ {print "Admin Phone",$2}
$1 ~ /Admin Phone Ext/ {print "Admin Phone Ext:",$2}
$1 ~ /Admin Fax/ && $1 !~ /Ext/ {print "Admin Fax",$2}
$1 ~ /Admin Fax Ext/ {print "Admin Fax Ext:",$2}
$1 ~ /Admin Email/ {print "Admin Email",$2}

$1 ~ /Tech Name/ {print "Tech Name",$2}
$1 ~ /Tech Organization/ {print "Tech Organization",$2}
$1 ~ /Tech Street/ {print "Tech Street",$2}
$1 ~ /Tech City/ {print "Tech City",$2}
$1 ~ /Tech State\/Province/ {print "Tech State/Province",$2}
$1 ~ /Tech Postal Code/ {print "Tech Postal Code",$2}
$1 ~ /Tech Country/ {print "Tech Country",$2}
$1 ~ /Tech Phone/ && $1 !~ /Ext/ {print "Tech Phone",$2}
$1 ~ /Tech Phone Ext/ {print "Tech Phone Ext:",$2}
$1 ~ /Tech Fax/ && $1 !~ /Ext/ {print "Tech Fax",$2}
$1 ~ /Tech Fax Ext/ {print "Tech Fax Ext:",$2}
$1 ~ /Tech Email/ {print "Tech Email",$2}
' > "$1.csv"
