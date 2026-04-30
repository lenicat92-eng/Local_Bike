select
  o.order_id,
  o.order_date,
  o.customer_id,
  o.store_id,
  oi.item_id,
  oi.product_id,
  oi.quantity,
  oi.list_price,
  oi.discount,

  oi.quantity * oi.list_price as gross_revenue,
  oi.quantity * oi.list_price * (1 - oi.discount) as net_revenue,
  oi.quantity * oi.list_price * oi.discount as discount_amount

from {{ ref('stg_local_bike_order_items') }} oi
left join {{ ref('stg_local_bike_orders') }} o
  on oi.order_id = o.order_id