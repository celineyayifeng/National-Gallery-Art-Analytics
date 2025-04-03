with
    object_role as (
        select
            objectid,
            title,
            role,
            roletype,
            classification,
            displaydate,
            forwarddisplayname,
            preferreddisplayname
        from {{ ref("fact_objects_constituents") }}
    )

select
    objectid,
    title,
    classification,
    displaydate,
    countif(roletype = 'donor') as donor_count,
    countif(roletype = 'owner') as owner_count,
    countif(roletype = 'artist') as artist_count, 
    count(*) as total_count
from object_role
group by 1, 2, 3, 4
