{{  config(materialized='table') }}


{{ grouper_pivot_by('stg_stripe_targets','employeeid') }}

