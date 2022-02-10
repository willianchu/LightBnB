INSERT INTO users (name, email, password)
VALUES ('admin', 'admin@LHL.com', ' $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Hillary Clinton', 'hillary@gmail.com', ' $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Rachel Meghan Markle', 'rmm@gmail.com', ' $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (name, email, password)
VALUES 
('Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Sue Luna', 'jasonvincent@gmx.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Rosalie Garza', 'jacksondavid@gmx.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Etta West', 'charlielevy@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Margaret Wong', 'makaylaweiss@icloud.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Leroy Hart', 'jaycereynolds@inbox.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');



INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (2, 'Blue Oak at Sunset Beach home', 'The accommodation is 450 m from Oak Beach, and guests benefit from complimentary WiFi and private parking available on site.
This holiday home is fitted with 4 bedrooms, a kitchen with a dishwasher and a microwave, a TV, a seating area and 3 bathrooms.', 'https://www.realestate.com.au/blog/wp-content/uploads/2018/02/06094248/PB-2.jpg', 'https://c8.alamy.com/comp/2HFDAX2/streetview-of-a-row-of-modern-beach-houses-on-the-south-carolina-coast-2HFDAX2.jpg', 646.72, 2, 2, 2, 'Canada', 'Coastal Road', 'West Vancouver', 'BC', '96814', true),
(2,'Magestic LUXURY Beachfront', 'This villa provides free private parking, room service and free WiFi. The villa consists of 4 separate bedrooms, 4 bathrooms with bathrobes and slippers, and a seating area. A flat-screen TV is provided. The villa offers a sun terrace.', 'https://www.luxury-architecture.net/wp-content/uploads/2017/12/1512423343-8380-11.jpg', 'https://a.lotoloto.net/wp-content/uploads/2021/12/3b12dcfbbf30cd7940f027666850f2da.jpg', 1117.37, 8, 4, 5, 'Canada', 'Beach Side Road', 'Victoria', 'BC', 'V8S414', true),
(2,'NorthShore Haven Condo', 'With access to a tennis court. Guests staying at this apartment have access to a fully equipped kitchen. The apartment features a satellite TV. The apartment offers a barbecue. There is a terrace at this property and guests can go golfing nearby.', 'https://static3.mansionglobal.com/production/media/article-images/c009438631979cf4a7209f339948cb07/large_S1-HD700_MCPHER_OR_20200818130936.jpg', 'https://assets.atdw-online.com.au/images/1546c58970a3c3af6d0d5fe4941bf8f1.jpeg?rect=238', 1117.37, 8, 4, 5, 'Canada', 'Super Marine Drive', 'North Vancouver', 'BC', 'V8S994', true  );

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES
('1', 'Speed lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930.61, '6', '4', '8', 'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', '28142', 'true'),
('1', 'Blank corner', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 852.34, '6', '6', '7', 'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', '83680', 'true'),
('2', 'Habit mix', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 460.58, '0', '5', '6', 'Canada', '1650 Hejto Center', 'Genwezuj', 'Newfoundland And Labrador', '44583', 'true'),
('4', 'Headed know', 'description', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 826.40, '0', '5', '5', 'Canada', '513 Powov Grove', 'Jaebvap', 'Ontario', '38051', 'true'),
('6', 'Port out', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 2358, '2', '8', '0', 'Canada', '1392 Gaza Junction', 'Upetafpuv', 'Nova Scotia', '81059', 'true'),
('6', 'Fun glad', 'description', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg', 342.91, '6', '6', '4', 'Canada', '169 Nuwug Circle', 'Vutgapha', 'Newfoundland And Labrador', '00159', 'true'),
('7', 'Shine twenty', 'description', 'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg', 136.44, '1', '7', '8', 'Canada', '340 Dokto Park', 'Upfufa', 'Nova Scotia', '29045', 'true'),
('8', 'Game fill', 'description', 'https://images.pexels.com/photos/1756826/pexels-photo-1756826.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1756826/pexels-photo-1756826.jpeg', 234.28, '5', '6', '4', 'Canada', '834 Buwmi Road', 'Rotunif', 'Newfoundland And Labrador', '58224', 'true');

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES
(3, 1, '2021-12-21', '2021-12-25'),
(3, 2, '2021-12-31', '2022-01-05'),
(3, 3, '2022-01-21', '2022-01-27');

INSERT INTO reservations (start_date, end_date,property_id, guest_id) 
VALUES
('2018-09-11', '2018-09-26', 2, 3),
('2019-01-04', '2019-02-01', 2, 2),
('2021-10-01', '2021-10-14', 1, 4),
('2014-10-21', '2014-10-21', 3, 5),
('2016-07-17', '2016-08-01', 3, 4),
('2018-05-01', '2018-05-27', 4, 8),
('2022-10-04', '2022-10-23', 5, 1),
('2015-09-13', '2015-09-30', 6, 8),
('2023-05-27', '2023-05-28', 4, 2),
('2023-04-23', '2023-05-02', 8, 1);


INSERT INTO property_reviews (guest_id, property_id, rating, message)
VALUES
(3, 1, 5, 'Very nice place to stay'),
(3, 2, 5, 'Very nice place to stay'),
(3, 3, 5, 'Very nice place to stay');

INSERT INTO property_reviews (guest_id, property_id, rating, message)
VALUES
(' 2', '5', '3', 'This place is magestic!'),
(' 1', '4', '4', 'This place is amazing!'),
(' 8', '1', '4', 'This place is whimsical!'),
(' 3', '8', '4', 'This place is incredible!'),
(' 4', '2', '5', 'This place is fancy!'),
(' 4', '3', '4', 'This place is gorgeous!'),
(' 5', '6', '5', 'This place is lavish!');
