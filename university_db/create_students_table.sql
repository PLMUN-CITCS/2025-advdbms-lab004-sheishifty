USE `UniversityDB`;

CREATE TABLE IF NOT EXISTS `Students` (
   `StudentID` INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each student
   `FirstName` VARCHAR(50) NOT NULL,   -- Student's first name
   `LastName` VARCHAR(50) NOT NULL,    -- Student's last name
   `EnrollmentDate` DATE NOT NULL,     -- Date of enrollment
   `Gender` ENUM('Male', 'Female', 'Other') NOT NULL,  -- Gender selection
   `BirthDate` DATE NOT NULL,          -- Date of birth
   `PhoneNumber` VARCHAR(15) UNIQUE,   -- Phone number must be unique
   `Address` TEXT,                     -- Student's home address
   `CreatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Auto timestamp on record creation
);

INSERT IGNORE INTO Students (FirstName, LastName, EnrollmentDate, Gender, BirthDate, PhoneNumber, Address, Email)
VALUES
('Jane', 'Doe', '2024-03-10', 'Female', '2001-08-15', '09123456789', '456 Street, City', 'janedoe@example.com'),
('John', 'Smith', '2024-02-20', 'Male', '2002-06-22', '09198765432', '123 Avenue, City', 'johnsmith@example.com');
