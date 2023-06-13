SELECT * 
FROM student_record.studentsperformance;

describe student_record.studentsperformance;

total number of students
select count(*) 
as tot_no_student 
FROM student_record.studentsperformance;

Students distribution by gender
select count(gender) 
as tot_no_students, gender 
FROM student_record.studentsperformance 
group by gender;

what are the different groups of race ethnicity
select distinct(race_ethnicity) 
as list_group_ethnicity 
FROM student_record.studentsperformance 
order by race_ethnicity;

how many people belongs to each group
select count(race_ethnicity) 
as tot_no_ethnicity, race_ethnicity 
FROM student_record.studentsperformance 
group by race_ethnicity 
order by race_ethnicity;

gender distribution of students whose parents got masters
select count(gender) 
as tot_no_students, gender, parent_levl_of_edu 
FROM student_record.studentsperformance 
where parent_levl_of_edu = 'mastersdegree' 
group by gender;

performance of students whose parent got some high school degree
select gender, race_ethnicity, parent_levl_of_edu, test_prep, math_score, reading_score, writing_score 
FROM student_record.studentsperformance 
where parent_levl_of_edu = 'somehighschool';

performance of students whose parent got some masters
select gender, race_ethnicity, parent_levl_of_edu, test_prep, math_score, reading_score, writing_score 
FROM student_record.studentsperformance 
where parent_levl_of_edu = 'mastersdegree';

Average score of maths, reading and writing for students whose parents got masters
select parent_levl_of_edu, 
avg(math_score), 
avg(reading_score), 
avg(writing_score) 
FROM student_record.studentsperformance 
where parent_levl_of_edu = 'mastersdegree' 
or parent_levl_of_edu = 'somehighschool' 
group by parent_levl_of_edu;

students that fail/score below 50 in all 3 subjets
SELECT * 
FROM student_record.studentsperformance 
where math_score<50 
and reading_score<50 
and writing_score<50;

gender distribution of students that fail/score below 50 in all 3 subjets
select gender, count(gender) 
as tot_no_students 
FROM student_record.studentsperformance 
where math_score<50 
and reading_score<50 
and writing_score<50 
group by gender;

students that pass/score above 50 in all 3 subjets
SELECT * 
FROM student_record.studentsperformance 
where math_score>50 
and reading_score>50 
and writing_score>50;

gender distribution of students that pass/score above 50 in all 3 subjets
select gender, count(gender) 
as tot_no_students 
FROM student_record.studentsperformance 
where math_score>50 
and reading_score>50 
and writing_score>50 
group by gender;

parents with degree starting with 'S' and end with 'E'
SELECT * 
FROM student_record.studentsperformance 
where parent_levl_of_edu 
LIKE 'S%E';

students that undergo test preparation and still failed the 3 subjects.
SELECT * 
FROM student_record.studentsperformance 
where test_prep = 'completed' 
and math_score<50 
and reading_score<50 
and writing_score<50;