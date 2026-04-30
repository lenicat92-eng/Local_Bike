select
  cast(brand_id as int64) as brand_id,
  cast(brand_name as string) as brand_name
from {{ source('final_project_local_bike', 'brands') }}