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
        {{ get_artist_desc("artistofngaobject") }} as artistofanobjectdesc,
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
