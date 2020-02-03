# /usr/bin/sh
echo "press control-break to exit."
for b in {0..50}
do
echo "Insert into PRODUCT ( ID,NAME,VALUE)" > ./data/add_product.sql
printf "%s" "values (" >> ./data/add_product.sql
echo 'enter all entry in the same line separete by ,'
echo ' ID , NAME , VALUE '
read a
echo $a >> ./data/add_product.sql
echo ');' >> ./data/add_product.sql
echo '.quit' >> ./data/add_product.sql
sqlite ./data/bill.dbf < ./data/add_product.sql
echo ------------------------------------------
done