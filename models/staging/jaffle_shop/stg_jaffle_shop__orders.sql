select
    id as ORDER_ID,
    user_id as CUSTOMER_ID,
    ORDER_DATE,
    STATUS
from raw.jaffle_shop.orders