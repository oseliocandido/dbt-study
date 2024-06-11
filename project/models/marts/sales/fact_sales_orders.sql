WITH source AS (

    SELECT * FROM {{ source('jaffle_shop','orders') }}

)

SELECT * 
FROM source 
WHERE sk_salesorder > 340