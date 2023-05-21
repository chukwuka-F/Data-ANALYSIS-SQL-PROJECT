SELECT * FROM population.nigeria_population;
SELECT * FROM population.nigeria_sex_ratio;

Describe population.nigeria_population;
Describe population.nigeria_sex_ratio;

Number of rows we working with
select count(*) from population.nigeria_population;
select count(*) from population.nigeria_sex_ratio;

to get the total population in 2016
select sum(population_2016) 
as total_pop_2016 
FROM population.nigeria_population;

to know the state with largest population in 2016
select MAX(population_2016) 
as most_populated 
FROM population.nigeria_population;

to know the state with smallest population in 2016
select MIN(population_2016) 
as least_populated 
FROM population.nigeria_population;

to arrange the population in 2016 from largest to lowest
SELECT state, population_2016 
FROM population.nigeria_population 
order by population_2016;

to arrange the population in 2016 from lowest to largest
SELECT state, population_2016 
FROM population.nigeria_population 
order by population_2016 desc;

to know the total population of Nigeria for 2010 to 2016
select sum(population_2010) 
as tot_pop2010, sum(population_2011) 
as tot_pop2011, sum(population_2012) 
as tot_pop2012, sum(population_2013) 
as tot_pop2013, sum(population_2014) 
as tot_pop2014, sum(population_2015) 
as tot_pop2015, sum(population_2016) 
as tot_pop2016 
FROM population.nigeria_population;

to know the average population of Nigeria for 2010 to 2016
select avg(population_2010) 
as avg_pop2010, avg(population_2011) 
as avg_pop2011, avg(population_2012) 
as avg_pop2012, avg(population_2013) 
as avg_pop2013, avg(population_2014) 
as avg_pop2014, avg(population_2015) 
as avg_pop2015, avg(population_2016) 
as avg_pop2016 
FROM population.nigeria_population;

to know the percentage population increase of Nigeria from 2010 to 2016
select sum(population_2010) 
as tot_pop2010, sum(population_2016) 
as tot_pop2016, ((sum(population_2016)-sum(population_2010)))/(sum(population_2010))*100 
as percentage_increase
FROM population.nigeria_population;

to know the total population of male and female in Nigeria in 2014
SELECT sum(male_2014) 
as total_male, sum(female_2014) 
as total_female 
FROM population.nigeria_sex_ratio;

to get just the population of male and female in Lagos
select * from population.nigeria_sex_ratio 
where state = 'Lagos';

to get population of male and female in both Lagos and Abia
select * from population.nigeria_sex_ratio 
where state = 'Lagos' or state = 'Abia';

to get population of male and female in Lagos, Abia, Bauchi and Delta
select * from population.nigeria_sex_ratio 
where state 
IN('Lagos','Abia', 'Bauchi', 'Delta');

to calculate the total population of male and female in the four states (Lagos, Abia, Bauchi and Delta)
select sum(male_2010) 
as tot_male_2010, sum(female_2010) 
as tot_female_2010, 
sum(male_2011) 
as tot_male_2011, sum(female_2012) 
as tot_female_2012
from population.nigeria_sex_ratio 
where state 
IN('Lagos','Abia', 'Bauchi', 'Delta');

to get the population of the states whose letter starts with K
SELECT * FROM population.nigeria_population 
where state 
LIKE 'K%';

to get the population of the states whose letter starts with A and ends with A
SELECT * FROM population.nigeria_population 
where state 
LIKE 'A%A';


to join the two tables (Nigeria population and sex ratio from 2010 to 2016)
select population_2010, male_2010, female_2010, 
population_2011, male_2011, female_2011, 
population_2012, male_2012, female_2012, 
population_2013, male_2013, female_2013, 
population_2014, male_2014, female_2014, 
population_2015, male_2015, female_2015, 
population_2016, male_2016, female_2016 
from population.nigeria_population 
inner join population.nigeria_sex_ratio 
using (state);




