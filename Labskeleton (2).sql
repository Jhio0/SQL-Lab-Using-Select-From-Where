rem Lab Unit 10-11 Simple SELECT and Sorting 
set echo on
set linesize 132
set pagesize 66
spool c:/cprg250s/unit10-11LabOutput.ltxt

rem Q1 - basic select columns with headers
rem insert solution here!
SELECT Title "TITLE", PubDate "Pub Date", Category "CATEGORY", Retail "Retail Price"
FROM Books;
WHERE (Category = 'COMPUTER'and retail < 30)
    or pubdate > '31-DEC-05'
order by pubdate;
rem Q2 
rem insert solution here!
SELECT Order# "Order #", Customer# "Customer #", OrderDate "Date Ord"
From Orders
WHERE ShipDate is NULL
order by Customer#, Order#;


rem Q3 
rem insert solution here!
SELECT Order# "ORDER#", ShipDate "SHIPDATE", ShipState "SH"
From Orders
Where (ShipDate BETWEEN '01-APR-09' and '03-APR-09' and ShipState  != 'WA')
order by ShipDate;


rem Q4 
rem insert solution here!
SELECT Title, PubID "PUBID", Retail
From Books
WHERE PubId in (2,3,4) or Retail < 30
order by Title;

rem Q5 
rem insert solution here!
select Customer#, Address, Referred, Email
From Customers
Where  Referred = 1003
  or Address LIKE 'P.O. BOX%'
  or Email LIKE '%@axe.com'
Order by Customer#;

spool off

