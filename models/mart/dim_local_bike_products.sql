select
  p.product_id,
  p.product_name,
  p.model_year,
  p.list_price,

  b.brand_name,
  c.category_name

from {{ ref('stg_local_bike_products') }} p
left join {{ ref('stg_local_bike_brands') }} b
  on p.brand_id = b.brand_id
left join {{ ref('stg_local_bike_categories') }} c
  on p.category_id = c.category_id