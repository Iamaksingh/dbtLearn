select 
    ord.ORDER_ID,
    ord.CUSTOMER_ID,
    pymt.AMOUNT
FROM {{ ref('stg_jaffle_shop__orders') }} ord
JOIN {{ ref('stg_stripe__payments') }} pymt
ON  ord.ORDER_ID = pymt.ORDER_ID 
WHERE pymt.STATUS='success'