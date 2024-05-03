create database finance_management
-- Create Users table
create table Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255)
);

-- Create ExpenseCategories table
create table ExpenseCategories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255)
);

-- Create Expenses table
create table Expenses (
    expense_id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10, 2),
    category_id INT,
    date DATE,
    description TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES ExpenseCategories(category_id)
);

-- Insert values into Users table
insert into Users (user_id, username, password, email) 
values
(1, 'Vin Diesel', 'vin.diesel123', 'vin.diesel@gmail.com'),
(2, 'Paul Walker', 'paul.walker123', 'paul.walker@gmail.com');

-- Insert values into ExpenseCategories table
insert into ExpenseCategories (category_id, category_name) 
values
(1, 'Food'),
(2, 'Transportation'),
(3, 'Utilities');

-- Insert values into Expenses table
insert into Expenses (expense_id, user_id, amount, category_id, date, description) 
values
(1, 1, 200.00, 1, '2024-05-01', 'Lunch with colleagues'),
(2, 1, 150.00, 2, '2024-05-02', 'Taxi ride to airport'),
(3, 2, 300.00, 1, '2024-05-01', 'Groceries'),
(4, 2, 180.00, 3, '2024-05-02', 'Electricity bill');

select * from Users
select * from ExpenseCategories
select * from Expenses
