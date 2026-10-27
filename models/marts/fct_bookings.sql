select
    booking_id,
    customer_id,
    tutor_id,
    subscription_id,
    booking_type,
    status,
    is_demo,
    is_outcome_known,
    is_attended,
    scheduled_at
from {{ ref('int_bookings_classified') }}
