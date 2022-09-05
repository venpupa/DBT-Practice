SELECT 
-- columnn from orders 
o.orderid,
o.orderdate, 
o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as profit,
--columnns from customer
c.customerid,
c.customername,
c.country,
c.state,
c.segment,
--Column names from product
p.productid,
p.productname,
p.category,
p.subcategory
from {{ ref('raw_orders') }} as o
LEFT JOIN {{ ref('raw_customer') }} as c 
on o.customerid=c.customerid
LEFT JOIN {{ ref('raw_product') }} as p
on o.productid=p.productid
