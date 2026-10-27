select
    p.id as payment_id,
    p.order_id,
    p.attempt_no,
    upper(p.status) as status,
    p.amount_usd,
    p.processor,
    p.attempted_at
from {{ source('app', 'payments') }} as p
inner join {{ ref('stg_orders') }} as o on o.order_id = p.order_id
