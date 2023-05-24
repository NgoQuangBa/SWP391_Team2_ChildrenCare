
create database SWP391
Go
use SWP391
GO
CREATE TABLE Role (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT
);
CREATE TABLE Users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50),
    role_id INT,
	FOREIGN KEY (role_id) REFERENCES Role(id)
);
CREATE TABLE Children (
    child_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    note TEXT
);
CREATE TABLE Parents (
    parent_id INT PRIMARY KEY,
	username VARCHAR(50),
	FOREIGN KEY (username) REFERENCES Users(username),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    address TEXT
);
CREATE TABLE Activities (
    activity_id INT PRIMARY KEY,
    activity_name VARCHAR(50),
    description TEXT,
    start_time TIME,
    end_time TIME,
    location VARCHAR(100),
    instructor_name VARCHAR(50),
    day_of_week VARCHAR(10)
);
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    child_id INT,
    parent_id INT,
    activity_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (child_id) REFERENCES Children(child_id),
    FOREIGN KEY (parent_id) REFERENCES Parents(parent_id),
    FOREIGN KEY (activity_id) REFERENCES Activities(activity_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    enrollment_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    note TEXT,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);
CREATE TABLE MedicalRecords (
    medical_record_id INT PRIMARY KEY,
    child_id INT,
    doctor_name VARCHAR(50),
    visit_date DATE,
    diagnosis TEXT,
    prescription TEXT,
    note TEXT,
    FOREIGN KEY (child_id) REFERENCES Children(child_id)
);
CREATE TABLE Vaccinations (
    vaccination_id INT PRIMARY KEY,
    child_id INT,
    vaccine_name VARCHAR(50),
    date_administered DATE,
    note TEXT,
    FOREIGN KEY (child_id) REFERENCES Children(child_id)
);
CREATE TABLE MealPlans (
    meal_plan_id INT PRIMARY KEY,
    child_id INT,
    breakfast VARCHAR(50),
    lunch VARCHAR(50),
    dinner VARCHAR(50),
    snack VARCHAR(50),
    note TEXT,
    FOREIGN KEY (child_id) REFERENCES Children(child_id)
);
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    child_id INT,
    name VARCHAR(50),
    relationship VARCHAR(50),
    phone_number VARCHAR(20),
    note TEXT,
    FOREIGN KEY (child_id) REFERENCES Children(child_id)
);
CREATE TABLE Service (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  age_range VARCHAR(50),
  price DECIMAL(10,2)
);
CREATE TABLE Country (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code CHAR(2) NOT NULL UNIQUE
);
CREATE TABLE Cities (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  country_id INT,
  name VARCHAR(255) NOT NULL,
  FOREIGN KEY (country_id) REFERENCES Country(id)
);
CREATE TABLE State (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  country_id INT NOT NULL,
  city_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  FOREIGN KEY (country_id) REFERENCES Country(id),
  FOREIGN KEY (city_id) REFERENCES Cities(id)
);
CREATE TABLE Address (
  id INT NOT NULL IDENTITY(1,1),
  parent_id INT,
  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  zip_code VARCHAR(10) NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parents(parent_id),
  PRIMARY KEY (id,parent_id)
);
CREATE TABLE Manager (
  id INT PRIMARY KEY,
  username VARCHAR(50),
  FOREIGN KEY (username) REFERENCES Users(username),
  name VARCHAR(50),
  email VARCHAR(100),
  phone VARCHAR(20),
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES Role(id)
);
CREATE TABLE Position (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);
CREATE TABLE Staff (
  id INT PRIMARY KEY,  
  username VARCHAR(50),
  FOREIGN KEY (username) REFERENCES Users(username),
  Name VARCHAR(50),
  age INT,
  position_id INT,
  FOREIGN KEY (position_id) REFERENCES Position(id),
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES Role(id)
);
CREATE TABLE Admin (
  id INT PRIMARY KEY,
  username VARCHAR(50),
  FOREIGN KEY (username) REFERENCES Users(username),
  name VARCHAR(50),
  email VARCHAR(100),
  phone VARCHAR(20),
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES Role(id)
);
