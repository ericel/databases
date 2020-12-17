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


