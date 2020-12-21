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

-- 4. Максимальный срок аренды, минимальный срок аренды, средний срок аренды
select max(end_time - start_time) as max_lease_petiod, 
	min(end_time - start_time) as min_lease_petiod, avg(end_time - start_time) as avg_lease_petiod from lease_period;

-- 5. email пользователя, номер заказа, количество предметов в заказе, средняя цена позиции в заказе
select email as user_email, user_rent.id as rent_id, 
	count(item.id) as items_count, (payment_value / count(item.id)) as avg_cost_for_item from `user_rent`
left join `service_user` on service_user_id = service_user.id
left join `user_rent_item` on user_rent_id = user_rent.id
left join `item` on `user_rent_item`.item_id = item.id
left join `payment` on payment.id = payment_id
group by user_rent.id;

-- 6. Найдити предметы, пригодные для использования по точкам аренды с адресами
select item_name, place_of_rent_name as place, 
	CONCAT(address.district, ', ', address.street, ', ', address.building,  ', ', address.premises) as address from item
left join place_of_rent on place_of_rent_id = place_of_rent.id
left join address on address_id = address.id
where suitable_for_rent = 1;

-- 7. Найти место, в котором есть предмет с таким названием и который пригоден для использования
select item_name, place_of_rent_name from place_of_rent
	left join item on place_of_rent_id = place_of_rent.id
    where item_name = 'a' and suitable_for_rent = 1;