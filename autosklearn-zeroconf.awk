# prepend the lines with the running "cust_id" column and replace "delay" with "category" (1 if delay >=15, 0 otherwise)
BEGIN { FS=","; OFS=","}
FNR == 1 {$29="category"; print "cust_id",$0}
FNR > 1 {$29=$29>=15?1:0; print NR,$0 }
