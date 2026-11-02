{{
    config(
        materialized='incremental',
        unique_key='order_id'
    )
}}

select 
order_id,
revenue,
revenue + 10 as final_amount
from
{{ref('int_order_metrics')}}

{%if is_incremental() %}
    where order_id not in (select order_id from {{this}})
{%endif %}