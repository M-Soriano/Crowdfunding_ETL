
--- code to create a database.
CREATE DATABASE crowdfunding_db;


-------------------------------------------------------------------------
---code to create  contacts table

CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY, --Auto unique ID
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);
--- import contacts first
-------
-------For verifing table and imported data
SELECT *
FROM contacts;

----------------------------------------------------------------------
--- code to create category  table

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50) NOT NULL UNIQUE
);
---import category second
---------
----------------For verifing table and imported data

SELECT *
FROM category;

-------------------------------------------------------------------------

--- code to create subtategory table

CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY, 
    subcategory VARCHAR(50) NOT NULL UNIQUE
);

---import subcategory 3rd
-----------
-----------For verifing table and imported data
SELECT * 
FROM subcategory




--------------------------------------------------------------------------
---------------------------------------------------------------------------

---import campaign last to avoid conflict with foreign key constraints------------

---- code to create tables
CREATE TABLE campaign (
   cf_id SERIAL PRIMARY KEY, --Auto unique ID
   contact_id INT NOT NULL,
   company_name VARCHAR(100) NOT NULL,
   description VARCHAR(100) NOT NULL,
   goal FLOAT NOT NULL,
   pledged FLOAT NOT NULL,
   outcome VARCHAR(30)  NOT NULL,
   backers_count INT NOT NULL,
   country VARCHAR(80) NOT NULL,
   currency VARCHAR(10) NOT NULL,
   launched_date DATE NOT NULL,
   end_date DATE NOT NULL,
   category_id VARCHAR(10) NOT NULL,
   subcategory_id VARCHAR(20) NOT NULL,
   CONSTRAINT campaign_contacts_fk FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
   CONSTRAINT campaign_category_fk FOREIGN KEY (category_id) REFERENCES category(category_id),
   CONSTRAINT campaign_subcategory_fk FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-----------
-----------For verifing table and imported data
SELECT *
FROM campaign




