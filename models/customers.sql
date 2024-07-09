with customers as (
    select * from {{ ref('raw_customers') }}
),
orders as (
    select * from {{ ref('raw_orders') }}
),
payments as (
    select * from {{ ref('raw_payments') }}
),
customer_orders as (
    select
        c.customer_id,
        order_id,
        order_date
    from orders as o inner join customers c on o.customer_id = c.customer_id
),

customer_payments as (
     SELECT
        co.customer_id,
        SUM(p.amount) as customer_lifetime_value
    FROM customer_orders as co
    JOIN payments as p
    ON co.order_id = p.order_id
    GROUP BY co.customer_id
)

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    MIN(co.order_date) as first_order,
    MAX(co.order_date) as most_recent_order,
    COUNT(co.order_id) as number_of_orders,
    cp.customer_lifetime_value
FROM customers as c
JOIN customer_orders as co
ON c.customer_id = co.customer_id
JOIN customer_payments as cp
ON c.customer_id = cp.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name,
    cp.customer_lifetime_value
ORDER BY c.customer_id