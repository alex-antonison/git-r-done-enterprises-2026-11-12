select 
    title,
    production_budget
from {{ ref('stg_movies') }}
order by production_budget desc
limit 5;