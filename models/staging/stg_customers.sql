select
    id as customer_id,
    created_at as signup_at,
    upper(country) as country,
    coalesce(acquisition_channel, 'unknown') as acquisition_channel
from {{ source('app', 'customers') }}
where not coalesce(is_internal, false)
