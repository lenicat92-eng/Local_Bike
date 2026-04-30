select
  cast(store_id as int64) as store_id,
  cast(store_name as string) as store_name,
  cast(city as string) as city,
  cast(state as string) as state
from {{ source('final_project_local_bike', 'stores') }}