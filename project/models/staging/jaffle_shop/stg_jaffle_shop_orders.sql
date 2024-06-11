WITH source AS (

SELECT * FROM {{ source('jaffle_shop','orders') }}

)


select * from source