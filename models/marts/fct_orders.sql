select
    order_id,
    customer_id,
    subscription_id,
    order_type,
    status,
    amount_usd,
    revenue_usd,
    created_at,
    paid_at
from {{ ref('int_orders_signed') }}
