with 

source as (

    select * from {{ source('staging', 'objects') }}

),

renamed as (

    select
        objectid,
        accessioned,
        accessionnum,
        locationid,
        title,
        displaydate,
        beginyear,
        endyear,
        visualbrowsertimespan,
        medium,
        dimensions,
        inscription,
        markings,
        attributioninverted,
        attribution,
        provenancetext,
        creditline,
        classification,
        subclassification,
        visualbrowserclassification,
        parentid,
        isvirtual,
        departmentabbr,
        portfolio,
        series,
        volume,
        watermarks,
        lastdetectedmodification,
        wikidataid,
        customprinturl

    from source

)

select * from renamed
