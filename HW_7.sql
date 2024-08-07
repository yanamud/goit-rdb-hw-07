Use hw_3;

### 1 ### 
# Напишіть SQL-запит, який для таблиці orders з атрибута date витягує рік, місяць і число. 
select id, date, year(date) as year, month(date) as month, day(date) as day from orders;

### 2 ### 
# Напишіть SQL-запит, який для таблиці orders до атрибута date додає один день. 
select id, date , date + interval 1 day as new_date from orders;

### 3 ### 
# Напишіть SQL-запит, який для таблиці orders для атрибута date відображає кількість 
# секунд з початку відліку (показує його значення timestamp). 
select id, date, UNIX_TIMESTAMP(date) as timestamp from orders;

### 4 ### 
# Напишіть SQL-запит, який рахує, скільки таблиця orders містить рядків з атрибутом date 
# у межах між 1996-07-10 00:00:00 та 1996-10-08 00:00:00.
select count(date) from orders
where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

### 5 ### 
# Напишіть SQL-запит, який для таблиці orders виводить на екран 
# атрибут id, атрибут date та JSON-об’єкт {"id": <атрибут id рядка>, "date": <атрибут date рядка>}. 
select id, date, json_object('id', id, 'date', date) as json_object 
from orders;
