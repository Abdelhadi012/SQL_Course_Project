WITH top_job_paying AS (
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
        job_title_short = 'Data Analyst' AND
        salary_year_avg is NOT NULL AND
        search_location = 'Sudan'
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)
SELECT 
    top_job_paying.*,
    skills

FROM
    top_job_paying
INNER JOIN skills_job_dim on top_job_paying.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC
