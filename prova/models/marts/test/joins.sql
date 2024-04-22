SELECT
 g.*, 
 w.target
FROM {{ ref('stg_jaffle_shop_people') }} AS g
INNER JOIN  {{  ref('stg_stripe_targets') }} as w USING (employeeid)
