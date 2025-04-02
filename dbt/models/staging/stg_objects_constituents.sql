with 

source as (

    select * from {{ source('staging', 'objects_constituents') }}

),

renamed as (

    select
        objectid,
        constituentid,
        displayorder,
        roletype,
        role,
        prefix,
        suffix,
        displaydate,
        beginyear,
        endyear,
        country,
        zipcode

    from source

)

select * from renamed
