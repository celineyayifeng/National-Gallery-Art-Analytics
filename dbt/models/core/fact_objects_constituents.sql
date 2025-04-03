{{
    config(
        materialized='table'
    )
}}

with obj_constituents as (
    select objectid,
           countif(roletype = 'donor') as donor_count,
           countif(roletype = 'owner') as owner_count,
           countif(roletype = 'artist') as artist_count, 
           count(*) as total_count
    from {{ ref('stg_objects_constituents') }} 
    group by 1
)

select 
obj.objectid,
obj.title,
obj.displaydate,
obj.beginyear,
obj.endyear,
obj.inscription,
obj.markings,
obj.classification,
obj_c.donor_count,
obj_c.artist_count,
obj_c.owner_count,
obj_c.total_count
from {{ ref('stg_objects') }} obj
left join obj_constituents as obj_c
on obj.objectid = obj_c.objectid
