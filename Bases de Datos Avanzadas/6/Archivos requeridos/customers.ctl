OPTIONS (SKIP=1)
LOAD DATA 
INFILE 'customers.txt'
BADFILE 'customers.bad'
DISCARDFILE 'customers.dsc'
INTO TABLE customers
FIELDS TERMINATED BY X'9'
TRAILING NULLCOLS 
(customerid
,firstname
,lastname
,city
,state		
)

