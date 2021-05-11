### SQL-Exercises-With-Solutions
This repository will be useful to get started and know **SQL** better. Practice These Exercises.

![](https://github.com/aravind-alpha/SQL-Exercises-With-Solutions/blob/master/675172-data_database_sql_query-128.png)

#### SQL - Structured Query Language

Used to retrieve Data from Databases.SQL is widely used nowadays because everything is **DATA**

#### First Learn the Architectures,So that it will be easy to understand how it works internally:

- Understand [Database Architecture](https://www.w3schools.in/dbms/database-architecture/)
- Learn [SQL-Server Architecture](https://www.guru99.com/sql-server-architecture.html)
- Then, finally look at the [Log Architecture](https://www.sqlshack.com/sql-server-transaction-log-architecture/)

#### SQL is classified into 4 types:

- **DDL - Data Defenition Language** : DDL is abbreviation of Data Definition Language. It is used to create and modify the structure of database objects in database. Examples: **CREATE, ALTER, DROP** statements
- **DML - Data Manipulation Language** : DML is abbreviation of Data Manipulation Language. It is used to retrieve, store, modify, delete, insert and update data in database. Examples: **SELECT, UPDATE, INSERT** statements
- **DCL - Data Control Language** : DCL is abbreviation of Data Control Language. It is used to create roles, permissions, and referential integrity as well it is used     to control access to database by securing it. Examples: **GRANT, REVOKE** statements
- **TCL - Transaction Control Language** : TCL is abbreviation of Transactional Control Language. It is used to manage different transactions occurring within a database. Examples: **COMMIT, ROLLBACK** statements

#### Know these Concepts
	
##### Database:
- A database is a collection of information that is organized so that it can be easily accessed, managed and updated.
- Data is organized into rows, columns and tables, and it is indexed to make it easier to find relevant information. 
- Data gets updated, expanded and deleted as new information is added. 
- Databases process workloads to create and update themselves, querying the data they contain and running applications against it.

##### Datamart: 
- A data mart is a structure / access pattern specific to data warehouse environments, used to retrieve client-facing data. 
- The data mart is a subset of the data warehouse and is usually oriented to a specific business line or team.

##### Data Warehouse / Enterprise Data Warehouse:
- A large store of data accumulated from a wide range of sources within a company and used to guide management decisions.
	
#### Before writing a Querry,Follow these steps

-	Analyse the Database and its **Available tables**
-	Select the **Tables needed** to write our querry
-	Identify the **JOIN Condition** and **JOIN type** between the tables
-	Find the **Heirarchy** of the table Order
-	Define the **Condition** Statement (eg: WHERE empid = 2)
-	Select the **Columns from Different Tables**
-	Define **Aggregation** if needed
-	**Data Transformation** 
-	Identify **ORDER BY** if needed

#### Tutorial: 
SQL Tutuorial can be found [Here](https://www.w3schools.com/sql/)

#### Know the Data types and different Functions used in SQL:
	
- **Data Types:** Follow this [Link](https://www.w3schools.com/sql/sql_datatypes.asp)
- **Functions:** Follow this [Link](https://www.w3schools.com/sql/sql_ref_sqlserver.asp)

##### Let's start Working on Exercises:

#### Requirements:
Install MS-SQL Server to work on Exercises. To install, Follow this [video](https://www.youtube.com/watch?v=vng0P8Gfx2g), he explains clearly.

After Installation, You need Databases to Practice **SQL**

##### Note: Following Databases are used in these Exercises. You can Download it or create your own Databases and work on it.

- Download [Northwind DB](https://www.microsoft.com/en-in/download/details.aspx?id=23654) 
- Download [Adventure Works DB](https://www.microsoft.com/en-us/download/details.aspx?id=49502)

- Create **HR DB** on your own 
- Creating HR Table and fill the Values to the Table. Queries Available [Here](https://github.com/i-m-aravind/SQL-Exercises-With-Solutions/tree/master/HR-DB)

#### Downloading the Exercises
To get started, you can start by either downloading a zip file of these assignments by clicking on the Clone or download button. If you have git installed on your system, you can clone this repository using :

> clone https://github.com/aravind-alpha/SQL-Exercises-With-Solutions

Each folder contains two files:
- A PNG file `.png` contains Questions for all the Exercises Seperately.
- A SQL file `.sql` contains solutions done by me. You can correct me if i am wrong and modify it as needed.

#### Further Learning:
After Completing these Exercises Try to solve SQL Exercises on

- Mode Analytics [Here.](https://mode.com/)

- Hacker-Rank [Here.](https://www.hackerrank.com/domains/sql)
