CREATE DATABASE veterinary;
CREATE TABLE owners (
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50), 
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(50)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10), 
    color VARCHAR(50),
    ownerid INT
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10, 2),
    payment date DATE,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email) VALUES
(1, 'Juan', 'Dela Cruz', '123 Main St', '09171234567', 'juan@email.com'),       
(2, 'Maria', 'Santos', '456 Elm St', '09182345678', 'maria@email.com'),
(3, 'Ana', 'Reyes', '789 Oak St', '09193456789', 'ana@email.com'),
(4, 'Pedro', 'Garcia', '321 Pine St', '09194567890', 'pedro@email.com'),
(5, 'Jose', 'Torres', '654 Cedar St', '09195678901', 'jose@email.com'),
(6, 'Liza', 'Lopez', '987 Birch St', '09196789012', 'liza@email.com'),
(7, 'Carlos', 'Gomez', '111 Maple St', '09197890123', 'carlos@email.com'),
(8, 'Maria', 'Ramos', '222 Aspen St', '09198901234', 'maria.ramos@email.com'),
(9, 'Miguel', 'Aquino', '333 Walnut St', '09199012345', 'miguel@email.com'),
(10, 'Carmen', 'Flores', '444 Cherry St', '09190123456', 'carmen@email.com');

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Simba', 'Cat', 'Siamese', '2020-01-01', 'Male', 'Cream', 1),
(2, 'Whiskers', 'Cat', 'Persian', '2019-05-12', 'Female', 'White', 2),
(3, 'Max', 'Dog', 'Labrador', '2018-03-08', 'Male', 'Black', 3),
(4, 'Bella', 'Dog', 'Beagle', '2017-07-11', 'Female', 'Brown', 4),
(5, 'Charlie', 'Dog', 'Poodle', '2016-11-23', 'Male', 'White', 5),
(6, 'Luna', 'Cat', 'Bengal', '2021-02-13', 'Female', 'Spotted', 6),
(7, 'Rocky', 'Dog', 'Bulldog', '2020-09-09', 'Male', 'Gray', 7),
(8, 'Daisy', 'Cat', 'Maine Coon', '2019-04-27', 'Female', 'Tabby', 8),
(9, 'Buddy', 'Dog', 'Golden Retriever', '2018-12-15', 'Male', 'Golden', 9),
(10, 'Milo', 'Cat', 'Sphynx', '2021-06-21', 'Male', 'Pink', 10);

INSERT INTO appointments (appointid, animalid, appointdate, reason) VALUES 
(1, 1, '2023-01-02', 'Checkup'), 
(2, 2, '2023-01-05', 'Vaccination'), 
(3, 3, '2023-02-10', 'Injury'), 
(4, 4, '2023-02-15', 'Dental cleaning'), 
(5, 5, '2023-03-11', 'Grooming'), 
(6, 6, '2023-03-12', 'Parasite check'), 
(7, 7, '2023-04-14', 'Vaccination'), 
(8, 8, '2023-04-18', 'Surgery'), 
(9, 9, '2023-05-03', 'Allergy'), 
(10, 10, '2023-05-21', 'Eye check');
