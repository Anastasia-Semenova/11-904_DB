#сколько у каждой компании мест аренды
select company_id, company_name, count(company.id) from company 
left join place_of_rent on company.id = place_of_rent.company_id 
group by company.id;

#вывести человека, который первым воспользовался прокатом
select min(start_time), user_rent.id from user_rent 
left join lease_period on user_rent.lease_period_id=lease_period.id;

#количество человек, которые сейчас пользуются прокатом и оплатили наличкой
select count(user_rent.id) from user_rent left join payment on user_rent.payment_id=payment.id 
where payment_type="cash" and user_rent.rent_type="now";

#количество видов спорта, для которых нужно зимнее оборудование в наличии
select count(distinct sport.id) from sport 
left join sport_item on sport.id=sport_item.sport_id
left join item on sport_item.item_id = item.id where item.season="winter" and item.suitable_for_rent>0;

