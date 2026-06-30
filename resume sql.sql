create database `Resume Analytics`;

use `Resume Analytics`;

select count(*) as`total candidate` 
from data ;

select avg(Cgpa) as `average CGPA`
from data ;

select `education level`,count(*) `total candidate`
from data 
group by `education level`
order by `total candidate` desc ;

select `university tier`,avg(Cgpa) as `average CGPA`
from data 
group by  `university tier`;

select `programming languages`,
count(*) as total 
from data 
group by `programming languages`
order by total desc ;

select avg(`experience years`) as `average experience`
from data;

SELECT
MAX(`skills score`) AS `Highest Skill Score`
FROM data;

select `company type`,
count(*) as condidate 
from data 
group by `company type` 
;

SELECT
`education level`,
AVG(`skills score`) AS `Avg Skill`
FROM data
GROUP BY `education level`;

SELECT
`education level`,
AVG(`soft skills score`) AS `Avg Soft Skill`
FROM data
GROUP BY `education level`;

SELECT MAX(CGPA) AS Highest_CGPA
FROM data;

SELECT MIN(CGPA) AS Lowest_CGPA
FROM data; 

SELECT AVG(internships) AS Avg_Internships
FROM data;

SELECT AVG(projects) AS Avg_Projects
FROM data;

SELECT AVG(certifications) AS Avg_Certifications
FROM data;

SELECT AVG(`resume length words`) AS Avg_Resume_Length
FROM data;

SELECT hired,
COUNT(*) AS Total
FROM data
GROUP BY hired;

SELECT `candidate id`,
`skills score`
FROM data
ORDER BY `skills score` DESC
LIMIT 5;

SELECT `candidate_id`,
`experience years`
FROM data
ORDER BY `experience years` DESC
LIMIT 5;

SELECT
`education level`,
`company type`,
COUNT(*) AS Total
FROM data
GROUP BY
`education level`,
`company type`;