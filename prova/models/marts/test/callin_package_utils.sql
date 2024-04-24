{{config(enabled=False)}}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="to_date('01/01/2020','dd/mm/YYYY')",
    end_date="to_date('01/01/2021','dd/mm/YYYY')" 
    )
}}