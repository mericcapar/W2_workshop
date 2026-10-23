USE lana_dog_walking;
-- clients
INSERT INTO clients (first_name, last_name, phone, email, address) VALUES
('Emily','Johnson','650-555-0101','emily.j@email.com','120 Castro St, Mountain View, CA'),
('Daniel','Lee','650-555-0102','dlee@email.com','455 Dana St, Mountain View, CA'),
('Sofia','Martinez','650-555-0103','sofia.m@email.com','78 Hope St, Mountain View, CA'),
('James','Carter','650-555-0104','jcarter@email.com','910 Rengstorff Ave, Mountain View, CA'),
('Olivia','Nguyen','650-555-0105','olivia.n@email.com','33 Bryant St, Palo Alto, CA'),
('Michael','Brown','650-555-0106','mbrown@email.com','260 Calderon Ave, Mountain View, CA'),
('Ava','Patel','Columns650-555-0107','ava.p@email.com','14 Church St, Mountain View, CA'),
('Ethan','Kim','650-555-0108','ethan.k@email.com','502 Bush St, Mountain View, CA'),
('Mia','Garcia','650-555-0109','mia.g@email.com','89 Waverley St, Palo Alto, CA'),
('Noah','Wilson','650-555-0110','nwilson@email.com','701 Shoreline Blvd, Mountain View, CA'),
('Chloe','Davis','650-555-0111','chloe.d@email.com','18 Mercy St, Mountain View, CA');
SELECT * FROM clients;

-- walkers
INSERT INTO walkers (first_name, last_name, phone, email) VALUES
('Lana','Brooks','650-555-0200','lana@lanawalks.com'),
('Ryan','Torres','650-555-0201','ryan@lanawalks.com'),
('Grace','Hall','650-555-0202','grace@lanawalks.com'),
('Kevin','Young','650-555-0203','kevin@lanawalks.com'),
('Zoe','Allen','650-555-0204','zoe@lanawalks.com'),
('Lucas','Wright','650-555-0205','lucas@lanawalks.com'),
('Emma','Scott','650-555-0206','emma@lanawalks.com'),
('Jack','Green','650-555-0207','jack@lanawalks.com'),
('Lily','Adams','650-555-0208','lily@lanawalks.com'),
('Owen','Baker','650-555-0209','owen@lanawalks.com'),
('Ella','Nelson','650-555-0210','ella@lanawalks.com');
SELECT * FROM walkers;

-- dogs
INSERT INTO dogs (client_id, name, breed, age, size, notes) VALUES
(1,'Max','Golden Retriever',4,'Large','Pulls on leash'),
(1,'Bella','Beagle',2,'Medium',NULL),
(2,'Charlie','Labrador',6,'Large','Afraid of bikes'),
(3,'Luna','Chihuahua',3,'Small','Chicken allergy'),
(4,'Cooper','German Shepherd',5,'Large',NULL),
(5,'Daisy','Poodle',7,'Medium','Needs slow walks'),
(6,'Rocky','Bulldog',4,'Medium','Gets tired in heat'),
(7,'Milo','Corgi',1,'Small','Very energetic'),
(8,'Lucy','Husky',3,'Large',NULL),
(9,'Teddy','Shih Tzu',8,'Small','Hard of hearing'),
(10,'Bailey','Border Collie',2,'Medium','Loves to run');
SELECT * FROM dogs;

-- walks
INSERT INTO walks (walker_id, walk_date, start_time, duration_min, price, is_paid) VALUES
(1,'2026-10-20','09:00',30,25.00,TRUE),
(1,'2026-10-20','11:00',60,40.00,TRUE),
(2,'2026-10-20','14:00',30,25.00,FALSE),
(3,'2026-10-21','08:30',45,32.00,TRUE),
(2,'2026-10-21','10:00',30,25.00,TRUE),
(4,'2026-10-21','16:00',60,40.00,FALSE),
(5,'2026-10-22','09:00',30,25.00,TRUE),
(1,'2026-10-22','12:00',45,32.00,FALSE),
(6,'2026-10-22','15:30',30,25.00,TRUE),
(3,'2026-10-23','08:00',60,40.00,FALSE),
(7,'2026-10-23','17:00',30,25.00,FALSE);
SELECT * FROM walks;

-- walk_dogs
INSERT INTO walk_dogs (walk_id, dog_id) VALUES
(1,1),(1,2),(2,3),(3,4),(4,5),(5,6),
(6,7),(7,8),(8,9),(9,10),(10,11);
SELECT * FROM walk_dogs;