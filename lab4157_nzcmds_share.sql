create table u4157_share.CUSTOMER as select * from DB4157.admin.CUSTOMER;
create table u4157_share.LINEITEM as select * from DB4157.admin.LINEITEM;
create table u4157_share.NATION as select * from DB4157.admin.NATION;
create table u4157_share.ORDERS as select * from DB4157.admin.ORDERS;
create table u4157_share.PART as select * from DB4157.admin.PART;
create table u4157_share.PARTSUPP as select * from DB4157.admin.PARTSUPP;
create table u4157_share.REGION as select * from DB4157.admin.REGION;
create table u4157_share.SUPPLIER as select * from DB4157.admin.SUPPLIER;

CREATE TABLE "DB4157_SHARE"."U4157_SHARE"."LINEITEM_ARCHIVE" as SELECT * FROM "DB4157_SHARE"."U4157_SHARE"."LINEITEM" WHERE DATE_PART('YEAR', "L_RECEIPTDATE") < 2020;
--INSERT 0 3451039

CREATE TABLE "DB4157_SHARE"."U4157_SHARE"."ORDERS_ARCHIVE" as SELECT * FROM "DB4157_SHARE"."U4157_SHARE"."ORDERS" WHERE DATE_PART('YEAR', "O_ORDERDATE") < 2020;
--INSERT 0 909968

DELETE FROM "DB4157_SHARE"."U4157_SHARE"."LINEITEM" WHERE DATE_PART('YEAR', "L_RECEIPTDATE") < 2020;
--DELETE 3451039

DELETE FROM "DB4157_SHARE"."U4157_SHARE"."ORDERS" WHERE DATE_PART('YEAR', "O_ORDERDATE") < 2020;
--DELETE 909968

grant list on database to lab4157;
grant list,select on table to lab4157;