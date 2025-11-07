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
    ownerid INT,
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
    phone VARCHAR(20)
    email VARCHAR(100),
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
(2, 'Maria', 'Santos', '456 Elm St', '09182345678', 'maria@email.com');
(3, 'Ana', 'Reyes', '789 Oak St', '09193456789', 'ana@email.com');
(4, 'Pedro', 'Garcia', '321 Pine St', '09194567890', 'pedro@email.com');        
(5, 'Jose', 'Torres', '654 Cedar St', '09195678901', 'jose@email.com');
(6, 'Liza', 'Lopez', '987 Birch St', '09196789012', 'liza@email.com');
(7, 'Carlos', 'Gomez', '111 Maple St', '09197890123', 'carlos@email.com');      
(8, 'Maria', 'Ramos', '222 Aspen St', '09198901234', 'maria.ramos@email.com');  
(9, 'Miguel', 'Aquino', '333 Walnut St', '09199012345', 'miguel@email.com');    
(10, 'Carmen', 'Flores', '444 Cherry St', '09190123456', 'carmen@email.com');   
