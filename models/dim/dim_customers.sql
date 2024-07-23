with customers as (
  select * from {{ ref('src_customers') }}
),

orders as (
  select * from {{ ref('src_orders') }}
),

order_items as (
  select * from {{ ref('src_order_items') }}
),

customer_orders as (
  select *
  from customers
  join orders on customers.customer_id = orders.customer_id
  join order_items on orders.order_id = order_items.order_id
)

select
  customer_unique_id,
  COUNT(order_id) as orders,
  SUM(order_item_id) as items,
  SUM(price) as price
from customer_orders
group by customer_unique_id
