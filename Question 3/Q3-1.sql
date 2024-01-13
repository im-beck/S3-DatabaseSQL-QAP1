-- Problem 3

-- Add address
INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('4B Bennett Drive', 'N/A', 1, 'A1A2A2', '444-555-6666');

SELECT address_id
FROM address
WHERE address = '4B Bennett Drive';
-- Address ID is 606

-- Add customers
INSERT INTO customer (store_id, first_name, last_name, email, address_id)
VALUES
(1, 'Beck', 'Pond', 'beck.pond@yahoo.com', 606),
(1, 'Natalie', 'Pond', 'nat.pond@yahoo.com', 606),
(1, 'Ivan', 'Pond', 'ivan.pond@yahoo.com', 606);

SELECT customer_id, first_name, last_name, address_id
FROM customer
WHERE last_name = 'Pond'