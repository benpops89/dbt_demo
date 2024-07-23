with src as (
  select * from {{ ref('product_translations') }} 
)
select * from src
