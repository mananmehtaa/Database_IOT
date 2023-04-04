-- Create a new table called "doctors"
CREATE TABLE doctors (
  -- Create an integer primary key field called "id"
  id INT PRIMARY KEY AUTO_INCREMENT,
  -- Create a varchar field called "name" for the doctor's name (required)
  name VARCHAR(255) NOT NULL,
  -- Create a varchar field called "specialty" for the doctor's specialty (required)
  specialty VARCHAR(255) NOT NULL,
  -- Create a varchar field called "contact_info" for the doctor's contact information
  contact_info VARCHAR(255),
  -- Create a varchar field called "availability" for the doctor's availability
  availability VARCHAR(255),
  -- Create a decimal field called "consultation_fees" for the doctor's consultation fees (required)
  consultation_fees DECIMAL(10,2) NOT NULL
);
