-- A demo has a known outcome only once it was attended or missed.
-- Canceled and still-scheduled demos have no outcome yet.
select
    booking_id,
    customer_id,
    tutor_id,
    subscription_id,
    booking_type,
    status,
    scheduled_at,
    booking_type = 'DEMO' as is_demo,
    status in ('ATTENDED', 'NO_SHOW') as is_outcome_known,
    status = 'ATTENDED' as is_attended
from {{ ref('stg_bookings') }}
