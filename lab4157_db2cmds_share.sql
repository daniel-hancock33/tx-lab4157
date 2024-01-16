--
-- Db2 Warehouse SQL 01 – create table as select * from ...
--
CREATE TABLE "U4157_SHARE"."CUSTOMER" as (SELECT * FROM "U4157"."CUSTOMER") with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."LINEITEM" as (SELECT * FROM "U4157"."LINEITEM") with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."NATION"   as (SELECT * FROM "U4157"."NATION")   with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."ORDERS"   as (SELECT * FROM "U4157"."ORDERS")   with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."PART"     as (SELECT * FROM "U4157"."PART")     with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."PARTSUPP" as (SELECT * FROM "U4157"."PARTSUPP") with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."REGION"   as (SELECT * FROM "U4157"."REGION")   with data in OBJSTORESPACE1;
CREATE TABLE "U4157_SHARE"."SUPPLIER" as (SELECT * FROM "U4157"."SUPPLIER") with data in OBJSTORESPACE1;

CREATE TABLE "U4157_SHARE"."LINEITEM_ARCHIVE" as 
(SELECT * FROM "U4157_SHARE"."LINEITEM" WHERE DATE_PART('YEAR', "L_RECEIPTDATE") < 2020) 
with data in OBJSTORESPACE1;

CREATE TABLE "U4157_SHARE"."ORDERS_ARCHIVE" as 
(SELECT * FROM "U4157_SHARE"."ORDERS" WHERE DATE_PART('YEAR', "O_ORDERDATE") < 2020) 
with data in OBJSTORESPACE1;