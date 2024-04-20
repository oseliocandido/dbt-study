WITH source AS (

SELECT * FROM {{ source('jaffle_shop','products') }}

)

SELECT * 
FROM source 