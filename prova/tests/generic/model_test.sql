{% test model_test(model) %}

{{config(
    severity='warn',
    error_if='>10',
    warn_if= '>5',
    store_failures=true,
    limit=1000000000)
}}

SELECT  * FROM  {{ ref('sales') }}
WHERE sk_salesorder > 300000






{% endtest %}