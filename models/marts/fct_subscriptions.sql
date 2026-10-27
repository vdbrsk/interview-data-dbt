select
    subscription_id,
    customer_id,
    subject,
    plan_months,
    monthly_price_usd,
    status,
    status = 'ACTIVE' as is_active,
    started_at,
    ended_at
from {{ ref('stg_subscriptions') }}
