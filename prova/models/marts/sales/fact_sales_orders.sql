WITH source AS (

    SELECT * FROM {{ source('jaffle_shop','salesorder') }}

)

SELECT * 
FROM source 