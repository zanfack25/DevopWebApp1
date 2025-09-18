-- create a PostgreSQL user named postgres 
-- with the password postgres
CREATE USER postgres WITH PASSWORD 'postgres';

-- Create a new database if it doesn't exist
CREATE DATABASE IF NOT EXISTS cloud_db;

-- Connect to the newly created database
USE cloud_db;

-- Create a table for users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some initial data into the users table
INSERT INTO users (username, email) VALUES
('david roland', 'david.roland@example.com'),
('john paul', 'john.paul@example.com');
