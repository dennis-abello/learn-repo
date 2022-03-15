select
stg_orders.order_id
,stg_orders.customer_id
,stg_payments.amount
from {{ ref('stg_orders')}} as stg_orders
left join {{ ref('stg_payments')}} as stg_payments
on stg_payments.orderid = stg_orders.order_id
