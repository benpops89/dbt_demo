with src as (
  select * from {{ ref('orders') }} 
)
select * from src
