create proc Count_pereletx_goroda
as
select dbo.Страны.Страна, dbo.Города.Город, count(distinct dbo.Пассажир.НомерРейса) as КолличествоПерелетов
from dbo.Города, dbo.Пассажир INNER JOIN dbo.Страны ON dbo.Пассажир.Страна_назначения = dbo.Страны.id
where dbo.Пассажир.Город_назначения = dbo.Города.id group by dbo.Города.Город, dbo.Страны.Страна order by КолличествоПерелетов DESC 
