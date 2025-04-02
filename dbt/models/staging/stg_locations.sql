with 

source as (

    select * from {{ source('staging', 'locations') }}

),

renamed as (

    select
        locationid,
        site,
        room,
        publicaccess,
        description,
        unitposition

    from source

)

select * from renamed
