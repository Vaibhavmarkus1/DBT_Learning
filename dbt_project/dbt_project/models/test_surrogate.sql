select  
 order_id, 
  amount, 
  {{ dbt_utils.generate_surrogate_key(['order_id','amount']) }} as surrogate_key 
from {{ ref('stg_orders') }} 