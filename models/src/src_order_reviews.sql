with src as (
  select * from {{ ref('order_reviews') }} 
)
select * from src
