select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
group by name
order by ci.Population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.047 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
group by population
order by ci.Population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode

order by ci.Population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode

order by ci.Population des;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'des' at line 6 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode

order by ci.Population desc;
/* 영향 받은 행: 0  찾은 행: 30,672  경고: 0  지속 시간 1 쿼리: 0.031 sec. (+ 0.016 sec. network) */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
group by population
order by ci.Population desc;
/* 영향 받은 행: 0  찾은 행: 3,898  경고: 0  지속 시간 1 쿼리: 0.047 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
order by ci.Population desc;
/* 영향 받은 행: 0  찾은 행: 30,672  경고: 0  지속 시간 1 쿼리: 0.046 sec. */
SHOW CREATE TABLE `world`.`countrylanguage`;
SHOW COLLATION;
SHOW ENGINES;
SELECT * FROM `world`.`countrylanguage` LIMIT 1000;
SHOW CREATE TABLE `world`.`countrylanguage`;
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
group by isofficial
order by ci.Population desc;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.062 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
group by isofficial ='t'
order by ci.Population desc;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.063 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
where cl.isofficial ='t'
order by ci.Population desc;
/* SQL 오류 (1054): Unknown column 'cl.isofficial' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select ci.Name, ci.Population, cl.`Language`
from countrylanguage as cl
join city as ci
on cl.CountryCode = ci.CountryCode
where cl.isofficial ='t'
order by ci.Population desc;
/* 영향 받은 행: 0  찾은 행: 4,284  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc date_Table;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from date_time;
/* SQL 오류 (1146): Table 'world.date_time' doesn't exist */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from date_time;
/* SQL 오류 (1146): Table 'world.date_time' doesn't exist */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
use world;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select *from date_time;
/* SQL 오류 (1146): Table 'world.date_time' doesn't exist */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from date_Table;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select id, date_format(datetime, '%Y-%m-%d %r') FROM date_Table;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from song;