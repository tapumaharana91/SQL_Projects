create database cars;

-- Read Data
SELECT 
    *
FROM
    car_dekho;

-- Total Cars
SELECT 
    COUNT(*) AS Total_Cars
FROM
    car_dekho;

-- How many cars available in 2023?
SELECT 
    COUNT(*) AS Total_Cars_in_2023
FROM
    car_dekho
WHERE
    year = 2023;

-- How many cars available in 2020,2021,2022 ?
SELECT 
    COUNT(*) AS Total_Cars
FROM
    car_dekho
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year;

-- Total count of all the cars by year
SELECT 
    year, COUNT(*) AS Total_cars
FROM
    car_dekho
GROUP BY year;

-- How many diesel cars are there in 2020 ?
SELECT 
    COUNT(*) AS Diesel_Cars
FROM
    car_dekho
WHERE
    fuel = 'Diesel' AND year = 2020;

-- How many petrol cars are there in 2020 ?
SELECT 
    COUNT(*) AS Petrol_Cars
FROM
    car_dekho
WHERE
    fuel = 'Petrol' AND year = 2020;

-- Total Fuel Cars (Petrol, Diesel, CNG) by year
SELECT 
    year, fuel, COUNT(*) AS Total_cars
FROM
    car_dekho
WHERE
    fuel IN ('Petrol' , 'Diesel', 'CNG')
GROUP BY year , fuel;

-- Which year had more than 100 cars ?
SELECT 
    year, COUNT(*) AS Total_Cars
FROM
    car_dekho
GROUP BY year
HAVING Total_cars > 100;

-- Total cars between 2015 and 2023
SELECT 
    COUNT(*) AS Total_cars
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023
ORDER BY year;

-- =================================================== END ==========================================================
