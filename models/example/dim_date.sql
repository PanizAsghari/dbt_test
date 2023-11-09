{{config(materialized = 'incremental')}}

SELECT *,current_time as loaded_at
FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.DATE_DIM
WHERE d_date<= current_date()