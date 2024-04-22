SELECT * FROM 
{{ source('jaffle_shop','salesorder') }}

{% if is_incremental() %}
    WHERE loadtimestamp >= (SELECT MAX(loadtimestamp) FROM {{ this }} )   
{% endif %}
