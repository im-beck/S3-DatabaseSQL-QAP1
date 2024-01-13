-- Problem 3

-- Add address
INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('6A Bennett Drive', 'N/A', 1, 'A1A3A3', '444-555-6666');

SELECT address_id
FROM address
WHERE address = '6A Bennett Drive';
-- New ddress ID is 607

UPDATE customer
SET address_id = (Select address_id FROM address WHERE address = '6A Bennett Drive')
WHERE last_name = 'Pond';

SELECT customer_id, first_name, last_name, address_id
FROM customer
WHERE last_name = 'Pond'