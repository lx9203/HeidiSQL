use world;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select gg.id, gg.name, gg.debut, s.title
from girl_group as gg
right outer join song as s
on s.id=gg.hit_song_id
where debut
between '2009-01-01' and '2009-12-31'
order by debut;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select count(*), sum(GNP), avg(GNP)
from country as co
join city as ci
on ci.CountryCode = co.Code
group by continent
order by continent;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select co.continent, ci.CountryCode, ci.Name, ci.Population
from country as co
join city as ci
on co.Code = ci.CountryCode
where continent='Asia'
order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select ci.Name, ci.Population, co.`Language`
from countrylanguage as co
join city as ci
on co.CountryCode = ci.CountryCode
group by name
order by ci.Population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.047 sec. */