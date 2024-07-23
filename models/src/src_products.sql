with src as (
  select * from {{ ref('products') }} 
)
select * from src
