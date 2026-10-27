select
    id as subscription_id,
    customer_id,
    plan_months,
    monthly_price_usd,
    upper(status) as status,
    upper(subject) as subject,
    started_at,
    ended_at
from {{ source('app', 'subscriptions') }}
where {{ only_external_customers('customer_id') }}
