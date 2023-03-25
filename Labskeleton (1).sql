rem Lab Unit 10-11 Simple SELECT and Sorting 
set echo on
set linesize 100
set pagesize 66
spool c:/cprg250s/unit10-11LabOutput.ltxt

rem Q1 - basic select columns with headers
rem insert solution here!
select fname AS "First", lname "Last"
from author;

rem Q2 
rem insert solution here!
column "Order-items" format A20
SELECT Order#||"-"||Item# "order-items", isbn "book price" qty QTV, paideach "Price"
        quantity*paideach "Line-total",quantity*paideach*0.05 "GST", quantity*paideach*1.05 "Total price"
from orderitems; 


rem Q3 
rem insert solution here!
SELECT unique AuthorID "ID"
from BookAuthor;


rem Q4 
rem insert solution here!
SELECT Customer# || "-"||Order# "Cust#-Order#"
From Orders;

rem Q5 
rem insert solution here!
SELECT LastName||"Name"||FirstNAme, Address||","||City||","||State||","||Zip||","||Region "Address"
from Customers;

spool off

