SELECT 
    customerid,
    customername,
    country,
    state,
    segment,
sum(profit) as cust_profit
from {{ ref('stage_profit') }}
group by 
    customerid,
    customername,
    country,
    state,
    segment