SELECT 
a.*
FROM {{ ref('stg_stripe_sales') }} a
INNER JOIN {{ ref('fact_sales_orders') }} b
USING (salesordernumber)