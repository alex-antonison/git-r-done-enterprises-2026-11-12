with billion_dollar_movies as (
    select
        movie_id,
        title,
        major_genres,
        worldwide_gross,
        date_part('year', release_date) as release_year
    from {{ ref('stg_movies') }}
    where worldwide_gross >= 1000000000
)

    select
        movie_id,
        title,
        worldwide_gross
    from billion_dollar_movies
    order by worldwide_gross desc
