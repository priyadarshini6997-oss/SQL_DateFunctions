create database timeDB;
use timeDB;

create table events(
id int primary key auto_increment,
event_name varchar(50),
event_date date
);

insert into events(event_name,event_date)values
('Music Festival','2025-01-12'),
('Tech Conference','2025-03-05'),
('Sports Meet','2025-07-19');

select now() as current_datetime;

select event_name,date_format(event_date,'%d-%m-%y') as formatted_date
from events;

select event_name,
year(event_date) as event_year,
month(event_date) as event_month
from events;

select 
concat(event_name,'is on',event_date) as event_function
from events;
