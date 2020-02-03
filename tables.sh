# /bin/usr/sh
echo list all tables:
sqlite bill.dbf < tables.sql
echo list schema movs:
echo list schema product:
sqlite bill.dbf < schema.sql

