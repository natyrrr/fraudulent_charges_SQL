CREATE TABLE Merchant_category ( id INT  PRIMARY KEY NOT NULL,
								name VARCHAR(500));

CREATE TABLE Merchant (id INT NOT NULL, name VARCHAR(30), id_merchant_category 
					   INT NOT NULL, FOREIGN KEY 
					   (id_merchant_category) REFERENCES Merchant_category(id), PRIMARY KEY (id));

CREATE TABLE transaction (id  INT PRIMARY KEY NOT NULL, date TIMESTAMP, 
						 amount FLOAT(25), card VARCHAR(500) NOT NULL, FOREIGN KEY(card) 
						  REFERENCES Credit_card(card),
						 id_merchant INT NOT NULL, FOREIGN KEY (id_merchant) REFERENCES Merchant(id));

CREATE TABLE Credit_card (card VARCHAR(500)PRIMARY KEY NOT NULL, 
						  id_card_holder INT NOT NULL, FOREIGN KEY(id_card_holder) REFERENCES
						 Card_holder(id));

CREATE TABLE Card_holder ( id INT PRIMARY KEY NOT NULL, name VARCHAR (500));


CREATE TABLE Transaction (id  INT PRIMARY KEY NOT NULL, date VARCHAR(250), 
						 amount FLOAT(25), card VARCHAR(500) NOT NULL, FOREIGN KEY(card) REFERENCES Credit_card(card),
						 id_merchant INT NOT NULL, FOREIGN KEY (id_merchant) REFERENCES Merchant(id));
						 
SELECT * FROM merchant
SELECT * FROM Credit_card
SELECT * FROM Transaction