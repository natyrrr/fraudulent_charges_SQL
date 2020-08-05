CREATE TABLE Card_holder (id INT primary key NOT NULL, name VARCHAR(500) );

CREATE TABLE Credit_card (card VARCHAR(500)PRIMARY KEY NOT NULL, id_card_holder INT NOT NULL, FOREIGN KEY(id_card_holder) REFERENCES
						 Card_holder(id));
DROP TABLE Credit_card

SELECT * FROM Credit_card

CREATE TABLE Merchant (id iNT PRIMARY KEY NOT NULL, name VARCHAR(500) NOT NULL, id_merchant_category 
					   INT NOT NULL);

CREATE TABLE Merchant_category ( id INT NOT NULL, FOREIGN KEY(id) REFERENCES Merchant(id),
								name VARCHAR(500));

CREATE TABLE Transaction (id INT NOT NULL, date VARCHAR(250), 
						 amount FLOAT(25), card VARCHAR(500) NOT NULL, FOREIGN KEY(card) REFERENCES Credit_card(card),
						 id_merchant INT NOT NULL, FOREIGN KEY (id_merchant) REFERENCES Merchant(id));
drop TABLE Transaction	

select * from Transaction


