PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE CUSTOMER
(
customer_id varchar(20) NOT NULL,
customer_name varchar(20) NOT NULL,
customer_address varchar(20),
city varchar(20),
state varchar(20),
postal_code varchar(20),
PRIMARY KEY(customer_id));
INSERT INTO "CUSTOMER" VALUES('1','John Doe','392 Sunset Blvd.','New York','NT','10059');
INSERT INTO "CUSTOMER" VALUES('2','Mary Smith','6900 Main St.','San Francisco','CA','94032');
INSERT INTO "CUSTOMER" VALUES('3','Richard Newman','2040 Riverside Rd.','San Diego','CA','92010');
INSERT INTO "CUSTOMER" VALUES('4','Cathy Cook','4010 Speedway.','Tucson','AZ','85719');
CREATE TABLE ORDERS
(
order_id varchar(20) NOT NULL,
order_date date,
customer_id varchar(20) not NULL,
PRIMARY KEY(order_id),
FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id));
INSERT INTO "ORDERS" VALUES('100','01-OCT-04','1');
INSERT INTO "ORDERS" VALUES('101','01-OCT-04','2');
INSERT INTO "ORDERS" VALUES('102','02-OCT-04','3');
INSERT INTO "ORDERS" VALUES('103','03-OCT-04','2');
INSERT INTO "ORDERS" VALUES('104','10-OCT-04','1');
INSERT INTO "ORDERS" VALUES('105','10-OCT-04','4');
INSERT INTO "ORDERS" VALUES('106','10-OCT-04','2');
INSERT INTO "ORDERS" VALUES('107','12-OCT-04','4');
CREATE TABLE PRODUCT
(
product_id varchar(20) NOT NULL,
product_description varchar(20),
product_finish varchar(20),
standard_price varchar(20) NOT NULL,
product_line_id varchar(20) NOT NULL,
PRIMARY KEY(product_id));
INSERT INTO "PRODUCT" VALUES('1000','Office Desk','Cherry','95','10');
INSERT INTO "PRODUCT" VALUES('1001','Manager''s Desk','Red Oak','199','10');
INSERT INTO "PRODUCT" VALUES('2000','Office Chair','Cherry','75','20');
INSERT INTO "PRODUCT" VALUES('2001','Manager''s Desk','Natural Oak','129','20');
INSERT INTO "PRODUCT" VALUES('3000','Book Shelf','Natural Ash','35','30');
INSERT INTO "PRODUCT" VALUES('3001','Duplex Book Shelf','White Ash','80','30');
INSERT INTO "PRODUCT" VALUES('4000','Table Lamp','Natural Ash','15','40');
INSERT INTO "PRODUCT" VALUES('4001','Duplex Table Lamp','White Ash','40','40');
INSERT INTO "PRODUCT" VALUES('9999','Keyboard','Plastic','20','50');
CREATE TABLE ORDER_LINE
(
order_id varchar(20) NOT NULL,
product_id varchar(20) NOT NULL,
ordered_quantity varchar(20) NOT NULL,
PRIMARY KEY(order_id,product_id),
FOREIGN KEY(order_id) REFERENCES ORDERS(order_id),
FOREIGN KEY(product_id) REFERENCES PRODUCT(product_id));
INSERT INTO "ORDER_LINE" VALUES('100','4000','1');
INSERT INTO "ORDER_LINE" VALUES('101','1000','2');
INSERT INTO "ORDER_LINE" VALUES('101','2000','2');
INSERT INTO "ORDER_LINE" VALUES('102','3000','1');
INSERT INTO "ORDER_LINE" VALUES('102','2000','1');
INSERT INTO "ORDER_LINE" VALUES('103','4001','1');
INSERT INTO "ORDER_LINE" VALUES('104','2000','1');
INSERT INTO "ORDER_LINE" VALUES('105','3001','2');
INSERT INTO "ORDER_LINE" VALUES('105','9999','5');
INSERT INTO "ORDER_LINE" VALUES('106','3000','1');
INSERT INTO "ORDER_LINE" VALUES('106','4000','1');
INSERT INTO "ORDER_LINE" VALUES('107','4001','1');
COMMIT;
