-- Task 3 Bonus: Stock Replenishment Check
-- Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
-- that are already well-stocked. They need a list of every ingredient with a stock level
-- of 100 or more so those can be deprioritised in this week's order.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the name of all rows in the Ingredients table
-- where the stock_level is greater than or equal to 100.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ถามหา ingredient ที่มี stock_level 100 ขึ้นไป
-- ใช้ SELECT เลือก name (ผมใช้ AS ingredients เพื่อให้เป็นชื่อ column) และ stock_level
-- ดึงข้อมูลจาก table ingredients
-- กรองด้วย WHERE stock_level >= 100

SELECT ingredients.name AS ingredients, ingredients.stock_level
FROM ingredients
WHERE ingredients.stock_level >= 100;

