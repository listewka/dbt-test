with orders as (
    select * from {{ref('stg_orders')}}
),
payments as (
    select * from {{ ref('stg_payment')}}
),

fct_orders as (

    select o.order_id,
    payment_id,
    amount
    From orders o
        left join payments p on o.order_id = p.orderid
)
select * from fct_orders