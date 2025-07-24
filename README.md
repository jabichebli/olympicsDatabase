# Olympic Database

Created by **Jason Abi Chebli**  
© 2025 Jason Abi Chebli. All rights reserved.

## Description
<div style="text-align: justify;">This project focused on designing and implementing a comprehensive database system for PAT (Paris Arrow Transit), aimed at managing transportation logistics for official events like the Olympics. The tasks involved both relational and non-relational database management to track details related to vehicles, drivers, officials, and trips, while ensuring data integrity and supporting future scalability. I applied advanced SQL techniques, PL/SQL, and MongoDB to create, modify, and populate the database, integrating both transactional and non-relational data handling mechanisms to ensure smooth operation across various use cases.</div>

## Client Brief
[Brief](https://github.com/jabichebli/olympicsDatabase/blob/main/Brief.pdf)  


## Database Creation and Population
<div style="text-align: justify;">I created and populated the existing PAT database to address missing elements in the original schema. I ensured the structure aligned with the provided data model, applying my knowledge of database design and SQL. The task involved hand-coding the necessary components without using automated tools. After completing the updates, I ran a script to test and verify the database functionality, ensuring the tables were correctly defined and the system was ready for further development.</div>

[Database Structure Implementation](https://github.com/jabichebli/olympicsDatabase/blob/main/T1-pat-schema.sql)

## Insert, Update, Delete (DML) and Transaction Management
<div style="text-align: justify;">I created and populated the database with test data to thoroughly evaluate the schema. I ensured the data met the specified requirements, such as having multiple entries that tested relationships and constraints across different entities. The data insertion was treated as a single transaction, and I made sure all values adhered to logical rules, such as ensuring dates and relationships were consistent. After completing the data insertion, I verified the integrity of the database and ensured that all insertions were successful and the system was functioning as intended.</div>

[Data Population and Integrity Tests](https://github.com/jabichebli/olympicsDatabase/blob/main/T2-pat-insert.sql)

## Sequence and Data Handling in SQL
<div style="text-align: justify;">I implemented Oracle sequences for generating primary key values for specific tables, following the task's requirements. I created the sequences to start at 100 and increment by 10, and I ensured that any existing sequences were dropped before creating the new ones. I also recorded an official and a vehicle in the database, adding their details along with required supplementary information. I then inserted two trips for the official, ensuring that all data, including trip details and driver assignments, was correctly entered as part of a single transaction. Additionally, I managed updates to the database by handling a real-time scenario where a driver was involved in an accident, which required me to cancel all subsequent trips for that driver and update the relevant records accordingly. The task reinforced my skills in using SQL for sequence management, data insertion, and updates, while ensuring transactional integrity.</div>

[Managing Sequences and Transactions](https://github.com/jabichebli/olympicsDatabase/blob/main/T3-pat-dml.sql)

## Advanced Database Modifications
<div style="text-align: justify;">I modified the database to accommodate new business rules for PAT. I introduced a system to store each official's role, ensuring that specific roles like Chef de Mission were assigned appropriately. I also redesigned the database to support complaints about drivers’ behavior, allowing officials to submit complaints about various issues like late arrivals or rude behavior. The structure I created ensures the system can store complaint details such as the category, date, time, and its status, while also allowing for future categories to be added. After making these changes, I verified the updates to ensure everything was correctly implemented.</div>

[Business Rule Implementations](https://github.com/jabichebli/olympicsDatabase/blob/main/T4-pat-mods.sql)

## Trigger and Stored Procedures Implementation
<div style="text-align: justify;">I implemented a trigger to automatically suspend drivers when their accumulated demerit points reach 4 or above. This trigger checks if a complaint has been flagged as valid and updates the driver's suspension status accordingly. Additionally, I created a stored procedure to handle the insertion of trip data. The procedure ensures that the provided trip information is validated against business rules before insertion, preventing invalid data from being entered. If any input is incorrect, a meaningful error message is returned to indicate the issue. The procedure was designed to handle a single trip insertion at a time, using sequences for primary key generation as required.</div>

[PL/SQL Triggers and Procedures](https://github.com/jabichebli/olympicsDatabase/blob/main/T5-pat-plsql.sql)

## Non-Relational Database Integration
<div style="text-align: justify;">I worked with both SQL and MongoDB to manage data in a non-relational context. First, I generated a collection of JSON documents in SQL to represent drivers and their completed trips, ensuring that only drivers with at least one completed trip were included. Then, I moved to MongoDB, where I created a collection to store the driver-trip data, ensuring it could be easily queried and updated. I used MongoDB commands to list drivers who had completed trips to specific locations, and also addressed a data correction by adding a missing trip for a driver and updating their status to suspended. The task gave me practical experience with both relational and non-relational database management.</div>

[SQL Data to JSON Collection](https://github.com/jabichebli/olympicsDatabase/blob/main/T6-pat-json.sql)
[MongoDB Driver-Trip Integration](https://github.com/jabichebli/olympicsDatabase/blob/main/T6-pat-mongo.mongodb.js)

## Feedback
If you have any feedback, suggestions, or questions about the database developed, feel free to [contact me](https://jabichebli.github.io/jabichebli/contact/). Your input is valuable and will help improve my understanding of database design and development.
