with 

source as (

    select * from {{ source('staging', 'constituents') }}

),

renamed as (

    select
        constituentid,
        ulanid,
        preferreddisplayname,
        forwarddisplayname,
        lastname,
        displaydate,
        artistofngaobject,
        beginyear,
        endyear,
        visualbrowsertimespan,
        nationality,
        visualbrowsernationality,
        constituenttype,
        wikidataid

    from source

)

select * from renamed
