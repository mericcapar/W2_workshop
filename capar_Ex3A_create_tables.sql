DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE clients(
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(250) NOT NULL
);
CREATE TABLE walkers(
    walker_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL
);
CREATE TABLE dogs(
    dog_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age TINYINT,
    size VARCHAR(50),
    notes VARCHAR(250),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);
CREATE TABLE walks (
  walk_id      INT PRIMARY KEY AUTO_INCREMENT,
  walker_id    INT NOT NULL,
  walk_date    DATE NOT NULL,
  start_time   TIME,
  duration_min INT,
  price        DECIMAL(6,2),
  is_paid      BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (walker_id) REFERENCES walkers(walker_id)
);

CREATE TABLE walk_dogs(
    walk_dog_id INT PRIMARY KEY AUTO_INCREMENT,
    walk_id INT NOT NULL,
    dog_id INT NOT NULL,
    FOREIGN KEY (walk_id) REFERENCES walks(walk_id),
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id)
);




