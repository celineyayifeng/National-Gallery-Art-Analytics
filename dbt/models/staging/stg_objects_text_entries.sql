with 

source as (

    select * from {{ source('staging', 'objects_text_entries') }}

),

renamed as (

    select
        objectid,
        text,
        texttype,
        year

    from source

)

select * from renamed
