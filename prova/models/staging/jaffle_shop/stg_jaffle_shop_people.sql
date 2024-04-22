WITH source AS (

SELECT * FROM {{ source('jaffle_shop','people') }}

)


select * from source