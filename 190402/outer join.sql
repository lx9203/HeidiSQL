select ci.Name, ci.Population, cl.`Language`
	from countrylanguage as cl
	join city as ci
	on cl.CountryCode = ci.CountryCode
	group by name
	order by ci.Population desc limit 10;