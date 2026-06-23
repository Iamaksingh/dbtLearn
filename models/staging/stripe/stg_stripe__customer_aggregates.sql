SELECT
    CUSTOMER_ID,
    SUM(AMOUNT)/100 as lifetime_value
FROM {{ ref('fct_orders') }}
GROUP BY CUSTOMER_ID