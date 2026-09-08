/*
What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query.
- Add the specific skills required for these roles.
- Why?  It provides a detailed look at which high-paying jobs demand certain skills,
    helping job seekers understand which skills to develop that align with top salaries.
*/

WITH top_paying_jobs AS (
    SELECT
        jobs.job_id,
        companies.name AS company,
        jobs.job_title AS job,
        jobs.salary_year_avg AS salary
    FROM
        job_postings_fact jobs
    LEFT JOIN company_dim companies ON jobs.company_id = companies.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT
    top_jobs.*,
    skills
FROM
    top_paying_jobs top_jobs
INNER JOIN skills_job_dim skills_job ON top_jobs.job_id = skills_job.job_id
INNER JOIN skills_dim skills ON skills_job.skill_id = skills.skill_id
ORDER BY
    top_jobs.salary DESC -- just in case