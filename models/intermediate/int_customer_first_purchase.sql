select
    customer_id,
    min(paid_at) as first_paid_at
from {{ ref('stg_orders') }}
where order_type = 'PURCHASE'
  and paid_at is not null
group by customer_id
