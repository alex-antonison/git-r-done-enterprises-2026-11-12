
with
    genre_revenue as(
        select 
            major_genres, 
            ROUND(avg(worldwide_gross/1000000),1) gross_revenue_millions
        from {{ ref('stg_movies') }}
        group by major_genres
    )

select * from genre_revenue