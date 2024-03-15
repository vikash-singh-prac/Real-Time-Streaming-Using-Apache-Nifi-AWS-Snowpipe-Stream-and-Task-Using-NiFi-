-- Create datbase for tables
create database if not exists scd_demo;

-- Use the created database
use database scd_demo;

-- Create schema to create tables
create schema if not exists scd2;
use schema scd2;


-- This table is used to store the all the updates being made to be customer table with the update timestamp 
create or replace table customer (
     customer_id number,
     first_name varchar,
     last_name varchar,
     email varchar,
     street varchar,
     city varchar,
     state varchar,
     country varchar,
     update_timestamp timestamp_ntz default current_timestamp());

-- This table is a SCD type-2. It will have all the changes done in the history of customer,with the latest one being identified by the 'is_current' flag
create or replace table customer_history (
     customer_id number,
     first_name varchar,
     last_name varchar,
     email varchar,
     street varchar,
     city varchar,
     state varchar,
     country varchar,
     start_time timestamp_ntz default current_timestamp(),
     end_time timestamp_ntz default current_timestamp(),
     is_current boolean
     );

-- This is the table will be updated in case of any new records are uploaded in the customer table, this is the staging table
create or replace table customer_raw (
     customer_id number,
     first_name varchar,
     last_name varchar,
     email varchar,
     street varchar,
     city varchar,
     state varchar,
     country varchar);

-- Check if the tables are created 
 show tables;

-- Create stream on the customer table
 create or replace stream customer_changes on table customer;