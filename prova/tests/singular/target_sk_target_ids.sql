{{config(severity='error',enabled=false)}}

SELECT * FROM {{  ref('stg_stripe_targets') }}
WHERE sk_target > 2000