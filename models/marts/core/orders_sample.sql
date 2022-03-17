select
stg_orders.order_id
,stg_orders.customer_id
from {{ ref('stg_orders')}} as stg_orders
