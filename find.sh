# /usr/bin/sh
echo "press control-break to exit."
for b in {0..50}
do
printf "%s" "select MOVS.ID , MOVS.DOC , MOVS.DATES , MOVS.PRODUCT,PRODUCT.NAME ,MOVS.REFS,MOVS.VALUE , PRODUCT.VALUE ,(MOVS.VALUE * PRODUCT.VALUE)  from MOVS INNER JOIN PRODUCT ON MOVS.PRODUCT = PRODUCT.ID  where MOVS.DOC = " > ./data/find.sql
echo 'enter document number yours refs  ,'
read a
echo $a >> ./data/find.sql
echo ';' >> ./data/find.sql
echo '.quit' >> ./data/find.sql
sqlite ./data/bill.dbf < ./data/find.sql
printf "%s" "select SUM(MOVS.VALUE * PRODUCT.VALUE)  from MOVS INNER JOIN PRODUCT ON MOVS.PRODUCT = PRODUCT.ID  where MOVS.DOC = " > ./data/find.sql
echo 'SUM:  ,'
echo $a >> ./data/find.sql
echo ';' >> ./data/find.sql
echo '.quit' >> ./data/find.sql
sqlite ./data/bill.dbf < ./data/find.sql
echo ------------------------------------------
done