SELECT
    ID,
    ORDERID as ORDER_ID,
    PAYMENTMETHOD,
    STATUS,
    AMOUNT,
    CREATED,
    _BATCHED_AT
FROM raw.stripe.payment