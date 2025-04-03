{{
    config(
        materialized='table'
    )
}}

select 
obj.objectid,
obj.title,
obj.displaydate,
obj.beginyear,
obj.endyear,
obj.inscription,
obj.markings,
obj.classification,
obj_c.role,
obj_c.roletype,
obj_c.country,
c.forwarddisplayname,
c.preferreddisplayname,
c.lastname,
c.artistofanobjectdesc,
c.nationality,
c.constituenttype
from {{ ref('stg_objects') }} obj
left join {{ ref('stg_objects_constituents') }} as obj_c
on obj.objectid = obj_c.objectid
left join {{ ref('stg_constituents') }} as c
on obj_c.constituentid = c.constituentid