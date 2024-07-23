with src as (
  select * from {{ ref('geolocation') }} 
)
select * from src
