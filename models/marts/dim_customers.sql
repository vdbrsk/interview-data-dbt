select
    c.customer_id,
    c.signup_at,
    c.country,
    c.acquisition_channel,
    f.first_paid_at,
    f.first_paid_at is not null as is_paying_customer
from {{ ref('stg_customers') }} as c
left join {{ ref('int_customer_first_purchase') }} as f using (customer_id)
