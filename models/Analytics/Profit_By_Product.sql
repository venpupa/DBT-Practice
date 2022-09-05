SELECT 
    productid,
    productname,
    category,
    subcategory,
    SUM(profit) as product_profit
from {{ ref('stage_profit') }}
group by 
    productid,
    productname,
    category,
    subcategory