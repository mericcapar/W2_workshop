USE lana_dog_walking;

INSERT INTO clients
    (client_id, first_name, last_name, phone, email, address)
VALUES
    (1, 'John', 'Smith', '3001513298',
     'jsmith@gmail.com', '1001 Newton St, Chicago, IL 45789'),

    (2, 'Emily', 'Johnson', '3125550102',
     'emily.johnson@example.com', '245 Oak Ave, Chicago, IL 60601'),

    (3, 'Michael', 'Brown', '3125550103',
     'michael.brown@example.com', '782 Maple St, Chicago, IL 60614'),

    (4, 'Sarah', 'Davis', '3125550104',
     'sarah.davis@example.com', '156 Pine Rd, Chicago, IL 60618'),

    (5, 'David', 'Wilson', '3125550105',
     'david.wilson@example.com', '903 Lakeview Dr, Chicago, IL 60657'),

    (6, 'Jessica', 'Martinez', '3125550106',
     'jessica.martinez@example.com', '421 Lincoln Ave, Chicago, IL 60610'),

    (7, 'Daniel', 'Anderson', '3125550107',
     'daniel.anderson@example.com', '668 Cedar Ln, Chicago, IL 60622'),

    (8, 'Ashley', 'Taylor', '3125550108',
     'ashley.taylor@example.com', '315 Park Blvd, Chicago, IL 60647'),

    (9, 'Christopher', 'Thomas', '3125550109',
     'christopher.thomas@example.com', '854 Willow Way, Chicago, IL 60640'),

    (10, 'Amanda', 'Garcia', '3125550110',
     'amanda.garcia@example.com', '529 River Rd, Chicago, IL 60613');
     

INSERT INTO dogs
    (dog_id, client_id, name, breed, size, date_of_birth,
     medical_notes, behavior_notes)
VALUES
    (100, 1, 'Cloud', 'Samoyed', 'Large', '2020-03-09',
     NULL, 'Doesn''t accept fruits as treats.'),

    (101, 2, 'Bella', 'Golden Retriever', 'Large', '2021-06-15',
     'Seasonal allergies.', 'Friendly with other dogs.'),

    (102, 2, 'Milo', 'Beagle', 'Medium', '2022-01-20',
     NULL, 'Can be distracted by squirrels.'),

    (103, 3, 'Luna', 'Poodle', 'Medium', '2019-11-03',
     'Sensitive skin.', NULL),

    (104, 4, 'Charlie', 'French Bulldog', 'Small', '2023-04-12',
     'Avoid strenuous exercise in hot weather.',
     'Can be nervous around loud noises.'),

    (105, 5, 'Max', 'German Shepherd', 'Large', '2020-08-25',
     NULL, 'Needs a firm grip on the leash.'),

    (106, 6, 'Daisy', 'Corgi', 'Small', '2022-09-17',
     NULL, 'Enjoys short walks and praise.'),

    (107, 7, 'Rocky', 'Boxer', 'Large', '2021-02-08',
     'Mild knee sensitivity.', 'Very energetic; pulls on the leash.'),

    (108, 8, 'Coco', 'Shih Tzu', 'Small', '2023-07-30',
     NULL, NULL),

    (109, 10, 'Teddy', 'Australian Shepherd', 'Medium', '2020-12-05',
     'No known medical concerns.',
     'Herding instinct; may chase moving objects.');


INSERT INTO walkers
    (walker_id, first_name, last_name, phone, email)
VALUES
    (1000, 'Anna', 'Santos', '5452014376', 'asantos@gmail.com'),

    (1001, 'James', 'Miller', '3125550201', 'james.miller@example.com'),

    (1002, 'Olivia', 'Wilson', '3125550202', 'olivia.wilson@example.com'),

    (1003, 'Ethan', 'Moore', '3125550203', 'ethan.moore@example.com'),

    (1004, 'Sophia', 'Taylor', '3125550204', 'sophia.taylor@example.com'),

    (1005, 'Liam', 'Anderson', '3125550205', 'liam.anderson@example.com'),

    (1006, 'Isabella', 'Thomas', '3125550206', 'isabella.thomas@example.com'),

    (1007, 'Noah', 'Jackson', '3125550207', 'noah.jackson@example.com'),

    (1008, 'Mia', 'White', '3125550208', 'mia.white@example.com'),

    (1009, 'Lucas', 'Harris', '3125550209', 'lucas.harris@example.com');


INSERT INTO walk_sessions
    (session_id, walker_id, walk_date, start_time, duration_min)
VALUES
    (300, 1000, '2025-05-12', '09:00:00', 30),
    (301, 1001, '2025-05-12', '10:00:00', 45),
    (302, 1002, '2025-05-13', '08:30:00', 30),
    (303, 1003, '2025-05-13', '11:00:00', 60),
    (304, 1004, '2025-05-14', '09:30:00', 45),
    (305, 1005, '2025-05-14', '13:00:00', 30),
    (306, 1006, '2025-05-15', '08:00:00', 60),
    (307, 1007, '2025-05-15', '10:30:00', 45),
    (308, 1008, '2025-05-16', '14:00:00', 30),
    (309, 1009, '2025-05-16', '15:00:00', 60);


INSERT INTO session_dogs (session_id, dog_id, price, is_paid)
VALUES
    (300, 100, 27.00, TRUE),
    (300, 101, 30.00, TRUE),
    (301, 102, 25.00, FALSE),
    (302, 103, 27.00, TRUE),
    (303, 104, 22.00, FALSE),
    (304, 105, 30.00, TRUE),
    (305, 106, 25.00, TRUE),
    (306, 107, 32.00, FALSE),
    (307, 108, 22.00, TRUE),
    (308, 109, 28.00, FALSE);

SELECT * FROM clients;
SELECT * FROM dogs;
SELECT * FROM walkers;
SELECT * FROM walk_sessions;
SELECT * FROM session_dogs;