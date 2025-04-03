{#
    This macro returns the description of the artist of an object 
#}
{% macro get_artist_desc(artistofngaobject) -%}

    case
        {{ dbt.safe_cast("artistofngaobject", api.Column.translate_type("integer")) }}
        when 0
        then 'not an artist'
        when 1
        then 'artist'
        else 'EMPTY'
    end

{%- endmacro %}
