{{
    config(
        materialized='table'
    )
}}
SELECT * 
FROM raw.globalmart.customer