// Create a new table named "medical_practitioners" in the database
CREATE TABLE medical_practitioners (
// Define a primary key column named "id" that auto-increments for each new record added
id INT PRIMARY KEY AUTO_INCREMENT,
// Define a non-null column named "name" that can store up to 255 characters
name VARCHAR(255) NOT NULL,
// Define a non-null column named "specialization" that can store up to 255 characters
specialization VARCHAR(255) NOT NULL,
// Define a non-null column named "availability" that can store up to 255 characters
availability VARCHAR(255) NOT NULL,
// Define a non-null column named "location" that can store up to 255 characters
location VARCHAR(255) NOT NULL
);