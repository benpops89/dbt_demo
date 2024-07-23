with src as (
  select * from {{ ref('order_items') }} 
)
select * from src
