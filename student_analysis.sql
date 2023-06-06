SELECT * 
FROM school.expanded_data_with_more_features;

describe school.expanded_data_with_more_features;

number of students
select count(*) 
as no_of_students 
FROM school.expanded_data_with_more_features;

number of males and females
SELECT count(gender) 
as no_of_students, gender 
FROM school.expanded_data_with_more_features 
group by gender;

students distribution by ethinic group
select count(ethnicgroup) 
as no_of_students, ethnicgroup 
FROM school.expanded_data_with_more_features 
group by ethnicgroup;

students whose parents has a masters degree.
select gender, ethnicgroup, parenteduc 
FROM school.expanded_data_with_more_features 
where parenteduc = 'mastersdegree';

students who are the first born and parents are single
select gender, parentmaritalstatus, isfirstchild 
from school.expanded_data_with_more_features 
where parentmaritalstatus = 'married' 
and isfirstchild = 'yes';

students who has 3 siblings and above
SELECT * 
FROM school.expanded_data_with_more_features 
where Nrsiblings >= 3;

students who score above 69 in maths, reading and writing
SELECT * 
FROM school.expanded_data_with_more_features 
where mathscore > 69 
and readingscore > 69 
and writingscore > 69;

total number of students with a mark of 70 and above
SELECT count(gender) 
as no_of_students 
FROM school.expanded_data_with_more_features 
where mathscore > 69 
and readingscore > 69 
and writingscore > 69;

total number of students with mark lower than 50
SELECT count(gender) 
as no_of_students 
FROM school.expanded_data_with_more_features 
where mathscore < 50 
and readingscore < 50 
and writingscore < 50;

gender distribution of students with mark of 70 and above
SELECT count(gender) 
as no_of_students, gender 
FROM school.expanded_data_with_more_features 
where mathscore > 69 
and readingscore > 69 
and writingscore > 69 
group by gender;

gender distribution of students with mark lower than 50
SELECT count(gender) 
as no_of_students, gender 
FROM school.expanded_data_with_more_features 
where mathscore < 50 
and readingscore < 50 
and writingscore < 50 
group by gender;

students with math score between 50 and 69
SELECT gender, ethnicgroup, mathscore 
FROM school.expanded_data_with_more_features 
where mathscore 
between 50 
and 69;

calculate the avg score of math in the school for students with ethnic group D
select avg(mathscore) 
FROM school.expanded_data_with_more_features 
where ethnicgroup = 'groupD';

scores of students whose parents has masters degree
SELECT gender, ethnicgroup, parenteduc, mathscore, readingscore, writingscore 
FROM school.expanded_data_with_more_features 
where parenteduc = 'mastersdegree';

scores of students whose parents has just some high school degree
SELECT gender, ethnicgroup, parenteduc, mathscore, readingscore, writingscore 
FROM school.expanded_data_with_more_features 
where parenteduc = 'somehighschool';