use crm;
create table customer
	( cust_id int auto_increment Primary key,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(50)unique,
	phone varchar(20),
	address varchar(250),
	created_at timestamp default Current_timestamp);

select * from customer;

Create Table leads
	(lead_id int auto_increment Primary key,
    cust_id int,
    lead_source varchar(30),
    lead_status varchar(30),
    created_at timestamp default Current_timestamp,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id));

select * from leads;

create table sales
(sales_id int auto_increment primary key,
 cust_id int,
 product Varchar(30),
 sale_value Decimal(20,2),
 sale_date date,
  FOREIGN KEY (cust_id) REFERENCES customer(cust_id));
 
 select * from sales;
 
 create table interaction
(interaction_id int auto_increment primary key,
 cust_id int,
 interaction_type Varchar(50),
 interaction_date date,
 note text,
FOREIGN KEY (cust_id) REFERENCES customer(cust_id));

select * from interaction;

create table followup
(followup_id int auto_increment primary key,
 cust_id int,
 followup_date date,
 reminder_sent BOOLEAN DEFAULT FALSE, 
FOREIGN KEY (cust_id) REFERENCES customer(cust_id));

select * from followup;

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('John', 'Doe', 'john@callme.com', '8769587340', '423 Main St, Fliptown');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '250 Oak Ave, Uptown');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Alice', 'Johnson', 'alice.johnson@mail.com', '4567891234', '789 Pine St, Downtown');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Bob', 'Williams', 'bob.williams@example.com', '3216549870', '111 Elm St, Cityville');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Charlie', 'Brown', 'charlie.brown@mail.com', '2345678901', '222 Maple St, Villagetown');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('David', 'Wilson', 'david.wilson@example.com', '5432167890', '333 Cedar St, Metropolis');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Eva', 'Martinez', 'eva.martinez@mail.com', '6543210987', '444 Birch St, Suburbia');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Frank', 'Garcia', 'frank.garcia@example.com', '7654321098', '555 Spruce St, Ruralville');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Grace', 'Lopez', 'grace.lopez@mail.com', '8765432109', '666 Willow St, Hamlet');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Hank', 'Clark', 'hank.clark@example.com', '9876543210', '777 Ash St, Highlands');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Ivy', 'Rodriguez', 'ivy.rodriguez@mail.com', '1234567890', '888 Fir St, Lakeside');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Jack', 'Lewis', 'jack.lewis@example.com', '2345678901', '999 Cherry St, Baytown');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Kathy', 'Lee', 'kathy.lee@mail.com', '3456789012', '1010 Walnut St, Hilltop');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Leo', 'Walker', 'leo.walker@example.com', '4567890123', '1111 Chestnut St, Cliffside');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Mia', 'Hall', 'mia.hall@mail.com', '5678901234', '1212 Poplar St, Forestview');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Nina', 'Allen', 'nina.allen@example.com', '6789012345', '1313 Sequoia St, Meadowvale');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Oscar', 'Young', 'oscar.young@mail.com', '7890123456', '1414 Palm St, Riverside');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Paula', 'Hernandez', 'paula.hernandez@example.com', '8901234567', '1515 Magnolia St, Plainsville');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Quinn', 'King', 'quinn.king@mail.com', '9012345678', '1616 Larch St, Valleytown');

INSERT INTO customer (first_name, last_name, email, phone, address)
VALUES 
('Ray', 'Wright', 'ray.wright@example.com', '0123456789', '1717 Hemlock St, Mountainview');


select * from customer;

INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (5, 'Website', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (12, 'Email', 'Closed');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (1, 'Phone', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (8, 'Phone', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (3, 'Email', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (14, 'Phone', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (7, 'Email', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (15, 'Website', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (20, 'Website', 'Closed');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (2, 'Website', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (9, 'Email', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (4, 'Phone', 'Closed');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (11, 'Email', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (17, 'Website', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (6, 'Email', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (18, 'Phone', 'Closed');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (10, 'Phone', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (13, 'Email', 'Open');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (16, 'Website', 'Closed');
INSERT INTO Leads (cust_id, lead_source, lead_status) VALUES (3, 'Phone', 'Open');

select * from Leads;

INSERT INTO Sales (cust_id, product, sale_value, sale_date) 
VALUES (12, 'Software Subscription', 1200.00, '2023-10-15');

INSERT INTO Sales (cust_id, product, sale_value, sale_date) 
VALUES (20, 'Software Subscription', 1500.00, '2023-10-14');

INSERT INTO Sales (cust_id, product, sale_value, sale_date) 
VALUES (4, 'Software Subscription', 1100.00, '2023-10-13');

INSERT INTO Sales (cust_id, product, sale_value, sale_date) 
VALUES (18, 'Software Subscription', 1400.00, '2023-10-12');

INSERT INTO Sales (cust_id, product, sale_value, sale_date) 
VALUES (16, 'Software Subscription', 1000.00, '2023-10-11');

select * from Sales;

INSERT INTO interaction (cust_id, interaction_type, interaction_date, note) VALUES 
(5, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(12, 'Email', '2023-10-14', 'Agreed subscription'),
(1, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(8, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(3, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(14, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(7, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(15, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(20, 'Email', '2023-10-14', 'Agreed subscription'),
(2, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(9, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(11, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(17, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(6, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(18, 'Email', '2023-10-14', 'Agreed subscription'),
(10, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(13, 'Phone Call', '2023-10-14', 'Discussed subscription details'),
(4, 'Email', '2023-10-14', 'Agreed subscription'),
(16, 'Email', '2023-10-14', 'Agreed subscription'),
(3, 'Phone Call', '2023-10-14', 'Discussed subscription details');

select * from interaction;

INSERT INTO followup (cust_id, followup_date, reminder_sent) VALUES 
(12, '2023-10-15', TRUE),  -- Closed lead
(20, '2023-10-15', TRUE),  -- Closed lead
(4, '2023-10-15', TRUE),   -- Closed lead
(18, '2023-10-15', TRUE),  -- Closed lead
(5, '2023-10-15', FALSE),  -- Open lead
(1, '2023-10-15', FALSE),  -- Open lead
(8, '2023-10-15', FALSE),  -- Open lead
(3, '2023-10-15', FALSE),  -- Open lead
(14, '2023-10-15', FALSE), -- Open lead
(15, '2023-10-15', FALSE), -- Open lead
(2, '2023-10-15', FALSE),  -- Open lead
(9, '2023-10-15', FALSE),  -- Open lead
(11, '2023-10-15', FALSE), -- Open lead
(17, '2023-10-15', FALSE), -- Open lead
(6, '2023-10-15', FALSE),  -- Open lead
(10, '2023-10-15', FALSE), -- Open lead
(13, '2023-10-15', FALSE), -- Open lead
(16, '2023-10-15', FALSE);  -- Open lead

select * from followup;

#1.	List of Active Leads:

Select c.first_name, c.last_name,l.lead_status,l.lead_source
from leads l
join customer c on c.cust_id=l.cust_id
where lead_status = "Open";

#2.	Total Sales by Customer:

select c.first_name, c.last_name,COUNT(s.product) AS product_count, SUM(s.sale_value) AS total_sales
from sales s 
join customer c on c.cust_id = s.cust_id
group by s.cust_id;

#3.Total Sales by product:

select product,COUNT(product) AS product_count, SUM(sale_value) AS total_sales from sales  group by product;

select * from followup;

#3.	Upcoming Follow-ups:
select c.first_name,c.last_name,c.phone,c.email,f.followup_date,f.reminder_sent
from followup f
join customer c on c.cust_id = f.cust_id
where f.followup_date= current_date() AND f.reminder_sent=0;

INSERT INTO followup (cust_id, followup_date, reminder_sent) VALUES 
(20, '2024-10-16', False);

DELIMITER //

CREATE TRIGGER followup_trigger
BEFORE UPDATE ON followup
FOR EACH ROW
BEGIN
    IF NEW.followup_date = CURDATE() THEN
        SET NEW.reminder_sent = TRUE;
    END IF;
END;
//

DELIMITER ;

	
