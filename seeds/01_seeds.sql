-- INSERT INTO users (name, email, password) VALUES 
-- ('Armand Hilll', 'lera_hahn@dickens.org', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
-- ('Stephanie Wolff', 'darius.homenick@tod.ca','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
-- ('Stan Miller', 'mcdermott.maxie@schoen.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');


-- INSERT INTO properties ( owner_id, title, description, thumbnail_photo_url, cover_photo_url, country, street, city, province, postal_code) VALUES
-- (1, 'Speed lamp', 'description', 'https://i.imgur.com/j3InbN3.jpg', 'https://i.imgur.com/txbXCQo.jpg', 'Canada', 'Bayshore avenue', 'Ottawa', 'Ontario', 'K2A1Z1'),
-- (1, 'Blanck corner', 'description', 'https://i.imgur.com/FyEEl8k.jpg', 'https://i.imgur.com/czSkk5l.jpg', 'Canada', 'Richmond Road', 'Montreal', 'Québec', 'H1A0A1'),
-- (2, 'Fun glad', 'description', 'https://i.imgur.com/PibBBs0.jpg', 'https://i.imgur.com/v5wwn3A.jpg', 'Canada', 'St laurent', 'Toronto', 'Ontario', 'M4C1M5');

-- INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
-- VALUES (1, 1, '2018-09-11', '2018-09-26'),
-- (2, 2, '2019-01-04', '2019-02-01'),
-- (3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) 
VALUES 
(1, 1, 1, 4, 'message'),
(2, 2, 2, 4, 'message'),
(3, 3, 3, 5, 'message');


