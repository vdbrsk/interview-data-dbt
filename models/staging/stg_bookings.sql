select
    id as booking_id,
    customer_id,
    tutor_id,
    subscription_id,
    upper(booking_type) as booking_type,
    upper(status) as status,
    scheduled_at
from {{ source('app', 'bookings') }}
where {{ only_external_customers('customer_id') }}
