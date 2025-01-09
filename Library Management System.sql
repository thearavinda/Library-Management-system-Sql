create database Library ;
use Library ;

-- Create Branch table
create table Branch(
Branch_no int auto_increment primary key,
Manager_Id int,
Branch_address varchar(50),
Contact_no varchar(30)
);

-- Create Employee table
create table Employee(
Emp_Id int auto_increment primary key,
Emp_name varchar(30),
Position varchar(20),
Salary decimal(10,2),
Branch_no int,
foreign key (Branch_no) references Branch(Branch_no)
);

-- Create Books table
create table Books(
ISBN varchar(30) primary key,
Book_title varchar(30),
Category varchar(30),
Rental__Price decimal(10,2),
Status varchar(20) check ( Status in ('Yes','No')),
Author varchar(20),
Publisher varchar(20)
);

-- Create Customer table
create table Customer(
Customer_Id int auto_increment primary key,
Customer_name varchar(50), 
Customer_address varchar(50),
Reg_date date);

-- Create IssueStatus table
create table IssueStatus (
Issue_Id int auto_increment primary key,
Issued_cust int,
Issued_book_name varchar(100),
Issue_date date,
Isbn_book varchar(20),
foreign key (Issued_cust) references Customer(Customer_Id),
foreign key (Isbn_book)references Books(ISBN)
);

-- Create ReturnStatus table
create table ReturnStatus (
Return_Id int auto_increment primary key,
Return_cust int,
Return_book_name varchar(100),
Return_date date,
Isbn_book2 varchar(50),
foreign key (Isbn_book2) references Books(ISBN)
);

-- Insert records into Branch table
insert into Branch values
(1, 101, '123 Main St, City A', '1234567890'),
(2, 102, '456 Elm St, City B', '2345678901'),
(3, 103, '789 Pine St, City C', '3456789012'),
(4, 104, '101 Maple St, City D', '4567890123'),
(5, 105, '202 Oak St, City E', '5678901234'),
(6, 106, '303 Birch St, City F', '6789012345'),
(7, 107, '404 Cedar St, City G', '7890123456'),
(8, 108, '505 Walnut St, City H', '8901234567'),
(9, 109, '606 Cherry St, City I', '9012345678'),
(10, 110, '707 Aspen St, City J', '0123456789');

-- Insert records into Employee table
insert into Employee values
(1, 'Alice Smith', 'Manager', 75000.00, 1),
(2, 'Bob Johnson', 'Clerk', 30000.00, 2),
(3, 'Charlie Brown', 'Assistant', 35000.00, 3),
(4, 'Diana Prince', 'Manager', 80000.00, 4),
(5, 'Ethan Hunt', 'Clerk', 32000.00, 5),
(6, 'Fiona White', 'Assistant', 34000.00, 6),
(7, 'George King', 'Manager', 76000.00, 7),
(8, 'Hannah Lee', 'Clerk', 31000.00, 8),
(9, 'Ian Bell', 'Assistant', 33000.00, 9),
(10, 'Julia Stone', 'Manager', 77000.00, 10);

-- Insert records into Books table
insert into Books values
('9781234567897', 'Book A', 'Fiction', 10.00, 'yes', 'Author A', 'Publisher A'),
('9782345678902', 'Book B', 'Non-Fiction', 12.00, 'no', 'Author B', 'Publisher B'),
('9783456789013', 'Book C', 'Fiction', 8.00, 'yes', 'Author C', 'Publisher C'),
('9784567890124', 'Book D', 'Science', 15.00, 'no', 'Author D', 'Publisher D'),
('9785678901235', 'Book E', 'History', 9.00, 'yes', 'Author E', 'Publisher E'),
('9786789012346', 'Book F', 'Biography', 11.00, 'yes', 'Author F', 'Publisher F'),
('9787890123457', 'Book G', 'Fiction', 7.00, 'no', 'Author G', 'Publisher G'),
('9788901234568', 'Book H', 'Science', 13.00, 'yes', 'Author H', 'Publisher H'),
('9789012345679', 'Book I', 'Fiction', 6.00, 'no', 'Author I', 'Publisher I'),
('9780123456789', 'Book J', 'History', 14.00, 'yes', 'Author J', 'Publisher J');

-- Insert records into Customer table
insert into Customer values
(1, 'John Doe', '123 Elm St', '2023-01-15'),
(2, 'Jane Smith', '456 Maple St', '2023-02-20'),
(3, 'Michael Brown', '789 Oak St', '2023-03-12'),
(4, 'Emily Davis', '101 Pine St', '2023-04-25'),
(5, 'Chris Wilson', '202 Cedar St', '2023-05-18'),
(6, 'Anna Johnson', '303 Birch St', '2023-06-05'),
(7, 'David Lee', '404 Walnut St', '2023-07-22'),
(8, 'Sophia Miller', '505 Cherry St', '2023-08-10'),
(9, 'Daniel Garcia', '606 Aspen St', '2023-09-17'),
(10, 'Olivia Martinez', '707 Willow St', '2023-10-30');

-- Insert records into IssueStatus table
insert into IssueStatus (Issued_cust, Issued_book_name, Issue_date, Isbn_book) values
(1, 'Book A', '2023-02-01', '9781234567897'),
(2, 'Book B', '2023-02-15', '9782345678902'),
(3, 'Book C', '2023-03-05', '9783456789013'),
(4, 'Book D', '2023-03-20', '9784567890124'),
(5, 'Book E', '2023-04-10', '9785678901235'),
(6, 'Book F', '2023-05-01', '9786789012346'),
(7, 'Book G', '2023-06-15', '9787890123457'),
(8, 'Book H', '2023-07-01', '9788901234568'),
(9, 'Book I', '2023-08-20', '9789012345679'),
(10, 'Book J', '2023-09-25', '9780123456789');

-- Insert records into ReturnStatus table
insert into ReturnStatus (Return_cust, Return_book_name, Return_date, Isbn_book2) values
(1, 'Book A', '2023-02-15', '9781234567897'),
(2, 'Book B', '2023-03-01', '9782345678902'),
(3, 'Book C', '2023-03-20', '9783456789013'),
(4, 'Book D', '2023-04-05', '9784567890124'),
(5, 'Book E', '2023-04-25', '9785678901235'),
(6, 'Book F', '2023-05-15', '9786789012346'),
(7, 'Book G', '2023-06-30', '9787890123457'),
(8, 'Book H', '2023-07-15', '9788901234568'),
(9, 'Book I', '2023-08-30', '9789012345679'),
(10, 'Book J', '2023-10-01', '9780123456789');

select * from Branch ;
select * from Employee ;
select * from Books ;
select * from Customer ;
select * from IssueStatus ;
select * from ReturnStatus ;

-- Questions

-- 1. Retrieve the book title, category, and rental price of all available books.

select Book_title, Category, Rental__Price
from Books;

 -- 2. List the employee names and their respective salaries in descending order of salary.
 
 select  Emp_name, Salary 
 from Employee order by Salary desc ;
 
 -- 3. Retrieve the book titles and the corresponding customers who have issued those books. 
 
 select I.Issued_book_name as Book_Titles, C.Customer_name
 from Customer C
 join IssueStatus I
 on C.Customer_Id = I.Issued_cust ;
 
 
-- 4. Display the total count of books in each category.

select Category, count(*) as bookcount
from Books
group by Category ;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

select Emp_name as Employee_name, position, Salary
from Employee
where Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

select C.Customer_name, C.Reg_date as Registered_date
from Customer C
left join IssueStatus I
on C.Customer_Id = I.Issued_cust
where C.Reg_date  < '2022-01-01'
and I.Issue_Id is Null ;

-- 7. Display the branch numbers and the total count of employees in each branch.

select Branch_no, count(Emp_Id) as number_of_employees
from Employee 
group by Branch_no ;


 -- 8. Display the names of customers who have issued books in the month of June 2023.
 
 select C.Customer_name
 from Customer C
 join IssueStatus I
 on C.Customer_Id = I.Issued_cust
 where  I.Issue_date between '2023-06-01' and '2023-06-30' ;
 
-- 9. Retrieve book_title from book table containing history.

select Book_title, Category
from Books
where Category ='History' ;

-- 10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.

select B.Branch_no, count(E.Emp_Id) as Employees_count
from Branch B
join Employee E
on B.Branch_no = E.Branch_no
group by B.Branch_no
having Employees_count > 5 ;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.

select E.Emp_name as Manager_name, B.Branch_no, B.Manager_Id, B.Branch_address
from Employee E
left join Branch B
on E.Branch_no = B.Branch_no ;

-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.

select C.Customer_name, I.Issued_book_name, B.Rental__Price 
from Customer C
join IssueStatus I
on C.Customer_Id = I.Issued_cust
join Books B
on B.ISBN = I.Isbn_book
where Rental__Price > 25 ;




