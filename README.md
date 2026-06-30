#  NBA 2025–26 SQL Analytics Project

##  Overview

This project is an end-to-end SQL data analytics solution built using MySQL to analyze NBA 2025–26 season data. It demonstrates database design, SQL querying, reusable database objects, and business-oriented analytics. The project also includes Power BI integration for interactive dashboards.

---

##  Objectives

- Design a relational database for NBA analytics.
- Import and manage season data using MySQL.
- Analyze player and team performance using SQL.
- Create reusable Views and Stored Procedures.
- Build an interactive Power BI dashboard.
- Showcase SQL skills through real-world business questions.

---

##  Technologies Used

| Technology | Purpose |
|------------|---------|
| MySQL | Database |
| MySQL Workbench | Database Management |
| SQL | Data Analysis |
| Microsoft Excel | Data Preparation |
| Power BI | Dashboard & Visualization |
| Git & GitHub | Version Control |

---

##  Project Structure

```
NBA-2025-26-SQL-Analytics/
│
├── Data/
│   ├── Teams.csv
│   ├── Players.csv
│   ├── Games.csv
│   └── PlayerStats.csv
│
├── SQL/
│   ├── schema.sql
│   ├── analysis.sql
│   ├── views.sql
│   ├── procedures.sql
│
├── Dashboard/
│   └── NBA_Analytics_Dashboard.pbix
│
├── Images/
│   ├── ER_Diagram.png
│   ├── Dashboard.png
│
├── README.md
├── LICENSE
└── .gitignore
```

---

#  Database Schema

The database consists of four related tables:

- Teams
- Players
- Games
- PlayerStats

### Relationships

- One Team → Many Players
- One Team → Many Home Games
- One Team → Many Away Games
- One Game → Many Player Statistics
- One Player → Many Player Statistics

---

#  SQL Features Demonstrated

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Aggregate Functions
- CASE Statements
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Views
- Stored Procedures

---

#  Business Questions Solved

- Top 10 Scorers
- Team with Most Wins
- Average Points per Player
- Best Rebounders
- Assist Leaders
- Highest Field Goal Percentage
- Team Standings
- Home Performance Analysis
- Player Efficiency Analysis
- League Summary Statistics

---

#  Dashboard

The Power BI dashboard includes:

- Total Players
- Total Teams
- Total Games
- Top 10 Scorers
- Team Standings
- Average Points
- Rebounds Leaders
- Assist Leaders
- Field Goal Percentage
- Interactive Filters

---

#  How to Run

### 1. Clone Repository

```bash
git clone https://github.com/Shubhambatwe7/NBA-2025-26-SQL-Analytics.git
```

### 2. Open MySQL Workbench

Create the database using:

```
schema.sql
```

### 3. Import Data

Import all CSV files from the Data folder.

### 4. Run Analysis

Execute:

```
analysis.sql
```

### 5. Create Views

Run:

```
views.sql
```

### 6. Create Stored Procedures

Run:

```
procedures.sql
```

### 7. Open Dashboard

Open the Power BI file inside the Dashboard folder.

---

# 📸 Screenshots

### ER Diagram

(Add image here)

### Dashboard

(Add dashboard screenshot here)

---

#  Skills Demonstrated

- Database Design
- Relational Database Modeling
- Data Cleaning
- SQL Analytics
- Business Intelligence
- Power BI Reporting
- Data Visualization
- Git & GitHub

---

#  Author

Shubham Batwe
B.Tech CSE Core

GitHub: https://github.com/Shubhambatwe7

LinkedIn: www.linkedin.com/in/shubham-batwe-17632928a   

---

