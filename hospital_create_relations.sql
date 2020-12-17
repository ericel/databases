/*
 Creates database hospital if it doesn't exist
*/
CREATE schema IF NOT exists Hospital;
USE Hospital;

/*
 Creates doctor Table if it doesn't exist
*/
CREATE TABLE IF NOT EXISTS Doctor(
 #doctor_id INT NOT NULL UNIQUE AUTO_INCREMENT,
 doctor_id VARCHAR(20) NOT NULL UNIQUE,
 #first_name VARCHAR(225) NOT NULL,
 name VARCHAR(225) NOT NULL,
 phone VARCHAR(20) NOT NULL,
 speciality_number VARCHAR(50) NOT NULL,
 supervisor VARCHAR(50) Null,
 PRIMARY KEY (doctor_id)
);

/*
 Creates speciality Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Speciality (
  speciality_number VARCHAR(50) NOT NULL UNIQUE,
  speciality_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (speciality_number)
);


/*
 Creates patient Table if it doesn't exist
*/
CREATE TABLE IF NOT EXISTS Patient (
 #patient_id INT NOT NULL UNIQUE AUTO_INCREMENT,
 patient_id VARCHAR(20) NOT NULL UNIQUE,
 #first_name VARCHAR(225) NOT NULL,
 name VARCHAR(225) NOT NULL,
 phone VARCHAR(20) NOT NULL,
 email VARCHAR(20) NULL,
 address Varchar(255) NOT NULL,
 date_added  date NOT NULL,
 doctor_id VARCHAR(20) NOT NULL,
 PRIMARY KEY (patient_id),
 FOREIGN KEY (doctor_id)
 REFERENCES Doctor(doctor_id)
);


/*
 Creates Allergy Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Allergy (
  allergy_id VARCHAR(20) NOT NULL,
  allergy_name VARCHAR(225) NOT NULL,
  PRIMARY KEY (allergy_id)
);


/*
 Creates Patient_Allergy Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Patient_Allergy (
  allergy_id VARCHAR(20) NOT NULL,
  patient_id VARCHAR(20) NOT NULL,
  FOREIGN KEY (allergy_id)
  REFERENCES Allergy(allergy_id),
  FOREIGN KEY (patient_id)
  REFERENCES Patient(patient_id)
);






/*
 Creates appointment Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Appointment (
  #appointment_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  appointment_id VARCHAR(20) NOT NULL UNIQUE,
  appointment_date date NOT NULL,
  doctor_id VARCHAR(20) NOT NULL,
  patient_id VARCHAR(20) NOT NULL,
  blood_pressure INT NOT NULL,
  weight INT NOT NULL,
  treatement_notes VARCHAR(225) NOT NULL,
  PRIMARY KEY (appointment_id),
  FOREIGN KEY (doctor_id)
  REFERENCES Doctor(doctor_id),
  FOREIGN KEY (patient_id)
  REFERENCES Patient(patient_id)
);



/*
 Createsmedicine Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Medicine (
  #medicine_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  medicine_id VARCHAR(20) NOT NULL UNIQUE,
  medicine_name VARCHAR(225) NOT NULL,
  PRIMARY KEY (medicine_id)
);


/*
 Creates patient_medicine Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Patient_Medicine (
  appointment_id VARCHAR(20) NOT NULL,
  medicine_id VARCHAR(20) NOT NULL,
  FOREIGN KEY (appointment_id)
  REFERENCES Appointment(appointment_id),
  FOREIGN KEY (medicine_id)
  REFERENCES Medicine(medicine_id)
);


