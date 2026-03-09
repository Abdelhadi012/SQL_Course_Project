SELECT
    job_id,
    job_title_short,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    (job_title_short = 'Data Engineer' OR
    job_title_short = 'Data Analyst') AND
    salary_year_avg is NOT NULL AND
    job_no_degree_mention = TRUE AND
    search_location = 'Sudan'
ORDER BY
    salary_year_avg DESC
LIMIT 10;

SELECT *
FROM job_postings_fact
LIMIT 100