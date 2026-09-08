/*
What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
    providing insights into the most valuable skills for job seekers.
*/

SELECT
    skills.skills AS skills,
    COUNT(*) AS demand_count
FROM
    job_postings_fact jobs
INNER JOIN skills_job_dim skills_job ON jobs.job_id = skills_job.job_id
INNER JOIN skills_dim skills ON skills_job.skill_id = skills.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
GROUP BY
    skills.skills
ORDER BY
    number_of_jobs DESC
LIMIT 5;