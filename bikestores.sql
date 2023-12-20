CREATE TABLE customers(

customer_id NUMBER PRIMARY KEY,
first_name varchar2(255) NOT NULL,
last_name varchar2(255) NOT NULL,
phone varchar2(25),
email varchar2(255) NOT NULL,
street varchar2(255),
city varchar2(50),
state varchar2(25) default 'pune' ,
zip_code varchar2(5));



create table stores(
store_id NUMBER PRIMARY KEY,
store_name varchar2(255) NOT NULL,
phone varchar2(25),
email varchar2(255),
street varchar2(255),
city varchar2(255),
state varchar2(10),
zip_code varchar2(5));


create table staffs(
staff_id NUMBER PRIMARY KEY,
first_name varchar2(50) NOT NULL,
last_name varchar2(50) NOT NULL,
phone varchar2(25),
email varchar2(255) NOT NULL,
active NUMBER NOT NULL,
store_id NUMBER NOT NULL,
manager_id NUMBER 
);

alter table staffs
ADD CONSTRAINT stores_fk
FOREIGN KEY (store_id)
references stores(store_id);

alter table staffs
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
references staffs(staff_id);




create table orders(
order_id NUMBER PRIMARY KEY,
customer_id NUMBER,
order_status NUMBER NOT NULL,
order_date DATE NOT NULL,
required_date DATE NOT NULL,
shipped_date DATE ,
store_id NUMBER NOT NULL,
staff_id NUMBER not NULL
);

alter table orders
ADD CONSTRAINT customers_fk
FOREIGN KEY (customer_id)
references customers(customer_id);

alter table orders
ADD CONSTRAINT stores_fk1
FOREIGN KEY (store_id)
references stores(store_id);


alter table orders
ADD CONSTRAINT staffs_fk2
FOREIGN KEY (staff_id)
references staffs(staff_id);