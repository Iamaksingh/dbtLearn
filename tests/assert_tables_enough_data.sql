{% set cnt = [
    [ 'jaffle_shop','customers',100 ],
    [ 'jaffle_shop','orders',50 ]
] %}

{% for source_name, table_name, expected_count in cnt %}

select
    '{{ source_name }}' as source_name,
    '{{ table_name }}' as table_name,
    count(*) as actual_count
from {{ source(source_name, table_name) }}
having count(*) < {{ expected_count }}
{% if not loop.last %}
union all
{% endif %}
{% endfor %}