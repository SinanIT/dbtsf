{{ config(materialized='table') }}

SELECT  
    O_ORDERDATE, 
    sum(O_TOTALPRICE) as CUMULATIVE_SALES 
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
group by O_ORDERDATE
order by O_ORDERDATE