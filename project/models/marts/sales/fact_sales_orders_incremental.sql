SELECT * FROM 
{{ source('jaffle_shop','orders') }}

{% if is_incremental() %}
    WHERE loadtimestamp >= (SELECT MAX(loadtimestamp) FROM {{ this }} )   
{% endif %}
