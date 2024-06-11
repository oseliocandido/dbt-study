WITH source AS (

SELECT * FROM {{ source('jaffle_shop','salesperson') }}

)


select * from source