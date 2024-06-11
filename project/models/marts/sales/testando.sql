WITH a AS (

    SELECT * FROM {{ ref('joined_fact_sales') }}

), 

b as (


    SELECT * FROM {{ ref('fact_sales_orders_incremental') }}

)



select * from b