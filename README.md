# Job Postings Analysis

## Introduction

I used SQL to explore Data Analyst job postings and find the best skills to learn. Salary + demand = useful career clues :)

## Background

The data includes jobs, companies, skills, and job-skill links. I focused on remote Data Analyst roles with salary info where needed.

## Tools I Used

- PostgreSQL + SQL
- pgAdmin
- VS Code
- CSV files
- Git + GitHub

## The Analyses

My project answered these five questions:

1. **What are the top 10 highest-paying Data Analyst jobs?**
2. **What skills are needed for those top-paying jobs?**
3. **What are the most in-demand skills?**
4. **Which skills are linked to the highest salaries?**
5. **Which skills balance demand and pay?**

Run the setup scripts, load the CSVs, then run the queries in `project_sql/`. Easy peasy :P

## Code Highlights

- [`1_top_paying_jobs.sql`](project_sql/1_top_paying_jobs.sql) uses filters, sorting, and `LIMIT` to find the top jobs.
- [`2_top_paying_job_skills.sql`](project_sql/2_top_paying_job_skills.sql) uses a CTE and joins to connect jobs with their skills.
- [`5_optimal_skills.sql`](project_sql/5_optimal_skills.sql) combines demand and average salary to find the best overall skills.

```sql
ORDER BY salary_year_avg DESC
LIMIT 10;
```

## Project Note

This was a follow-along project from Luke Barousse's SQL course, so it is not anything too extravagant. Still, it was great practice! Next time, I plan to build a project completely on my own :)

## What I Learned

- SQL joins are super handy for connecting jobs and skills.
- Demand and salary tell different stories.
- Looking at both gives a better idea of which skills are worth learning.
- Clean data matters a lot when comparing salaries.

## Conclusion

SQL can turn a pile of job postings into useful career insight. The results are dataset-specific, but they still give a pretty neat snapshot of the Data Analyst market :)

## Insights

- High demand does not always mean high pay.
- The best skills to learn are often the ones that show up regularly and connect to better salaries.
- SQL is a great starting point for turning messy job data into something useful.

## Closing Thoughts

This was a simple follow-along project, but it helped me practice real SQL workflows from start to finish. Next up: a project I design and build on my own :P
