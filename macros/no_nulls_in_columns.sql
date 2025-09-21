{% macro no_nulls_in_columns(model) %}

SELECT *
FROM {{ model }}
WHERE
    {% set cols = adapter.get_columns_in_relation(model) %}
    {% for col in cols %}
        {{ col.name }} IS NULL
        {% if not loop.last %} OR {% endif %}
    {% endfor %}

{% endmacro %}
