CREATE DATABASE IF NOT EXISTS prism_db;
USE prism_db;

CREATE TABLE IF NOT EXISTS projects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  contractor VARCHAR(255),
  location VARCHAR(255),
  budget DECIMAL(10,2),
  status VARCHAR(50) DEFAULT 'Planning',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS reports (
  id INT AUTO_INCREMENT PRIMARY KEY,
  citizen VARCHAR(255),
  type VARCHAR(100),
  description TEXT,
  location VARCHAR(255),
  status ENUM('pending','solved','dismissed') DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  role ENUM('City Admin','Contractor','Citizen User'),
  name VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  password_hash VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
