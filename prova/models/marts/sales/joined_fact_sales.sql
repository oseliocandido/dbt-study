SELECT 
a.*

FROM {{ ref('sales') }} a
INNER JOIN {{ ref('fact_sales_orders') }} b
USING (salesordernumber)