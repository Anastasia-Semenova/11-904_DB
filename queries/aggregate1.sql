-- 1. количество инструментов для каждого спорта по названиям
select sport.`name` as sport_name, count(item_id) as item_count from sport_item
left join sport on sport_id=sport.id
left join item on item_id=item.id
group by sport_id;

-- 2. Самый дорогой заказ каждом месте аренды 
select place_of_rent.id, place_of_rent_name as place_name, max(payment_value) as max_payment, min(payment_value) as min_payment from payment 
left join user_rent on user_rent.payment_id=payment.id
left join place_of_rent on place_of_rent.id=user_rent.place_of_rent_id
group by place_of_rent_id;

-- 3. Количество заказов в каждой компании
select company.id, company_name,  count(user_rent.id) from user_rent
left join place_of_rent on place_of_rent_id=place_of_rent.id
left join company on company_id=company.id
group by company.id;
