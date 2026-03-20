-- Task 2 Bonus: Shift Activity Report
-- Jane Doe has an upcoming performance review and the manager wants to look at her order history
-- ahead of the meeting. They only need to see when each order was placed and what it was worth —
-- no other details are required for this particular review.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the order_date and total_price from the Orders table
-- for all orders handled by Jane Doe. You will need to join with the Staff table
-- to filter by the staff member's name.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ถามหา order ทั้งหมดของ Jane Doe เอาแค่ order_date กับ total_price
-- ใช้ SELECT เลือก order_date, total_price และ full_name (ผมอยากให้ first name กับ last name ต่อกันสวยๆ ก็เลยต่อชื่อด้วย ||)
-- ดึงข้อมูลจาก table orders และ staff
-- JOIN กันด้วย staff_id
-- กรองด้วย WHERE first_name = 'Jane' AND last_name = 'Doe'

SELECT orders.order_date, orders.total_price, 
staff.first_name || ' ' || staff.last_name AS full_name
FROM orders
JOIN staff ON orders.staff_id = staff.staff_id
WHERE staff.first_name='Jane' AND staff.last_name='Doe';



