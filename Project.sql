use Bookstore;  --Database


select * from books
select * from customers
select * from orders


--1 Retrieve all books in the "Fiction" genre
select * from books
where genre = 'Fiction'

--2 Find books published after the year 1950
select * from books
where published_year >= 1950

--3 List all customers from the Canada
select * from customers
where country = 'Canada'

--4 Show orders placed in November 2023
select order_id, order_date , quantity, total_amount 
from orders
where order_date 
between '2023-11-01' and '2023-11-30'

--5 Retrieve the total stock of books available
select SUM(stock) as Total_Stock 
from books

--6 Find the details of the most expensive book
select top 1 * from books
order by price desc

--7 Show all customers who ordered more than 1 quantity of a book
select * from orders
where quantity > 1

--8 Retrieve all orders where the total amount exceeds $20
select * from orders
where total_amount > 20

--9  List all genres available in the Books table
select distinct genre 
from books

--10 Find the book with the lowest stock
select * from books
order by stock 

--11 Calculate the total revenue generated from all orders
select SUM(total_amount) as Revenue 
from orders




--Advance Level

--1 Retrieve the total number of books sold for each genre
select b.genre, SUM(o.[quantity]) as Total_Sold 
from orders o 
join books b on o.book_id = b.book_id
group by b.genre

--2 Find the average price of books in the "Fantasy" genre
select AVG(price) as Avg_Price 
from books
where genre = 'Fantasy'

--3 List customers who have placed at least 2 orders
select o.customer_id, c.name, COUNT(o.order_id) as Order_Count 
from orders o 
join customers c on o.customer_id=c.customer_id 
group by o.customer_id, c.Name 
having COUNT(o.order_id) >= 2

--4 Find the most frequently ordered book
select b.title, COUNT(order_id) as Order_Count 
from books b 
join orders o on b.Book_ID=o.Book_ID 
group by b.title
order by Order_Count desc

--5 Show the top 3 most expensive books of 'Fantasy' Genre
select top 3 * from books
where genre = 'Fantasy' 
order by price desc

--6 Retrieve the total quantity of books sold by each author
select  b.author, sum(o.quantity) as Total_Sold 
from books b 
join orders o on b.book_id = o.Book_ID
group by b.author

--7 List the cities where customers who spent over $30 are located
select DISTINCT c.city, o.Total_Amount 
from Orders o 
join customers c on o.customer_id=c.customer_id
where o.Total_Amount > 30

--8 Find the customer who spent the most on orders
select c.customer_id, c.name, SUM(o.total_amount) as Total_Spent 
from Orders o 
join Customers c on o.customer_id=c.customer_id 
group by c.customer_id, c.name 
order by Total_Spent desc

--9 Calculate the stock remaining after fulfilling all orders
select b.book_id, b.title, b.stock, coalesce(SUM(o.quantity),0) as Order_Quantity, 
	b.stock - coalesce(SUM(o.quantity),0) as Remaining_Quantity 
from books b 
left join orders o on b.book_id = o.book_id 
group by b.book_id, b.title, b.stock
order by b.book_id