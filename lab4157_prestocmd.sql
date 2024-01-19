--
-- Apache Presto SQL 01 – select 10 rows from Db2's orders_archive table
--
SELECT
  *
FROM
  "db2catalog"."U4157_SHARE"."ORDERS_ARCHIVE"
LIMIT
  10;
--
-- Apache Presto SQL 01 – select 10 rows from Netezza's orders_archive table
--
SELECT
  *
FROM
  "npscatalog"."U4157_SHARE"."ORDERS_ARCHIVE"
LIMIT
  10;
--
-- Apache Presto SQL 02 –  archive the rows from Netezza's lineitem_archive table
--
create table "iceberg_data"."u4157_xx"."lineitem_history"
(
   "l_orderkey", "l_partkey", "l_suppkey",
   "l_linenumber", "l_quantity", "l_extendedprice",
   "l_discount", "l_tax", "l_returnflag",
   "l_linestatus", "l_shipdate", "l_commitdate",
   "l_receiptdate", "l_shipinstruct", "l_shipmode",
   "l_comment")
as
select 
   "l_orderkey", "l_partkey", "l_suppkey",
   "l_linenumber", "l_quantity", "l_extendedprice",
"l_discount", "l_tax",
cast("l_returnflag" as varchar),
cast("l_linestatus" as varchar),
"l_shipdate", "l_commitdate", "l_receiptdate",
   cast("l_shipinstruct" as varchar),
   cast("l_shipmode" as varchar),
   cast("l_comment" as varchar) 
from "npscatalog"."U4157_SHARE"."LINEITEM_ARCHIVE";
