SELECT o.*, c.customer_join_date, c.average_order_value, c.total_orders, c.days_since_last_order, c.return_rate, c.customer_segment
FROM {{ref('orders')}} o
LEFT JOIN {{ref('customers')}} c ON o.customer_id = c.customer_id
WHERE c.customer_join_date <= o.order_date
