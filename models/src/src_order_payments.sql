with src as (
  select * from {{ ref('order_payments') }} 
)
select * from src
