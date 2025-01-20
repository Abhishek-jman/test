{{config(
    tags = ["staging" , "teamwork_staging"]
) }}

With source as (
    select title , count(title) from {{ source('staging','users') }} group by title
)

select * from source