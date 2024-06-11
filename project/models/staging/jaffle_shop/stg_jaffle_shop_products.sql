WITH source AS (

SELECT * FROM {{ source('jaffle_shop','products') }}

)


select * from source