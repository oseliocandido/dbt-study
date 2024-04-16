{% test bora_generic(model,column_name, value) %}

{{ config( 
    enabled=true,
    severity='error',
    warn_if='>2',
    error_if='>9',
    tags=['generic'],
    store_failures=true,
    schema='erro',
    alias='data_error')
    }}


WITH source AS (
    SELECT  {{ column_name }}  AS qt
    FROM {{ model }}
    WHERE CAST({{ column_name }} AS INTEGER) > {{ value }}
)


SELECT qt FROM source


{% endtest %}