SELECT
    ID,
    ORDERID as ORDER_ID,
    PAYMENTMETHOD,
    STATUS,
    AMOUNT,
    CREATED,
    _BATCHED_AT
FROM {{source('stripe','payment')}}