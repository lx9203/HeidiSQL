select * from city where district='chungchongbuk';
/* 영향 받은 행: 0  찾은 행: 3  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where population>1000000;
/* 영향 받은 행: 0  찾은 행: 237  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where countrycode='kor' and population>1000000;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where countrycode='kor' and name=district;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group concat(name) from city where countrycode='kor' and name=district;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group concat(name) from city where countrycode='kor' and name=district' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group concat(name) from city where countrycode='kor' and name=district;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group concat(name) from city where countrycode='kor' and name=district' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group concat(name)
 from city where countrycode='kor' and name=district;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group concat(name)
 from city where countrycode='kor' and name=district' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group_concat(name)
 from city where countrycode='kor' and name=district;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group_concat(district district)
 from city where countrycode='kor' ;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'district)
 from city where countrycode='kor'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group_concat(district district) from city
 where countrycode='kor';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'district) from city
 where countrycode='kor'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group_concat(distinct district) from city
 where countrycode='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district, count(*) from city
 where countrycode='kor' group by district;
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district, count(*) from city
 where countrycode='kor' 
 group by district having count(*)=6;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district, count(*) from city
 where countrycode='kor' 
 group by district having count(*)>6;
/* 영향 받은 행: 0  찾은 행: 3  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district, count(*) from city
 where countrycode='kor' 
 group by district having count(*)>=6;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select district, count(*) from city
 where countrycode='kor' 
 group by district having count(*)>=6
 order by coint(*) desc;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) desc' at line 4 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select district, count(*) from city
 where countrycode='kor' 
 group by district having count(*)>=6
 order by coint(*) desc;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) desc' at line 4 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select district, count(*) from city
 where countrycode='kor' 
 group by district having count(*)>=6
 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district, count(*) from city
 group by countrycode having count(*) >=50
 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 20  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select countrycode, count(*) from city
 group by countrycode having count(*) >=50
 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 20  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, count(*) from city
 group by countrycode having count(*) >=50
 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 20  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select countryname, count(*) from city
 group by countrycode having count(*) >=50
 order by count(*) desc;
/* SQL 오류 (1054): Unknown column 'countryname' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select country, count(*) from city
 group by countrycode having count(*) >=50
 order by count(*) desc;
/* SQL 오류 (1054): Unknown column 'country' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select countrycode, count(*) from city
 group by countrycode having count(*) >=50
 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 20  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc country;
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country code;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. (+ 0.015 sec. network) */
select * from country;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc countrylanguage;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SHOW CREATE TABLE `world`.`city`;
SHOW COLLATION;
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code;
/* 영향 받은 행: 0  찾은 행: 4,080  경고: 0  지속 시간 1 쿼리: 0.000 sec. (+ 0.016 sec. network) */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	order by city.population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	where city.CountryCode='kor';
/* 영향 받은 행: 0  찾은 행: 71  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	where countrycode='kor';
/* 영향 받은 행: 0  찾은 행: 71  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	where countrycode='jpn';
/* 영향 받은 행: 0  찾은 행: 248  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select city.Name, city.population, country.name from city
	inner join country on city.countrycode = country.code 
	where countinent='aisa';
/* SQL 오류 (1054): Unknown column 'countinent' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select count(*) from country where continent='Asia' ;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country where continent='Asia' ;
/* 영향 받은 행: 0  찾은 행: 51  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country ;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select sum(surfacearea) from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, surfacearea from country 
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, surfacearea from country 
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, sum(surfacearea) from country 
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, sum(surfacearea) from country 
	group by continent order by surfacearea;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, sum(surfacearea) from country 
	group by continent order by surfacearea desc;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, sum(surfacearea) from country 
	group by continent order by sum(surfacearea) desc;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, sum(surfacearea) from country 
	group by continent 
	order by sum(surfacearea) desc;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country 
	group by continent 
;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country 

;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, population from country 

;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, population from country limit 10

;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, population from country limit 10
order by population desc

;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by population desc' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select name, population from country limit 10
order by population desc;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by population desc' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select name, population from country limit 10
	order by population desc;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by population desc' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select name, population from country 
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, population from country 
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, population from city
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select countrycode, population from city
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select countrycode, population from city
	order by sum(population) desc limit 10;
/* SQL 오류 (3029): Expression #1 of ORDER BY contains aggregate function and applies to the result of a non-aggregated query */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select countrycode, population from city
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.Population, country.Name from city
	inner join country on city.CountryCode = country.Code;
order by population desc limit 10;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by population desc limit 10' at line 1 */
/* 영향 받은 행: 0  찾은 행: 4,080  경고: 0  지속 시간 1 of 2 쿼리: 0.000 sec. */
select city.Name, city.Population, country.Name from city
	inner join country on city.CountryCode = country.Code
	order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select countrycode, sum(population) from city
	group by countrycode 
	order by sum(population) desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select country.name, sum(city.population) from city
	inner join country on city.CountryCode = country.code
	group by city.countrycode 
	order by sum(population) desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
use world;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
update city set name ='siheung'
	where countrycode ='kor' and name ='shihung';
/* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city name='shihung';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='shihung'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city name like='shihung';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like='shihung'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city name like 's%';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 's%'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city 
	where countrycode='kor' 
	and name like 's%';
/* 영향 받은 행: 0  찾은 행: 8  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
update city set name='Siheung' 
	where countrycode='kor' 
	and name='shihung'
select * from city 
	where countrycode='kor' 
	and name like 's%';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from city 
	where countrycode='kor' 
	and name like 's%'' at line 4 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
update city set name='Siheung' 
	where countrycode='kor' 
	and name='shihung'
select * from city 
	where countrycode='kor' 
	and name like 'S%';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from city 
	where countrycode='kor' 
	and name like 'S%'' at line 4 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
update city set name='Siheung' 
	where countrycode='kor' 
	and name='shihung';
select * from city 
	where countrycode='kor' 
	and name like 'S%';
/* 영향 받은 행: 0  찾은 행: 8  경고: 0  지속 시간 2 쿼리: 0.016 sec. */
update city set name='Siheung' 
	where countrycode='kor' 
	and name='shihung';
select * from city 
	where countrycode='kor' 
	and name like 'S%';
/* 영향 받은 행: 0  찾은 행: 8  경고: 0  지속 시간 2 쿼리: 0.015 sec. */
update city set name='Siheung' 
	where countrycode='kor' 
	and name='shihung';
select * from city 
	where countrycode='kor' 
	and name like 'Shi%';
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 2 쿼리: 0.032 sec. */
update city set name='Siheung' 
	where countrycode='kor' 
	and name='shihung';
select * from city 
	where countrycode='kor' 
	and name like 'S%';
/* 영향 받은 행: 0  찾은 행: 8  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
select * from eagles;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
alter table eagles add Salary
select * from eagles;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from eagles' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
alter table eagles add Salary;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
alter table eagles add Salary int(10) not null;
select * from eagles;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 2 쿼리: 0.109 sec. */
update eagles set salary='700000달러' where name='서폴드'
select * from eagles;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from eagles' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
update eagles set salary='700000달러' where name='서폴드';
/* SQL 오류 (1265): Data truncated for column 'Salary' at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
select * from eagles;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into eagles(salary) values ('700000달러');
/* SQL 오류 (1265): Data truncated for column 'Salary' at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
select * from eagles;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into eagles (Salary) where no='10001' values ('700000달러');
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where no='10001' values ('700000달러')' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
update eagles set salary='700000달러' where no=10001;
/* SQL 오류 (1265): Data truncated for column 'Salary' at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
update eagles set salary='700000달러' where no='10001';
/* SQL 오류 (1265): Data truncated for column 'Salary' at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
update eagles set Salary='700000달러' where no=10001;
/* SQL 오류 (1265): Data truncated for column 'Salary' at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
update eagles set Salary='700000' where no=10001;
select * from eagles;
/* 영향 받은 행: 1  찾은 행: 10  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
update eagles set Salary='700000000' where no=10001;
update eagles set Salary='125000000' where no=10002;
update eagles set Salary='320000000' where no=10003;
update eagles set Salary='27000000' where no=10004;
update eagles set Salary='250000000' where no=10005;
update eagles set Salary='180000000' where no=10006;
update eagles set Salary='1400000000' where no=10007;
update eagles set Salary='700000000' where no=10008;
update eagles set Salary='500000000' where no=10009;
update eagles set Salary='1400000000' where no=10010;
select * from eagles;
/* 영향 받은 행: 10  찾은 행: 10  경고: 0  지속 시간 11 쿼리: 0.016 sec. */
insert into city values (default, 'Gimpo', 'KOR', 'Kyonggi', 200001);
select * from city where district='kyonggi';
/* 영향 받은 행: 1  찾은 행: 20  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
delete from city where if=4081;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=4081' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
delete from city where id=4081;
select * from city where district='kyonggi';
/* 영향 받은 행: 1  찾은 행: 19  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
create table citycopy like city;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
desc citycopy;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from citycopy;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into citycopy select * from city;
/* 영향 받은 행: 4,080  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.187 sec. */
select * from citycopy;
/* 영향 받은 행: 0  찾은 행: 4,080  경고: 0  지속 시간 1 쿼리: 0.000 sec. (+ 0.015 sec. network) */
insert into citycopy values (default, 'Osan', 'KOR', 'Kyonggi', 201234);
/* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from citycopy;
/* 영향 받은 행: 0  찾은 행: 4,081  경고: 0  지속 시간 1 쿼리: 0.000 sec. (+ 0.016 sec. network) */
select * from citycopy like 'O%';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 'O%'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
insert into citycopy (name, countrycode, district, population)
	values ('Pochon', 'KOR', 'Kyonggi', 156789);
select * from citycopy order by id desc limit 3;
/* 영향 받은 행: 1  찾은 행: 3  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
delete from citycopy where id=4082;
select * from citycopy order by id desc limit 3;
/* 영향 받은 행: 1  찾은 행: 3  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 8  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create view LargeCity as select * from city
	where population>7000000 with check option;
select * from largecity;
show tables;
/* 영향 받은 행: 0  찾은 행: 23  경고: 0  지속 시간 3 쿼리: 0.032 sec. */
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_TIMESTAMP;
create view KoreanCity 
	as select id, name, district, population 
	from city where countrycode='kor';
select * from largecity;
show tables;
/* 영향 받은 행: 0  찾은 행: 24  경고: 0  지속 시간 3 쿼리: 0.000 sec. */
select * from KoreanCity;
show tables;
/* 영향 받은 행: 0  찾은 행: 81  경고: 0  지속 시간 2 쿼리: 0.015 sec. */
drop view koreancity;
select * from KoreanCity;
/* SQL 오류 (1146): Table 'world.koreancity' doesn't exist */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 of 3 쿼리: 0.016 sec. */
drop view koreancity;
/* SQL 오류 (1051): Unknown table 'world.koreancity' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 9  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create view koreancity 
	as select id, name, district, population
	from city where countrycode='kor' with check option;
select * from koreancity;
show tables;
/* 영향 받은 행: 0  찾은 행: 81  경고: 0  지속 시간 3 쿼리: 0.000 sec. */
select district, name, population from koreancity as c1
	where population > (select avg(population) from koreancity as c2
	where c1.district = c2.district group by district);
/* 영향 받은 행: 0  찾은 행: 24  경고: 0  지속 시간 1 쿼리: 0.016 sec. */