select
  cast(category_id as int64) as category_id,
  cast(category_name as string) as category_name
from {{ source('final_project_local_bike', 'categories') }}