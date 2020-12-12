#количество человек, которые сейчас пользуются прокатом
select count(user_rent.id) as count_active_user from user_rent 
left join payment on user_rent.payment_id=payment.id 
where user_rent.rent_type="now";

#количество точек аренды у компании
select company_name, count(company_id) as company_count from company
left join place_of_rent on company.id = place_of_rent.company_id 
group by company.id;

#средняя цена зимнего инвентаря
select avg(cost) as avg_cost_winter from item WHERE season ="winter" OR season ="all";

#максимальна цена скидки 
select max(disount_value) as max_discount_value from discount;
