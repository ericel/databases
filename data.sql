/*
 Inserts at least 6 rows into SALE
*/
INSERT INTO 
	SALE(tax, total)
VALUES (0.5, 12.0), (0.5, 15.0), (0.5, 16.0), (0.5, 18.0), (0.5, 22.0), (0.5, 23.0);

/*
 Inserts at least 6 rows into ITEM
*/
INSERT INTO 
	ITEM(name, cost, price)
VALUES
	('Jordan 21 released 2010', 10.0, 11.5),
	('Jordan 22 released 2012', 12.0, 14.5),
    ('Jordan 23 released 2014', 13.0, 15.5),
	('Jordan 24 released 2016', 14.0, 17.5),
    ('Jordan 25 released 2018', 15.0, 21.5),
	('Jordan 26 released 2019', 16.0, 22.5);
 
/*
 Inserts at least 6 rows into SALE_ITEM
  -SALE_ITEM relation should include at least two same SaleID
*/ 
INSERT INTO 
	SALE_ITEM(sale_id)
VALUES (1), (2), (2), (4), (5), (6);

/*
 Updates a “Price” value of a row in the ITEM relation
  -Updated ITEM (ItemID) should be in SALE_ITEM
*/ 
UPDATE ITEM SET price = 25
WHERE item_id = 1;
