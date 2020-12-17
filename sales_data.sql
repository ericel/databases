/*
 Creates database sales if it doesn't exist
*/
CREATE schema IF NOT exists sales;
USE sales;

/*
 Creates SALE Table if it doesn't exist
*/
CREATE TABLE IF NOT EXISTS SALE(
 sale_id INT NOT NULL UNIQUE AUTO_INCREMENT,
 sale_date timestamp default current_timestamp,
 tax DECIMAL(10),
 total DECIMAL(10),
 PRIMARY KEY (sale_id)
);

/*
 Creates ITEM Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS ITEM (
  item_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  name VARCHAR(225),
  cost DECIMAL(10),
  price DECIMAL(10),
  PRIMARY KEY (item_id)
);

/*
 Creates SALE_ITEM Table if it doesn't exist
*/
CREATE TABLE IF NOT EXISTS SALE_ITEM (
 sale_id INT NOT NULL,
 sale_item_id INT NOT NULL AUTO_INCREMENT,
 PRIMARY KEY (sale_item_id),
 FOREIGN KEY (sale_id)
 REFERENCES SALE(sale_id),
 FOREIGN KEY (sale_item_id)
 REFERENCES ITEM(item_id)
);

/****************************************************
****************** INSERTIONS AND UPDATE ************
*****************************************************/

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



