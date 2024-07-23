with src as (
  select * from {{ ref('customers') }} 
)
select * from src
