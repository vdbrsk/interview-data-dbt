select
    payment_id,
    order_id,
    attempt_no,
    status,
    status = 'SUCCESS' as is_successful,
    amount_usd,
    processor,
    attempted_at
from {{ ref('stg_payments') }}
