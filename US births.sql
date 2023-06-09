SELECT * 
FROM us.us_births_2016_2021;

describe us.us_births_2016_2021;

Total number of states
select count(distinct state) 
as total_no_state 
FROM us.us_births_2016_2021;

total number of children group by gender
select gender, count(gender) 
as total_no_people 
FROM us.us_births_2016_2021 
group by gender;

female children whose mothers age falls below 30 years
select state, gender, average_age_of_mother 
from us.us_births_2016_2021 
where average_age_of_mother < 30 
and gender = 'F';

total number of female children whose mothers falls below 30 years
select count(gender) 
as total_female_whose_mothers_age_below_30, gender 
from us.us_births_2016_2021 
where average_age_of_mother < 30 
and gender = 'F';

male children whose mothers age falls below 30 years
select state, gender, average_age_of_mother 
from us.us_births_2016_2021 
where average_age_of_mother < 30 
and gender = 'M';

total number of male children whose mothers falls below 30 years
select count(gender) 
as total_male_whose_mothers_age_below_30, gender 
from us.us_births_2016_2021 
where average_age_of_mother < 30 
and gender = 'M';

oldest average age of mother
select MAX(average_age_of_mother) 
as oldest_avg_age_mother 
from us.us_births_2016_2021;

youngest average age of mother
select MIN(average_age_of_mother) 
as youngest_avg_age_mother 
from us.us_births_2016_2021;

State and year that has the highest number of birth rate
select * 
from us.us_births_2016_2021 
order by number_of_births 
desc;

state starting with letter A and end with letter S
select * 
from us.us_births_2016_2021 
where state 
LIKE 'A%S';

details of Delaware and Florida
select * 
from us.us_births_2016_2021 
where state = 'Florida' 
or state = 'Delaware'; 

compare alabama and florida based on total number of birth from 2016 to 2021
select state, sum(number_of_births) 
as total_births 
from us.us_births_2016_2021 
where state = 'alabama' 
and year 
in (2016, 2017, 2018, 2019, 2020, 2021) 
or state = 'florida' 
and year 
in (2016, 2017, 2018, 2019, 2020, 2021) 
group by state;



