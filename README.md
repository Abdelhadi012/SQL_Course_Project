# SQL Course Project

Hello! This is my project from finishing a SQL course. It's all about looking at job data to find good jobs and skills for data jobs.

## What's This Project?

I learned SQL (a way to talk to databases) and used it to study job postings. The data is about jobs for Data Analysts and Data Engineers. I made queries to find:

- High-paying jobs
- What skills are needed
- Which skills pay the most

## Main Files

### sql_course.session.sql
This is a practice query I did during the course. It finds the top 5 skills needed for remote Data Analyst jobs. Remote means you can work from home!

### INSERT into job_applied (.sql
This file shows how to add data to a table. It's like tracking job applications I sent. It inserts 3 example applications into a `job_applied` table.

## sql_project Folder

This folder has 5 SQL queries that answer questions about the job data:

### 1_top_paying_job.sql
Finds the top 10 highest-paying jobs for Data Engineers and Data Analysts. Only jobs that don't require a degree, and salary info is available.
## Data Engineer Jobs Dataset (Sample)

| job_id | job_title_short | job_location | job_schedule_type | salary_year_avg | job_posted_date | company_name |
|------|-----------------|-------------|------------------|----------------|----------------|-------------|
| 730717 | Data Engineer | New York, NY | Full-time | 450000 | 2023-08-14 10:47:26 | Netflix |
| 61494 | Data Engineer | Atlanta, GA | Full-time | 225000 | 2023-05-11 11:52:24 | Salesforce |
| 414973 | Data Engineer | Seattle, WA | Full-time, Part-time, and Contractor | 220000 | 2023-10-20 21:45:31 | Data206 |
| 301841 | Data Engineer | N/A | Full-time | 210000 | 2023-05-16 16:54:28 | Soni |
| 15100 | Data Engineer | Los Angeles, CA | Full-time | 210000 | 2023-12-12 08:18:18 | Motion Recruitment |


### 2_top_paying_skills_job.sql
Looks at the top 10 highest-paying Data Analyst jobs, and shows what skills those jobs need.
## Top Paying Data Analyst Jobs with Skills

| job_id | job_title | location | schedule | salary | company | skills |
|------|-----------|----------|----------|--------|---------|--------|
| 386558 | Data Analyst | United States | Full-time | 190000 | Believe | Python, Tableau, Power BI, Atlassian, Jira |
| 987523 | Data Analyst | Anywhere | Contractor | 170000 | Kelly Science, Engineering, Technology & Telecom | SQL, Python, Azure, Databricks, Power BI |
| 1367292 | Data Analyst | United States | Full-time | 169833.5 | Denali Therapeutics | Unity |
| 306181 | Data Analyst | Albuquerque, NM | Full-time | 150000 | Sandia National Laboratories | Python, Go, Matlab |
| 15709 | Data Analyst | United States | Full-time | 147500 | Gopuff | SQL, Azure, Redshift, Snowflake, Looker, Git |


### 3_top_in-depanded_skills.sql
(Note: I think it's "in-demand" skills) Finds the top 5 most wanted skills for Data Analyst jobs, based on how many jobs ask for them.
## Most In-Demand Skills for Data Analysts

| Skill | Demand Count |
|------|-------------|
| SQL | 92,628 |
| Excel | 67,031 |
| Python | 57,326 |
| Tableau | 46,554 |
| Power BI | 39,468 |

### 4_top_skills_by_salary.sql
Shows the average salary for each skill used in Data Analyst jobs. Ordered by highest salary first, top 25 skills.
#### Top 5 Highest Paying Skills for Data Analysts

The table below highlights the top 5 skills associated with the highest average salaries based on the analyzed dataset.
## Top 5 Highest Paying Skills

| Skill | Average Salary ($) |
|------|-------------------|
| SVN | 400,000 |
| Solidity | 179,000 |
| Couchbase | 160,515 |
| DataRobot | 155,486 |
| Golang | 155,000 |

### 5_optimal_skills.sql
Combines demand (how many jobs want it) and average salary for skills in Data Analyst jobs. Helps find skills that are both popular and pay well.
## Skills Demand vs Average Salary

| Skill ID | Skill | Demand Count | Avg Salary ($) |
|---------|------|-------------|---------------|
| 8 | Go | 27 | 115,320 |
| 234 | Confluence | 11 | 114,210 |
| 97 | Hadoop | 22 | 113,193 |
| 80 | Snowflake | 37 | 112,948 |
| 74 | Azure | 34 | 111,225 |

### Skills with High Demand and Strong Salaries

This table highlights a sample of skills that show a combination of strong market demand and competitive average salaries based on the dataset analysis.

## How to Use

To run these, you need a database with the job data tables. The queries use tables like:
- job_postings_fact (main job info)
- company_dim (company details)
- skills_dim (list of skills)
- skills_job_dim (links jobs to skills)

If you have the data, you can run these queries in any SQL tool like PostgreSQL, MySQL, etc.

## What I Learned

This project taught me how to:
- Write SQL queries to get data
- Join tables together
- Use things like WHERE, ORDER BY, GROUP BY
- Make complex queries with CTEs (Common Table Expressions)

Hope this helps you understand my SQL journey!