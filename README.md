# SoccerPulse

# DBS211 – Final Project
## Background
Through the continual learning of database design, development, and implementation, this project will help the learner to engage with the design of the database through a topic of their own interest.
## Submissions
This project is divided into 3 parts for submission purposes and to allow the student to receive feedback throughout the process in order to have the best chance for success by the end of the project.  

The submissions will include both a Word Document and several .SQL files for creating the database itself as outlined in each milestone deliverable.  Submissions will be made through group submission within Blackboard.
Project Overview
Students will form groups of 3 and collaboratively choose a topic for which they will design and create a database with the perspective of use within a software application.  The topic should chosen with the thought that a software application, website, or mobile application will be created for the industry.  The students will then design a basic database that will be used in the software application.
The scale of the database is to be kept small (6-10 tables), and your professor will help guide you to ensure your database idea is within the expected scale.  No 2 groups can choose the same topic.
A list of sample topics are provided at the end, for those lacking idea.  

## Milestone 1 – Project Idea and Proposal (5%)
Due: End of Week 9
The first step is to choose a topic and get a basic idea of the requirements for the database.  Each group will submit a word document, with cover page, that outlines their topic.  The document should include the following sections:

### Introduction
A brief paragraph summarizing the industry surrounding the topic of choice and some background information about your involvement with the topic and why it was the choice for your group (written in 3rd person).
### Problem Statement
A one or 2 sentence paragraph describing what the need is in the industry for your software application and/or the data storage behind the software.  Why do we need a database?
### Solution
A brief paragraph describing how your team will build a database to support the proposed software application.
### Requirements
A point form list of the various requirements of the software that will require a database to support it.  Think about data storage, required reporting, and user experience features that may require data to be stored.
Examples:  
•	user login/registration
•	profile management
•	like / dislikes
•	how much money was made today?
•	Inventory levels
•	Customers, employees, products, orders
•	Shopping carts
•	Rating (rate a product up to 5 stars)
•	Favorites
Your requirements should include at least 4 items that would be considered data reports, providing information to the business or organization that would allow them to make informed business decisions.
Milestone 1 – Submission (2%)
The submission will be a single MS Word document submitted through blackboard.

## Milestone 2 – Database Design (6%)
Due: End of week 11
This milestone will include the design component of the project.  Groups will progress through the data modelling and normalization processes in order to finalize a database design.  Working within their group and in consulation with your professor, students will practice the processes learned in class to design a relational database.
ERD: Groups will create a UML Entity Relationship Diagram of their database design following the database modelling process.  This design should then be checked to be comliant 3rd normal form through the normalization techniques learned in class.
Data Dictionary: Groups will produce a data dictionary for each of their designed tables.  This data dictionary will include the same information as the ERD in table format in addition to data types, sizes, notes, and example data.  A sample table is included below.
TABLE: Employees
Column	Data Type	Size, Precision	Default	PK/FK	Required	Range	Sample Data	Notes
EmployeeID	NUMBER	4		PK	Y	1-9999	1234	Autonumbered identity
firstName	String	25			Y		“Bob”	
lastName	String	25			Y		“McKenzie”	
phone	NUMBER	11			Y	2000000000-9999999999	9055551212	Assuming North American phone number
balanceOwing	NUMBER	9,2	0.00		Y	-10000 to 10000	345.65	Monetary value
DOB	DATE				Y		1972/05/16	Date of Birth (YYYY/MM/DD)

Milestone 2 – Submission
The submission will be a single MS Word document submitted through blackboard.  This will include having to insert the ERD and data dictionary into the Word document and formatted professionally and readable.

## Milestone 3 (Final Submission) – Database Scripting and Creation (7%)
Due – End of Week 13
This milestone will be the final submission for the project and include everything previously completed, with corrections based on feedback, and also include the scripts to create the database, populate the database with data, and produce some views to act as data reports for extracting information from the database for the business purposes.
Deliverables
Groups will produce each of the following:
•	Creation Script: A single SQL file providing the scripting to create all the tables, including all constraints and features as designed in the ERD and data dictionary.

•	Sample Data Script: A single SQL file providing the scripting to insert sample data into all tables.  The amount of data should be enough to allow adequate testing of an application built upon the designed database.  Rule of Thumb: 20-30 rows per data table and their associated bridge tables, and an appropriate number of rows in lookup tables.

•	Business Reports: A single SQL file providing the scripting to create at least 4 VIEWS, that provide a report on the data that support the business, or organization, in making informed business decisions.   Each report should have a paragraph writeup – in comment form, that explains the purpose of the report and how the business will benefit from having the report.
NOTE: All scripts should execute in their entirety without error for both the scenario where no existing tables or database objects exist or where the scripts are being run on a database where the objects already exist and the idea is that they are being overwritten.  
Milestone 3 (Final) Submission
Groups will submit 4 documents
1.	Main word document (with updates and changes made to reflect feedback and changes in the design made throughout the process)
2.	Creation Script
3.	Sample Data Script
4.	Business Reports

