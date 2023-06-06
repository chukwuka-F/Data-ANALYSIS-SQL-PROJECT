SELECT * 
FROM workers.salary_data;

 describe workers.salary_data;
 
 total number of workers
 select count(*) 
 FROM workers.salary_data;
 
 Gender distribution in the company
 select count(gender) 
 as total_number, gender 
 from  workers.salary_data 
 group by gender;
 
 Gender distribution based on job_title
 select count(gender) 
 as total_number, gender, job_title 
 from  workers.salary_data 
 group by gender, job_title;
 
 Workers whose age range between 32 to 42
 select age, gender, job_title 
 from  workers.salary_data 
 where age 
 between '32' 
 and '42' 
 order by age;
 
 The oldest age amongst workers.
 select MAX(age) 
 from  workers.salary_data;
 
 The youngest age amongst workers.
 select MIN(age) 
 from workers.salary_data;
 
 What job title has the highest paid salary and least paid salary
 SELECT job_title, salary 
 FROM workers.salary_data 
 order by salary 
 desc;
 
 Workers that has PhD degree
 select age, gender, educationlevel, job_title 
 FROM workers.salary_data 
 where Educationlevel = 'phD';
 
 workers whose job_title are software engineer and product manager
 select age, gender, educationlevel, job_title 
 FROM workers.salary_data 
 where job_title 
 in('softwareengineer', 'productmanager');
 
 Total salary of all the workers
 select sum(salary) 
 as sum_of_salary 
 from workers.salary_data;
 
 percentage diff between highest paid salary and lowest paid salary
 select (max(salary) - min(salary))/min(salary)*100 
 as percentage_diff 
 from workers.salary_data;
 select max(salary) 
 from workers.salary_data;
 select min(salary) 
 from workers.salary_data;
 
 Workers distribution based on their years of experience
 select count(Years_of_Experience) 
 as total_workers, Years_of_Experience 
 from workers.salary_data 
 group by years_of_experience 
 order by Years_of_Experience;
 
 what are the list of job title we have in the company
 select distinct job_title 
 from workers.salary_data;
 
 what job titles has the highest number of years of experience
 select MAX(years_of_experience) 
 from workers.salary_data;
 select * 
 from workers.salary_data 
 where Years_of_Experience = '34';
 
 what job titles has the least number of years of experience
 select MIN(years_of_experience) 
 from workers.salary_data;
 select * 
 from workers.salary_data 
 where Years_of_Experience = '0';