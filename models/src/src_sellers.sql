with src as (
  select * from {{ ref('sellers') }} 
)
select * from src
