{{config(
        materialized='table')
        }}



SELECT * FROM {{ source('raw','target_month')}}