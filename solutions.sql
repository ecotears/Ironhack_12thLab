select client_id
from client
where district_id = 1
order by client_id ASC
limit 5;

select client_id
from client
where district_id = 72
order by client_id DESC
limit 1;

select amount
from loan
order by amount ASC
limit 3;

select distinct status
from loan
order by status ;

select loan_id
from loan
order by payments DESC
limit 1;

select account_id, amount
from loan
order by account_id ASC
limit 5;

select account_id
from loan 
where duration = 60
order by amount ASC
limit 5;

select distinct k_symbol
from `order`
where k_symbol != ''
order by k_symbol;

select order_id
from `order`
where account_id = 34;

select distinct account_id 
from `order`
where order_id between 29540 and 29560;

select amount
from `order`
where account_to = 30067122;

select trans_id, date, type, amount
from trans
where account_id = 793
order by date desc
limit 10;

select district_id, count(client_id) as Number_clients
from client
where district_id < 10
group by district_id
order by district_id;

select type, count(card_id) as cards
from card
group by type
order by cards DESC;

select account_id, sum(amount)
from loan
group by account_id
order by sum(amount) DESC
LIMIT 10;

select date, count(loan_id) 
from loan
where date < 930907
group by date
order by date DESC;

select date, duration, count(loan_id)
from loan
where date between 971200 and 971231 
group by date, duration
order by date, duration ASC;

select account_id, type, sum(amount) as total_amount
from trans
where account_id = 396
group by account_id, type;


