{% macro only_external_customers(column) %}
    {{ column }} in (select customer_id from {{ ref('stg_customers') }})
{% endmacro %}
