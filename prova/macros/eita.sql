
{% macro test_nice(model) %}

SELECT * FROM {{  ref('stg_stripe_targets') }}
WHERE sk_target > 1000

{% endmacro %}