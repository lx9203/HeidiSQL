#selectAll
select s.sCode, p.pCode, p.pName, p.pPrice, s.sDate, s.sQuantity, s.sState 
from supply as s 
inner join product as p 
on p.pCode = s.sProductCode;

#제품코드로 재고 검색
select pQuantity from product where pCode = 'A101';

#searchByDay
select s.sCode, p.pName, p.pPrice, s.sQuantity, s.sDate, s.sState 
from supply as s 
inner join product as p 
on p.pCode=s.sProductCode 
where s.sDate >= '2019-05-08' and s.sDate <= '2019-05-08 23:59:59';

#공급사별 날짜별 sCode
select sCode from supply 
where sDate >= '2019-05-08' and sDate <= '2019-05-08 23:59:59' and sCode like 'A%' 
order by sCode desc;

#searchStateByDay
select s.sState from supply as s 
inner join product as p 
on p.pCode=s.sProductCode 
where s.sDate >= '2019-05-05' and s.sDate <= '2019-05-05 23:59:59';

#날짜로 처리 상태구하기
select s.sState from supply as s 
inner join product as p 
on p.pCode=s.sProductCode 
where s.sDate >= '2019-05-05' and s.sDate <= '2019-05-05 23:59:59'
order by sCode limit 1

#마지막 비처리 발주코드
select sCode from supply
where sCode like 'A%' and sState = 0
order by sCode desc limit 1;