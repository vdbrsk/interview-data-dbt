-- Adds a signed revenue amount to every order.
-- Unpaid orders carry 0; refunds carry a negative amount.
select
    order_id,
    customer_id,
    subscription_id,
    order_type,
    status,
    amount_usd,
    created_at,
    paid_at,
    case
        when paid_at is null then 0
        when order_type = 'REFUND' then -amount_usd
        else amount_usd
    end as revenue_usd
from {{ ref('stg_orders') }}
