select * from customers

---	question 1) find the data where customer_name 1 caracter a to n and 2 charcter a,s,b,e character
-- solve

select * from customers where contact_name ~* '^[a-m](a|s|b|e)'

--- 2) sort the data on postal code 1) digit range between (1-5) 2) last digit 5,2,3,0

select * from customers where postal_code ~* '^[1-5][0-9]{3}(5|2|3|0)$'

--- 3) sort the customer_name 1) first letter start [b-s] 2) second letter (a,e,b,d) or fifth digit will be a or d only
	
select * from customers where customer_name ~* '^[b-s](a|e|b|d)[a-z]{2}(a|d)'

-- 4) sort the city where 1)first letter start m only 2) last letter m|n only

select * from customers where city ~* '^(m)[a-z]{6}(m|n)'

--- 5) sort address where 1) fifth letter only c|d|n|m 

select * from customers where address ~* '^[a-z]{4}(c|d|n|m)'

select * from orders

-- 6) sort order_date month between 5-7

select * from orders where order_date :: varchar ~* '^[0-9]{4}-(0)[5-7]'

-- 7) sort order_date date last digit will be (5|7|9|0)

select * from orders where  order_date :: varchar ~* '^[0-9]{4}-[0-9]{2}-[0-9](5|7|9|0)'

-- 8) sort order_date where month is > 10

select * from orders where order_date :: varchar ~* '^[0-9]{4}-(11|12)'

-- 9) sort order_date where month is < 5 and < 10 and date is > 20 and < 25

	
	select * from orders where order_date :: varchar ~* '^[0-9]{4}-[0-9](6|7|8|9)-(21|22|23|24)'

--- 10) sort order_date where year 2022 only and month is 12

select * from orders where order_date :: varchar ~* '^(2022)-(12)'
