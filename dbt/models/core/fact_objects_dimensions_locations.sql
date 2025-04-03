{{
    config(
        materialized='table'
    )
}}

with dimensions_standard as (
    select objectid,
           case when unitname = 'inches' then dimension * 0.393701 -- to cm
                when unitname = 'pounds' then dimension * 0.00220462 -- to gram
                when unitname = 'kilograms' then dimension * 0.001  -- to gram
                else dimension end as standard_dimension, 
            dimensiontype
    from {{ ref('stg_objects_dimensions') }} 
),

dimensions_pivot as (
    select 
        objectid,
        max(case when dimensiontype = 'width' then standard_dimension end) as width,
        max(case when dimensiontype = 'height' then standard_dimension end) as height,
        max(case when dimensiontype = 'depth' then standard_dimension end) as depth,
        max(case when dimensiontype = 'diameter' then standard_dimension end) as diameter,
        max(case when dimensiontype = 'weight' then standard_dimension end) as weight
    from dimensions_standard
    group by objectid
)

select obj.objectid,
       obj.locationid,
       obj.title,
       obj.displaydate,
       obj.beginyear,
       obj.endyear,
       obj.classification,
       od.width,
       od.height,
       od.depth,
       od.diameter,
       od.weight,
       ol.site,
       ol.room
from {{ ref('stg_objects') }} obj 
left join dimensions_pivot od on obj.objectid = od.objectid 
left join {{ ref('stg_locations') }} ol on obj.locationid = ol.locationid 
where obj.locationid is not null