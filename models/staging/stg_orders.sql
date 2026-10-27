select
    id as order_id,
    customer_id,
    subscription_id,
    parent_order_id,
    upper(order_type) as order_type,
    upper(status) as status,
    amount_usd,
    created_at,
    paid_at
from {{ source('app', 'orders') }}
where {{ only_external_customers('customer_id') }}
