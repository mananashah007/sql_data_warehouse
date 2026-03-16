-- Database creation script for the project: sql_datawarehouse_project

-- This command removes the database if it already exists.
-- It is usually commented out to prevent accidental deletion.
-- Uncomment only when you want to recreate the database from scratch.
-- DROP DATABASE IF EXISTS sql_datawarehouse_project;


-- Create a new database named sql_datawarehouse_project
CREATE DATABASE sql_datawarehouse_project
    WITH
    
    -- Specifies the owner (role/user) of the database.
    -- The owner has full privileges on the database.
    OWNER = postgres
    
    -- Sets the character encoding for the database.
    -- UTF8 supports most international characters and is recommended.
    ENCODING = 'UTF8'
    
    -- Defines the collation order (sorting rules for strings).
    -- 'C' means simple byte-wise sorting which is very fast.
    LC_COLLATE = 'C'
    
    -- Defines character classification rules
    -- (how upper/lowercase comparisons and character types work).
    LC_CTYPE = 'C'
    
    -- Specifies which provider handles locale settings.
    -- 'libc' means it uses the operating system's locale implementation.
    LOCALE_PROVIDER = 'libc'
    
    -- Specifies the tablespace where database objects will be stored.
    -- pg_default is the default storage location.
    TABLESPACE = pg_default
    
    -- Limits the number of concurrent connections allowed to the database.
    -- -1 means no limit.
    CONNECTION LIMIT = -1
    
    -- Indicates whether this database can be used as a template
    -- for creating other databases.
    -- False means it is a regular database.
    IS_TEMPLATE = False;
