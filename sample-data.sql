-- Insert sample categories
INSERT INTO inventory.category (name, description, state) VALUES
('Electronics', 'Electronic devices and gadgets', 'ACTIVE'),
('Clothing', 'Apparel and fashion items', 'ACTIVE'),
('Books', 'Physical books and reading materials', 'ACTIVE'),
('Home & Garden', 'Household and garden products', 'ACTIVE'),
('Sports & Outdoors', 'Sports equipment and outdoor gear', 'ACTIVE');

-- Insert sample products
INSERT INTO inventory.product (name, description, price, category_id, state) VALUES
('Wireless Headphones', 'Premium noise-cancelling wireless headphones with 30-hour battery life', 199.99, (SELECT id FROM inventory.category WHERE name='Electronics'), 'ACTIVE'),
('USB-C Cable', 'High-quality 6ft USB-C charging and data cable', 14.99, (SELECT id FROM inventory.category WHERE name='Electronics'), 'ACTIVE'),
('4K Webcam', 'Crystal clear 4K webcam perfect for streaming and video calls', 79.99, (SELECT id FROM inventory.category WHERE name='Electronics'), 'ACTIVE'),
('Laptop Stand', 'Adjustable aluminum laptop stand for better desk ergonomics', 34.99, (SELECT id FROM inventory.category WHERE name='Electronics'), 'ACTIVE'),

('Cotton T-Shirt', 'Comfortable 100% cotton t-shirt in multiple colors', 19.99, (SELECT id FROM inventory.category WHERE name='Clothing'), 'ACTIVE'),
('Denim Jeans', 'Classic blue denim jeans with perfect fit', 59.99, (SELECT id FROM inventory.category WHERE name='Clothing'), 'ACTIVE'),
('Winter Jacket', 'Warm waterproof winter jacket with thermal lining', 129.99, (SELECT id FROM inventory.category WHERE name='Clothing'), 'ACTIVE'),
('Running Shoes', 'Lightweight running shoes with advanced cushioning', 89.99, (SELECT id FROM inventory.category WHERE name='Clothing'), 'ACTIVE'),

('JavaScript Guide', 'Comprehensive guide to modern JavaScript development', 39.99, (SELECT id FROM inventory.category WHERE name='Books'), 'ACTIVE'),
('Python Cookbook', 'Practical recipes and solutions for Python programming', 34.99, (SELECT id FROM inventory.category WHERE name='Books'), 'ACTIVE'),
('Web Design Basics', 'Learn the fundamentals of responsive web design', 29.99, (SELECT id FROM inventory.category WHERE name='Books'), 'ACTIVE'),

('LED Desk Lamp', 'Energy-efficient LED lamp with adjustable brightness', 44.99, (SELECT id FROM inventory.category WHERE name='Home & Garden'), 'ACTIVE'),
('Plant Pot Set', 'Set of 3 ceramic plant pots with drainage', 24.99, (SELECT id FROM inventory.category WHERE name='Home & Garden'), 'ACTIVE'),
('Coffee Maker', 'Programmable coffee maker for 12 cups', 69.99, (SELECT id FROM inventory.category WHERE name='Home & Garden'), 'ACTIVE'),

('Yoga Mat', 'Non-slip yoga mat with carrying strap', 27.99, (SELECT id FROM inventory.category WHERE name='Sports & Outdoors'), 'ACTIVE'),
('Water Bottle', 'Insulated water bottle keeps drinks hot/cold for 24 hours', 35.99, (SELECT id FROM inventory.category WHERE name='Sports & Outdoors'), 'ACTIVE'),
('Bicycle Helmet', 'Safety-certified bicycle helmet with ventilation', 54.99, (SELECT id FROM inventory.category WHERE name='Sports & Outdoors'), 'ACTIVE');

-- Insert inventory quantities
INSERT INTO inventory.inventory (product_id, quantity, state) VALUES
((SELECT id FROM inventory.product WHERE name='Wireless Headphones'), 50, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='USB-C Cable'), 200, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='4K Webcam'), 30, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Laptop Stand'), 75, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Cotton T-Shirt'), 150, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Denim Jeans'), 80, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Winter Jacket'), 40, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Running Shoes'), 60, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='JavaScript Guide'), 25, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Python Cookbook'), 20, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Web Design Basics'), 30, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='LED Desk Lamp'), 45, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Plant Pot Set'), 90, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Coffee Maker'), 35, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Yoga Mat'), 55, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Water Bottle'), 100, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Bicycle Helmet'), 42, 'ACTIVE');
