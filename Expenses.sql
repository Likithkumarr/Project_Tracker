CREATE DATABASE expense_db;
USE expense_db;

CREATE TABLE expenses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount DOUBLE,
    category VARCHAR(50),
    date DATE,
    note VARCHAR(200)
);

select * from expenses;

INSERT INTO expenses (amount, category, date, note) VALUES
(500.0, 'Electricity', '2025-01-05', 'Monthly electricity bill'),
(300.0, 'Recharge', '2025-01-09', 'Jio mobile recharge'),
(1200.0, 'Groceries', '2025-01-08', 'Monthly groceries'),
(600.0, 'Medicine', '2025-01-10', 'Fever tablets'),
(350.0, 'Transport', '2025-01-07', 'Bus pass renewal'),
(220.0, 'Food', '2025-01-15', 'Dinner outside'),
(90.0, 'Snacks', '2025-01-16', 'Cold drink & chips'),
(450.0, 'Shopping', '2025-01-17', 'T-shirt'),
(70.0, 'Snacks', '2025-01-18', 'Coffee'),
(160.0, 'Travel', '2025-01-18', 'Auto to home'),

(2200.0, 'Rent', '2025-02-01', 'Room rent for Feb'),
(520.0, 'Electricity', '2025-02-06', 'Electricity bill'),
(1300.0, 'Groceries', '2025-02-07', 'Monthly grocery'),
(400.0, 'Medicine', '2025-02-08', 'Headache medicine'),
(310.0, 'Transport', '2025-02-08', 'Bike petrol'),

(90.0, 'Food', '2025-02-10', 'Breakfast'),
(600.0, 'Shopping', '2025-02-11', 'Shirt pant'),
(140.0, 'Snacks', '2025-02-12', 'Burger'),
(180.0, 'Travel', '2025-02-13', 'Cab to office'),
(250.0, 'Recharge', '2025-02-14', 'Data add-on'),

(2250.0, 'Rent', '2025-03-01', 'Room rent for March'),
(540.0, 'Electricity', '2025-03-05', 'Electricity bill'),
(1100.0, 'Groceries', '2025-03-06', 'Kitchen items'),
(550.0, 'Medicine', '2025-03-06', 'Cough syrup'),
(320.0, 'Transport', '2025-03-07', 'Petrol'),

(240.0, 'Food', '2025-03-08', 'Dinner'),
(80.0, 'Snacks', '2025-03-09', 'Tea and samosa'),
(1200.0, 'Shopping', '2025-03-10', 'Jeans'),
(190.0, 'Travel', '2025-03-10', 'Cab to station'),
(350.0, 'Recharge', '2025-03-11', 'Phone recharge'),

(2300.0, 'Rent', '2025-04-01', 'Rent for April'),
(560.0, 'Electricity', '2025-04-04', 'Electricity bill'),
(1500.0, 'Groceries', '2025-04-05', 'Supermarket'),
(380.0, 'Medicine', '2025-04-05', 'Vitamin tablets'),
(300.0, 'Transport', '2025-04-06', 'Bus + auto'),
(260.0, 'Food', '2025-04-07', 'Dinner'),
(95.0, 'Snacks', '2025-04-08', 'Cold coffee'),
(700.0, 'Shopping', '2025-04-08', 'Office bag'),
(200.0, 'Travel', '2025-04-09', 'Cab to home'),
(299.0, 'Recharge', '2025-04-09', 'Phone top-up'),

(2400.0, 'Rent', '2025-05-01', 'Rent for May'),
(580.0, 'Electricity', '2025-05-03', 'Electricity bill'),
(1250.0, 'Groceries', '2025-05-03', 'Monthly groceries'),
(620.0, 'Medicine', '2025-05-04', 'Stomach medicine'),
(330.0, 'Transport', '2025-05-04', 'Petrol for bike');

#1. Get all expenses
SELECT * FROM expenses;
#2. Total amount spent
SELECT SUM(amount) AS total_expense FROM expenses;
#3. Count total expenses
SELECT COUNT(*) FROM expenses;
#4. Total spent on Food
SELECT SUM(amount) FROM expenses WHERE category='Food';
#Get all Shopping expenses
SELECT * FROM expenses WHERE category='Shopping';
#6. Highest expense
SELECT * FROM expenses ORDER BY amount DESC LIMIT 1;
#7. Lowest expense
SELECT * FROM expenses ORDER BY amount ASC LIMIT 1;
#8. Total spent category-wise
SELECT category, SUM(amount) 
FROM expenses 
GROUP BY category;
#9. Get February month expenses
SELECT * FROM expenses 
WHERE MONTH(date) = 2 AND YEAR(date)=2025;
#Total spent in March
SELECT SUM(amount) 
FROM expenses 
WHERE MONTH(date)=3;
#11. Get expenses more than 1000
SELECT * FROM expenses WHERE amount > 1000;
#12. Average amount spent
SELECT AVG(amount) FROM expenses;
#13. List unique categories
SELECT DISTINCT category FROM expenses;
#14. Latest recorded expense
SELECT * FROM expenses ORDER BY date DESC LIMIT 1;
#15. Total expenses per month
SELECT MONTH(date) AS month, SUM(amount) 
FROM expenses 
GROUP BY MONTH(date);
#16. All Transport expenses
SELECT * FROM expenses WHERE category='Transport';
#17. Expenses between 200 and 500
SELECT * FROM expenses WHERE amount BETWEEN 200 AND 500;
#18. Search by keyword (“petrol”)
SELECT * FROM expenses WHERE note LIKE '%petrol%';
#19. Count category-wise records
SELECT category, COUNT(*) 
FROM expenses 
GROUP BY category;
#20. Top 5 highest expenses
SELECT * FROM expenses ORDER BY amount DESC LIMIT 5;


