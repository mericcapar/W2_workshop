DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;


CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(45) NOT NULL,
    address VARCHAR(70) NOT NULL
);


CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    name VARCHAR(45) NOT NULL,
    breed VARCHAR(45) NOT NULL,
    size VARCHAR(45) NOT NULL,
    date_of_birth DATE NOT NULL,
    medical_notes VARCHAR(100),
    behavior_notes VARCHAR(100),

    CONSTRAINT fk_dogs_clients
        FOREIGN KEY (client_id)
        REFERENCES clients(client_id)
);


CREATE TABLE walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(45) NOT NULL
);


CREATE TABLE walk_sessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    walker_id INT,
    walk_date DATE NOT NULL,
    start_time TIME NOT NULL,
    duration_min INT NOT NULL,

    CONSTRAINT fk_walk_sessions_walkers
        FOREIGN KEY (walker_id)
        REFERENCES walkers(walker_id)
);


CREATE TABLE session_dogs (
    session_id INT,
    dog_id INT,
    price DECIMAL(10,2) NOT NULL,
    is_paid BOOLEAN NOT NULL,

    PRIMARY KEY (session_id, dog_id),

    CONSTRAINT fk_session_dogs_sessions
        FOREIGN KEY (session_id)
        REFERENCES walk_sessions(session_id),

    CONSTRAINT fk_session_dogs_dogs
        FOREIGN KEY (dog_id)
        REFERENCES dogs(dog_id)
);
