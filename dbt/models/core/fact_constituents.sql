with constituents as (
    select constituentid,
           case when preferreddisplayname = 'National Gallery of Art' then 1 else 0 end as NGA_const
    from {{ ref('stg_constituents') }}
)

select 
    obj.*,
    c.NGA_const
from {{ ref('fact_objects_constituents') }} obj 
left join {{ ref('stg_objects_constituents') }} obj_c on obj.objectid = obj_c.objectid 
left join constituents as c on obj_c.constituentid = c.constituentid
