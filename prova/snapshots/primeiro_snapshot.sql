{% snapshot aprendendo %}

{{config(
    target_schema='snapshot',
    unique_key='sk_target',
    strategy='timestamp',
    updated_at='loadtimestamp'
)}}

SELECT * FROM {{source('raw','target_month')}}


{% endsnapshot %}