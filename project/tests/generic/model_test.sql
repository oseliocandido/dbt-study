{% test model_test(model) %}

{{config(
    severity='error',
    error_if='>10',
    warn_if= '>5',
    store_failures=true,
    limit=1000000000)
}}

SELECT  * FROM  {{ ref('joined_fact_sales') }}
WHERE sk_salesorder > 300


{% endtest %}