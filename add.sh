# /usr/bin/sh
echo "press control-break to exit."
for b in {0..50}
do
echo "Insert into MOVS ( ID,DOC,DATES,PRODUCT,REFS,VALUE)" > ./data/add.sql
printf "%s" "values (" >> ./data/add.sql
echo 'enter all entry in the same line separete by ,'
echo ' ID , DOC , DATES , PRODUCT , REF , VALUE '
read a
echo $a >> ./data/add.sql
echo ');' >> ./data/add.sql
echo '.quit' >> ./data/add.sql
sqlite ./data/bill.dbf < ./data/add.sql
echo ------------------------------------------
done