select
    director as director_name,
    sum(worldwide_gross) as total_revenue
from {{ ref('stg_movies') }}
group by 1
