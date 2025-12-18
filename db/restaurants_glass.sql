CREATE DATABASE IF NOT EXISTS restaurant_db;
USE restaurant_db;

CREATE TABLE IF NOT EXISTS restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    meal VARCHAR(50),
    rating INT
);

INSERT INTO restaurants (name, meal, rating) VALUES
('Pizza Palace', 'pizza', 5),
('Burger Town', 'burger', 4),
('Shawarma House', 'shawarma', 5),
('Falafel King', 'falafel', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Sushi World', 'sushi', 5),
('Pasta Corner', 'pasta', 4),
('Taco Fiesta', 'taco', 5),
('Curry Delight', 'curry', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('BBQ Barn', 'bbq', 5),
('Vegan Bistro', 'vegan', 4),
('Dumpling Den', 'dumplings', 5),
('Salad Stop', 'salad', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Steakhouse Grill', 'steak', 5),
('Seafood Shack', 'seafood', 4),
('Brunch Cafe', 'brunch', 5),
('Dessert Haven', 'dessert', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Mediterranean Eatery', 'mediterranean', 5),
('Kebab Corner', 'kebab', 4),
('Dim Sum Delight', 'dim sum', 5),
('Wraps & Rolls', 'wraps', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Gourmet Burgers', 'burger', 5),
('Classic Pizzeria', 'pizza', 4),
('Authentic Shawarma', 'shawarma', 5),
('Fresh Falafel', 'falafel', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Noodle House', 'noodles', 5),
('Grill Master', 'grill', 4),
('Healthy Bites', 'healthy', 5),
('Comfort Food Cafe', 'comfort food', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Tandoori Treats', 'tandoori', 5),
('Gastro Pub', 'pub food', 4),
('Ice Cream Parlor', 'ice cream', 5),
('Juice Bar', 'juices', 4);
INSERT INTO restaurants (name, meal, rating) VALUES
('Bistro Delight', 'bistro', 5),
('Wok & Roll', 'wok', 4),
('Pizza Express', 'pizza', 5),
('Burger Hub', 'burger', 4);