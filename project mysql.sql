

SELECT * from 
 parks_and_recreation.employee_demographics
 where age > 25;
 
select * from employee_salary
where
 salary <= '50000';
 
 select * from employee_demographics
where
gender = 'female';

select * from employee_demographics
where
gender != 'female';
# group by
SELECT salary, occupation 
from employee_salary
group by occupation, salary;

SELECT gender, avg(age), max(age), Min(age), count(gender)
from employee_demographics
group by gender ;

# order by
Select * 
from employee_demographics
order by first_name; 

Select * 
from employee_demographics
order by first_name DESC;



 

Select * 
from employee_demographics
order by age , gender;

# Having vs where

Select gender , avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

 select occupation, avg(salary)
 from employee_salary
 group by occupation;
 
 select occupation, avg(salary)
 from employee_salary
 where occupation like '%manager%'
 group by occupation 
 having avg(salary) > 10000;
 
 # limits and aliasing
 #limit is is for specifing how many rows u want in the output
 
 select * 
 from employee_demographics
 LIMIT 3;
  
 select * 
 from employee_demographics
 order by age DESC
 LIMIT 9,1;
  
 select * 
 from employee_demographics
 order by age DESC
 LIMIT 4;
 
 # aliasing
 #can change column name as ur wish with aliasing
  select gender, avg(age) as avg_age 
 from employee_demographics
 group by gender 
 having avg_age> 40
 
 
 ;
  
  

