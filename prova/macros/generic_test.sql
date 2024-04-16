{% macro test_generic_model(model) %}

WITH base  AS (

SELECT COUNT(*)  as errors
FROM {{ model }}
WHERE sk_target > 800
having COUNT(*) > 1
)

SELECT 
    CASE WHEN errors = 0 THEN 0 ELSE errors END result
 FROM base

{% endmacro %}


-- {{% test generic_column(model, column_name) %}}

-- WITH start  AS (

-- SELECT 


-- )



-- {{% endtest %}}