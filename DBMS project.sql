use clothstore;
-- CREATE TABLE categories (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   name VARCHAR(50) NOT NULL
-- );

-- INSERT INTO categories (name) VALUES
--   ('Men'),
--   ('Women'),
--   ('Kids');
-- select * from categories;

-- CREATE TABLE products (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   FOREIGN KEY (category_id) REFERENCES categories(id),
--   name VARCHAR(100) NOT NULL,
--   price DECIMAL(10, 2) NOT NULL,
--   category_id INT NOT NULL,
--   description TEXT,
--   brand VARCHAR(50),
--   size VARCHAR(20),
--   color VARCHAR(20)
-- );
-- desc products;
-- CREATE TABLE men (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   product_id INT NOT NULL,
--   category_id INT NOT NULL,
--   FOREIGN KEY (product_id) REFERENCES products(id),
--   FOREIGN KEY (category_id) REFERENCES categories(id),
--   name VARCHAR(100) NOT NULL,
--   price DECIMAL(10, 2) NOT NULL,
--   description TEXT,
--   brand VARCHAR(50),
--   size VARCHAR(20),
--   color VARCHAR(20)
-- );
-- desc men;
-- CREATE TABLE women (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   product_id INT NOT NULL,
--   category_id INT NOT NULL,
--   FOREIGN KEY (product_id) REFERENCES products(id),
--   FOREIGN KEY (category_id) REFERENCES categories(id),
--   name VARCHAR(100) NOT NULL,
--   price DECIMAL(10, 2) NOT NULL,
--   description TEXT,
--   brand VARCHAR(50),
--   size VARCHAR(20),
--   color VARCHAR(20)
-- );
-- desc women;
-- CREATE TABLE kids (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   product_id INT NOT NULL,
--   category_id INT NOT NULL,
--   FOREIGN KEY (product_id) REFERENCES products(id),
--   FOREIGN KEY (category_id) REFERENCES categories(id),
--   name VARCHAR(100) NOT NULL,
--   price DECIMAL(10, 2) NOT NULL,
--   description TEXT,
--   brand VARCHAR(50),
--   size VARCHAR(20),
--   color VARCHAR(20)
-- );
-- desc kids;

# Data Insertion
-- INSERT INTO products (name, price, category_id, description, brand, size, color)
-- VALUES
--   ('Men''s T-Shirt', 19.99, 1, 'A comfortable and casual t-shirt for men', 'Hanes', 'Small', 'Blue'),
--   ('Men''s Polo Shirt', 29.99, 1, 'A stylish and versatile polo shirt for men', 'Ralph Lauren', 'Medium', 'White'),
--   ('Men''s Hoodie', 39.99, 1, 'A warm and cozy hoodie for men', 'Under Armour', 'Large', 'Black'),
--   ('Men''s Jeans', 49.99, 1, 'A durable and stylish pair of jeans for men', 'Levi''s', '32x32', 'Dark Wash'),
--   ('Men''s Sneakers', 59.99, 1, 'Comfortable and durable sneakers for men', 'Nike', '11', 'Black/White'),
--   ('Men''s Dress Shoes', 79.99, 1, 'Elegant and sleek dress shoes for men', 'Calvin Klein', '10.5', 'Brown'),
--   ('Men''s Leather Belt', 24.99, 1, 'A classic leather belt for men', 'Tommy Hilfiger', '36', 'Black'),
--   ('Men''s Leather Wallet', 29.99, 1, 'A stylish and functional leather wallet for men', 'Fossil', 'One Size', 'Brown'),
--   ('Men''s Sunglasses', 39.99, 1, 'Stylish and protective sunglasses for men', 'Ray-Ban', 'One Size', 'Tortoise'),
--   ('Women''s Blouse', 24.99, 2, 'A chic and comfortable blouse for women', 'Zara', 'Small', 'White'),
--   ('Women''s Dress', 59.99, 2, 'A beautiful and elegant dress for women', 'Gucci', 'Medium', 'Red'),
--   ('Women''s Skirt', 34.99, 2, 'A versatile and stylish skirt for women', 'H&M', 'Large', 'Black'),
--   ('Women''s Jeans', 49.99, 2, 'A comfortable and durable pair of jeans for women', 'Levi''s', '29x30', 'Light Wash'),
--   ('Women''s Sandals', 29.99, 2, 'Comfortable and stylish sandals for women', 'Birkenstock', '7', 'Black'),
--   ('Kids'' T-Shirt', 12.99, 3, 'A cute and comfortable t-shirt for kids', 'GapKids', '4T', 'Yellow'),
-- ('Kids'' Hoodie', 24.99, 3, 'A warm and cozy hoodie for kids', 'Carter''s', '5T', 'Pink'),
-- ('Kids'' Jeans', 19.99, 3, 'A durable and stylish pair of jeans for kids', 'Old Navy', '6', 'Dark Wash'),
-- ('Kids'' Sneakers', 29.99, 3, 'Comfortable and durable sneakers for kids', 'Adidas', '11', 'Blue/White'),
-- ('Kids'' Backpack', 19.99, 3, 'A fun and functional backpack for kids', 'JanSport', 'One Size', 'Purple');
-- 	('Men''s Polo Shirt', 39.99, 1, 'A classic polo shirt for men', 'Lacoste', 'Large', 'Green'),
-- ('Men''s Shorts', 29.99, 1, 'A comfortable pair of shorts for men', 'Champion', 'Medium', 'Grey'),
-- ('Men''s Jacket', 69.99, 1, 'A stylish and warm jacket for men', 'The North Face', 'XL', 'Black'),
-- ('Men''s Joggers', 49.99, 1, 'Comfortable and trendy joggers for men', 'Adidas', 'Small', 'Navy'),
-- ('Men''s Sweater', 59.99, 1, 'A cozy and warm sweater for men', 'Patagonia', 'Medium', 'Red'),
-- ('Men''s Hat', 19.99, 1, 'A stylish hat for men', 'Gucci', 'One Size', 'Beige'),
-- ('Men''s Watch', 149.99, 1, 'A sleek and elegant watch for men', 'Rolex', 'One Size', 'Silver'),
-- ('Women''s Blouse', 29.99, 2, 'A versatile and elegant blouse for women', 'Theory', 'Small', 'Black'),
-- ('Women''s Jeans', 39.99, 2, 'A stylish and comfortable pair of jeans for women', 'Madewell', '28x30', 'Medium Wash'),
-- ('Women''s Skirt', 44.99, 2, 'A flowy and feminine skirt for women', 'Free People', 'Small', 'Blue'),
-- ('Women''s Boots', 99.99, 2, 'Stylish and comfortable boots for women', 'Steve Madden', '8', 'Tan'),
-- ('Women''s Sandals', 39.99, 2, 'Comfortable and trendy sandals for women', 'Sam Edelman', '7', 'White'),
-- ('Women''s Hat', 24.99, 2, 'A fashionable hat for women', 'Brixton', 'One Size', 'Grey'),
-- ('Women''s Earrings', 14.99, 2, 'Stylish and affordable earrings for women', 'BaubleBar', 'One Size', 'Gold'),
-- ('Kids'' T-Shirt', 12.99, 3, 'A fun and colorful t-shirt for kids', 'Old Navy', '3T', 'Orange'),
-- ('Kids'' Leggings', 14.99, 3, 'Comfortable and cute leggings for kids', 'Carter''s', '4T', 'Pink'),
-- ('Kids'' Jacket', 29.99, 3, 'A warm and cozy jacket for kids', 'The North Face', '6', 'Purple'),
-- ('Kids'' Sneakers', 24.99, 3, 'Durable and comfortable sneakers for kids', 'New Balance', '10', 'Grey/Pink');
-- select * from products;

# Adding data in men table using product table
-- INSERT INTO men (product_id,category_id,name, price, description, brand, size, color)
-- SELECT id,category_id,name, price, description, brand, size, color
-- FROM products
-- WHERE category_id = 1;
-- select * from men

 # Adding data in women table using product table
-- INSERT INTO women (product_id,category_id,name, price, description, brand, size, color)
-- SELECT id,category_id,name, price, description, brand, size, color
-- FROM products
-- WHERE category_id = 2;
-- select * from women

# Adding data in Kids table using product table
-- INSERT INTO kids (product_id,category_id,name, price, description, brand, size, color)
-- SELECT id,category_id,name, price, description, brand, size, color
-- FROM products
-- WHERE category_id = 3;
-- select * from kids;