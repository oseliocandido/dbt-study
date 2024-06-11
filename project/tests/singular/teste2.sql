SELECT a.* FROM 
{{ ref('stg_jaffle_shop_people') }} a
INNER JOIN  {{  ref('stg_stripe_targets') }} USING (employeeid)
WHERE sk_target > 500