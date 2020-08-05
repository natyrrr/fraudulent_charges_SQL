-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8BbRGP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Card_holder" (
    "id" INT   NOT NULL,
    "name" varchar(500)   NOT NULL,
    CONSTRAINT "pk_Card_holder" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Credit_card" (
    "card" varchar(500)   NOT NULL,
    "id_card_holder" VARCHAR(500)   NOT NULL,
    CONSTRAINT "pk_Credit_card" PRIMARY KEY (
        "card"
     )
);

CREATE TABLE "Merchant" (
    "id" INT   NOT NULL,
    "name" varchar(500)   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_Merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Merchant_category" (
    "id" INT   NOT NULL,
    "name" varchar(500)   NOT NULL
);

CREATE TABLE "Transaction" (
    "id" int   NOT NULL,
    "date" VARCHAR(250)   NOT NULL,
    "amount" FLOAT(50)   NOT NULL,
    "card" VARCHAR(500)   NOT NULL,
    "id_merchant" INT   NOT NULL
);

ALTER TABLE "Credit_card" ADD CONSTRAINT "fk_Credit_card_id_card_holder" FOREIGN KEY("id_card_holder")
REFERENCES "Card_holder" ("id");

ALTER TABLE "Merchant_category" ADD CONSTRAINT "fk_Merchant_category_id" FOREIGN KEY("id")
REFERENCES "Merchant" ("id");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_card" FOREIGN KEY("card")
REFERENCES "Credit_card" ("card");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_id_merchant" FOREIGN KEY("id_merchant")
REFERENCES "Merchant" ("id");

