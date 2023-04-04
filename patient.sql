-- Patient Table: This table would contain information about all the patients, such as their name, contact information, medical history, and preferences.
-- Create the Patient table
CREATE TABLE patients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- Unique identifier for the patient
    name VARCHAR(255) NOT NULL,
    -- Name of the patient (cannot be NULL)
    contact_info VARCHAR(255) NOT NULL,
    -- Contact information for the patient (cannot be NULL)
    medical_history TEXT,
    -- Medical history of the patient (can be NULL)
    preferences TEXT -- Preferences of the patient (can be NULL)
);

-- Booking Table: This table would contain information about all the bookings made by patients, including the doctor they booked, the time and date of the appointment, and whether it is an online or offline consultation.
-- Create the Booking table
CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- Unique identifier for the booking
    patient_id INT NOT NULL,
    -- ID of the patient who made the booking (cannot be NULL)
    doctor_name VARCHAR(255) NOT NULL,
    -- Name of the doctor booked (cannot be NULL)
    appointment_datetime DATETIME NOT NULL,
    -- Date and time of the appointment (cannot be NULL)
    consultation_type VARCHAR(20) NOT NULL,
    -- Type of consultation (online or offline) (cannot be NULL)
    FOREIGN KEY (patient_id) REFERENCES patients(id) -- Link to the patient table using foreign key constraint
);