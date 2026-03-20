// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// โจทย์ถามหา order ทั้งหมดของ Jane Doe เอาแค่ order_date กับ total_price
// ดึงข้อมูลจาก collection staff และ orders
// orders เก็บแค่ staff_id ไม่มีชื่อ เลยต้องหา _id ของ Jane จาก staff ก่อน
// จากนั้นเอา ObjectId ที่ได้ไปกรองใน orders แล้วใช้ projection เหลือแค่ order_date กับ total_price

// Step 1: หา _id ของ Jane Doe
use("chrome-burger-db");
db.staff.findOne({first_name:"Jane",last_name:"Doe"});

// Step 2: เอา _id ที่ได้ไปกรองใน orders
db.orders.find(
  { staff_id: ObjectId("65f100000000000000000001") },
  { _id: 0, order_date: 1, total_price: 1 }
)