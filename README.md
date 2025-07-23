# Library Management System (LMS)

A full-stack Java web application for managing a library, built from scratch by **Aman Kumar**. This project demonstrates core Java EE, JDBC, JSP, and MySQL skills, and is designed for interview and portfolio purposes.

## Features
- Add, remove, and search for books
- User/Admin login
- View all books
- Simple, clean JSP-based UI
- Secure database access with JDBC

## Technologies Used
- Java (Servlets, JSP)
- MySQL
- JDBC
- Apache Maven
- Tomcat (via Maven plugin)

## Setup Instructions
1. **Clone the repository:**
   ```
   git clone https://github.com/kumaramansah/Library_Management_System.git
   ```
2. **Import into your IDE** (Eclipse/IntelliJ) as a Maven project.
3. **Set up MySQL database:**
   - Create a database named `lms_project_db`.
   - Run this SQL to create the required table:
     ```sql
     CREATE TABLE librarymanagementsystem (
         bookId INT PRIMARY KEY,
         bookName VARCHAR(255),
         bookAuthor VARCHAR(255),
         bookQuantity INT
     );
     ```
4. **Configure database credentials** in the Java files if needed (default: user `root`, password `root`).
5. **Run the project:**
   ```
   mvn clean tomcat7:run
   ```
6. **Access the app:**
   - Open [http://localhost:8080/](http://localhost:8080/) in your browser.

## Usage
- Login as admin (default password: 1234, username: aman)
- Add, remove, or search for books
- View all books in the library

## Author
**Aman Kumar**  
[GitHub](https://github.com/kumaramansah)  
Email: your.email@example.com

---
This project is 100% original and built by Aman Kumar for learning, demonstration, and interview purposes. All code, design, and documentation are my own work. 