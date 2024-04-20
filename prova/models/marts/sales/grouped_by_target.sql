{{  config(materialized='table') }}


{{ grouper_pivot_by('stg_target','employeeid') }}
