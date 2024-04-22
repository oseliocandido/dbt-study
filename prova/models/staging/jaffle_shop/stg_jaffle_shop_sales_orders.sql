WITH source AS (

SELECT * FROM {{ source('jaffle_shop','salesorder') }}

)


select * from source