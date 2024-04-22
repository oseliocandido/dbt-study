WITH source AS (

SELECT * FROM {{ source('stripe','sales') }}

)

SELECT * 
FROM source 