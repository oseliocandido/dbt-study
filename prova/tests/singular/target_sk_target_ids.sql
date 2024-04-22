SELECT * FROM {{  ref('stg_stripe_targets') }}
WHERE sk_target > 1000