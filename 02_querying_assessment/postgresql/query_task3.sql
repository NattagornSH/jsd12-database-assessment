-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ถามหาว่า staff แต่ละคน ได้รับ order ไปเท่าไหร่? และ order จะต้องเรียงจากมากไปน้อย
-- ใช้ SELECT เลือก full name (ต่อ first_name กับ last_name ด้วย ||) และ นับจำนวน order ด้วย Count()
-- ดึงข้อมูลจาก table staff และ orders
-- JOIN กันด้วย staff_id
-- GROUP BY staff_id เพื่อนับ order แยกแต่ละคน
-- ORDER BY "Total order count" DESC เพื่อให้คนที่มี order เยอะสุดขึ้นก่อน

SELECT 
  staff.first_name || ' ' || staff.last_name AS full_name,
  COUNT(orders.staff_id) AS "Total order count"
FROM staff
JOIN orders ON staff.staff_id = orders.staff_id
GROUP BY staff.staff_id
ORDER BY "Total order count" DESC;