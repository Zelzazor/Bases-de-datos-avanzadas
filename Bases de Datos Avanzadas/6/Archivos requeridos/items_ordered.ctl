OPTIONS (SKIP=1)
LOAD DATA 
INFILE 'items_ordered.txt'
BADFILE 'items_ordered.bad'
DISCARDFILE 'items_ordered.dsc'
INTO TABLE items_ordered
FIELDS TERMINATED BY X'9'
TRAILING NULLCOLS 
(customerid
,order_date
,item
,quantity
,price		
)

