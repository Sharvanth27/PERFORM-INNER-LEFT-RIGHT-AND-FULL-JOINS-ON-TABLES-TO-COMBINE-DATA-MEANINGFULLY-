# PERFORM-INNER-LEFT-RIGHT-AND-FULL-JOINS-ON-TABLES-TO-COMBINE-DATA-MEANINGFULLY-

"COMPANY": CODTECH IT SOLUTIONS

"NAME": SHARVANTH BIJJARAPU

"INTERN ID": CT04DL1163 

"DOMAIN": SQL

"DURATION": 4 WEEKS

"MENTOR": NEELA SANTOSH

Task Description

The objective of this task is to demonstrate how different types of SQL JOIN operations—INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN—combine data from two simple tables: students and scores.

All queries were executed using an online MySQL editor: www.onlinecompiler.com.


---

Steps and Files

File: queries.sql

This SQL file performs the following:

1. Table Creation

Creates two tables:

students: Contains student ID, name, and class.

scores: Contains student ID and exam score.

2. Sample Data Insertion

Inserts minimal example data into both tables to illustrate JOIN behavior.

3. JOIN Operations Demonstrated

INNER JOIN:
Returns only the records where student IDs match in both students and scores tables.
Use Case: View students who have scores recorded.

<img width="353" alt="Image" src="https://github.com/user-attachments/assets/cf6c3d3f-2078-4633-902b-3f90f58e9e32" />

LEFT JOIN:
Returns all records from the students table, and the matched records from scores. Unmatched scores appear as NULL.
Use Case: View all students, including those who haven't received a score yet.

<img width="356" alt="Image" src="https://github.com/user-attachments/assets/883fc597-eb8e-4fa0-a02b-d0d40654ea40" />

RIGHT JOIN:
Returns all records from the scores table, and the matched records from students. Unmatched student info appears as NULL.
Use Case: View all scores, including those without student details.

<img width="354" alt="Image" src="https://github.com/user-attachments/assets/aef8dfb2-37d6-416e-96a1-ce22dce6b8df" />

FULL OUTER JOIN:
Since MySQL does not support FULL OUTER JOIN directly, it is simulated using a UNION of the LEFT and RIGHT JOIN queries.
Use Case: View a comprehensive list of all students and all scores, matched or unmatched.

<img width="359" alt="Image" src="https://github.com/user-attachments/assets/81ef3e52-465f-43a7-bd24-0521cb04b1d9" />














