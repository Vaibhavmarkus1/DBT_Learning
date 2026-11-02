-- select 
-- 1 as id,
-- 'Vaibhav' as name,
-- 100 as amount 
-- union all
-- select
-- 2 as id,
-- 'John' as name,
-- 200 as amount

select * 
from {{ source('raw', 'orders') }} 