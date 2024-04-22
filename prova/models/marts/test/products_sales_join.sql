SELECT 
  sales.salesordernumber, 
  sales.quantity, 
  sales.unitprice, 
  sales."cost", 
  products.productkey,
  products.product, 
  products.standardcost, 
  products.color, 
  products.subcategory, 
  products.category
FROM 

(
  SELECT 
    *,
    CAST(productkey AS INTEGER) AS key1
  FROM {{ ref('stg_striper_sales') }}
) AS sales

INNER JOIN 

(
  SELECT 
    *,
    CAST(productkey AS INTEGER) AS key2
  FROM {{ ref('stg_jaffle_shop_products') }}
) AS products 

ON sales.key1 = products.key2
