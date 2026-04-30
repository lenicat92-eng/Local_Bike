select
  f.order_id,
  f.order_date,
  f.product_id,
  f.store_id,
  f.quantity,
  f.net_revenue,
  f.gross_revenue,
  f.discount_amount,
  f.discount,

  d.product_name,
  d.category_name,
  d.brand_name,

  s.store_name,
  s.state as store_region,
  s.city as store_city

  

from {{ ref('int_local_bike_sales_enriched') }} f
left join {{ ref('dim_local_bike_products') }} d
  on f.product_id = d.product_id
left join {{ ref('stg_local_bike_stores') }} s
  on f.store_id = s.store_id