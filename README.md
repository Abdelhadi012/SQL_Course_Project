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
Finds the top 10 highest-paying jobs for Data Engineers and Data Analysts in Sudan. Only jobs that don't require a degree, and salary info is available.

### 2_top_paying_skills_job.sql
Looks at the top 10 highest-paying Data Analyst jobs in Sudan, and shows what skills those jobs need.

### 3_top_in-depanded_skills.sql
(Note: I think it's "in-demand" skills) Finds the top 5 most wanted skills for Data Analyst jobs, based on how many jobs ask for them.

### 4_top_skills_by_salary.sql
Shows the average salary for each skill used in Data Analyst jobs. Ordered by highest salary first, top 25 skills.

### 5_optimal_skills.sql
Combines demand (how many jobs want it) and average salary for skills in Data Analyst jobs. Helps find skills that are both popular and pay well.

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