with payments as (
select
    id as payment_id,
    orderid,
    paymentmethod,
    status,
    amount,
    created,
    _batched_at
from raw.stripe.payment)
select * from payments