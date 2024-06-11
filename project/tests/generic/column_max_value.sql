{% test column_max_value(model,column_name, value) %}

{{ config( 
    enabled=true,
    severity='error',
    warn_if='>2',
    error_if='>8',
    tags=['generic'],
    store_failures=true,
    limit=20)
    }}


WITH source AS (
    SELECT  {{ column_name }}  AS qt
    FROM {{ model }}
    WHERE CAST({{ column_name }} AS INTEGER) > {{ value }}
)


SELECT qt FROM source


{% endtest %}