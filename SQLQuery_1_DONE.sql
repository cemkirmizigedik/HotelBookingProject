-- I've added all the tables one below the other for a bigger picture
Select * from [2018]
union
Select * from [2019]
union
Select * from [2020]

--------------------------------

Select hotel,arrival_date_year,SUM((stays_in_weekend_nights + stays_in_week_nights)
* adr) as Revenue
from [2018] 
group by arrival_date_year,hotel
union
Select hotel,arrival_date_year,SUM((stays_in_weekend_nights + stays_in_week_nights)
* adr) as Revenue
from [2019]
group by arrival_date_year,hotel
union
Select hotel,arrival_date_year,SUM((stays_in_weekend_nights + stays_in_week_nights) 
* adr) as Revenue
from [2020]
group by arrival_date_year,hotel
order by hotel

-----------------------------------------------------------------------

Select * from [2018] left join market_segment as ms 
on [2018].market_segment = ms.market_segment
left join meal_cost as mc
on mc.meal = [2018].meal
union
Select * from [2019] left join market_segment as ms 
on [2019].market_segment = ms.market_segment
left join meal_cost as mc
on mc.meal = [2019].meal
union
Select * from [2020] left join market_segment as ms 
on [2020].market_segment = ms.market_segment
left join meal_cost as mc
on mc.meal = [2020].meal

-------------------------------------------------------------------------
