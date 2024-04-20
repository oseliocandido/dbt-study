{% macro grouper_pivot_by(model, column_name) %}

{% set distinct_values_query %}
    SELECT DISTINCT {{ column_name}} 
    FROM  {{ model }} 
{% endset %}


{% set results =  run_query(distinct_values_query) %}

{% if execute %} 
    {% set values = results.columns[0].values() %}
{% endif %}


SELECT 
    {%- for value in values %}
    SUM(CASE WHEN {{ column_name }} = {{ value }} THEN target ELSE 0 END) AS total_{{ value }}{% if not loop.last %},{% endif %}
    {%- endfor %}
    FROM  {{ ref(model) }} 

{% endmacro %}