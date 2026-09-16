-- =============================================
-- Bank Management System - Database Setup
-- =============================================
-- Run this script to create/recreate the database
-- and all required tables.
--
-- Usage:
--   mysql -u root -p < setup_database.sql
-- =============================================

CREATE DATABASE IF NOT EXISTS bankmanagementsystem;
USE bankmanagementsystem;

-- Table: signup (Page 1 - Personal Details)
CREATE TABLE IF NOT EXISTS signup (
    formno VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    fname VARCHAR(100),
    dob VARCHAR(50),
    gender VARCHAR(10),
    email VARCHAR(100),
    marital VARCHAR(20),
    address VARCHAR(200),
    city VARCHAR(50),
    pincode VARCHAR(20),
    state VARCHAR(50)
);

-- Table: signup2 (Page 2 - Additional Details)
CREATE TABLE IF NOT EXISTS signup2 (
    formno VARCHAR(20) PRIMARY KEY,
    religion VARCHAR(50),
    category VARCHAR(50),
    income VARCHAR(50),
    education VARCHAR(50),
    occupation VARCHAR(50),
    pan VARCHAR(50),
    aadhar VARCHAR(50),
    scitizen VARCHAR(10),
    eaccount VARCHAR(10)
);

-- Table: signup3 (Page 3 - Account Details)
CREATE TABLE IF NOT EXISTS signup3 (
    formno VARCHAR(20),
    atype VARCHAR(50),
    cardno VARCHAR(50),
    pin VARCHAR(10),
    facility VARCHAR(200)
);

-- Table: login (Login credentials)
CREATE TABLE IF NOT EXISTS login (
    formno VARCHAR(20),
    cardnumber VARCHAR(50),
    pin VARCHAR(10)
);

-- Table: bank (Transaction records)
CREATE TABLE IF NOT EXISTS bank (
    pin VARCHAR(10),
    date VARCHAR(100),
    type VARCHAR(20),
    amount VARCHAR(20)
);