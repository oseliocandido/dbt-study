WITH source AS (

SELECT * FROM {{ source('stripe','target') }}

)

SELECT * FROM source 