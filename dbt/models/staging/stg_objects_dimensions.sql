with 

source as (

    select * from {{ source('staging', 'objects_dimensions') }}

),

renamed as (

    select
        objectid,
        element,
        dimensiontype,
        dimension,
        unitname

    from source

)

select * from renamed
