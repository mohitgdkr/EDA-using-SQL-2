--creating database
create database Hospitality;

--checking all records
use Hospitality;
select * from hotels;

--checking the total bookings
select count(*) as total_bookings from hotels as total_records;

--checking the total revenue
select round(sum(avg_room_rate * stay_duration),2) as total_revenue from hotels;

--checking the duplicates
select distinct(reservation_id) from hotels;

--changing data type of special_requests_flag and advanced booking
alter table hotels
alter column special_requests_flag varchar(50);

alter table hotels
alter column advanced_booking varchar(50);

--changing the values in special_requests_flag and advanced_booking - 0 to 'No' and 1 to 'Yes'
update hotels
set special_requests_flag = 'Yes' where special_requests_flag = 1;
update hotels
set special_requests_flag = 'No' where special_requests_flag = 0;

update hotels
set advanced_booking = 'Yes' where advanced_booking = 1; 
update hotels
set advanced_booking = 'No' where advanced_booking = 0; 

--rounding of average room rate
update hotels
set avg_room_rate = round(avg_room_rate, 2);

--checking null values
select * from hotels where reservation_id is null or avg_room_rate is null or check_in_date is null;

--checking the details of room rates
select max(avg_room_rate) as highest_rate, min(avg_room_rate) as lowest_rate, (max(avg_room_rate) - min(avg_room_rate)) as range_rate from hotels;

select distinct(avg_room_rate) from hotels
order by avg_room_rate asc;

select round(avg(avg_room_rate),2) as avg_rate from hotels;

--checking the room types
select distinct(room_type) from hotels;

--checking the booking channels
select distinct(booking_channel) from hotels;

--checking the property types
select distinct(property) from hotels;

--checking the average cost of rooms
select round(avg(avg_room_rate),2) as avg_rate, room_type from hotels
group by room_type
order by avg(avg_room_rate) desc;

--checking the total revenue from each room type
select round(sum(Avg_Room_Rate * stay_duration),2) as total_revenue, room_type from hotels
group by room_type
order by total_revenue desc;

--checking the total revenue from each property type
select round(sum(avg_room_rate * stay_duration),2) as total_revenue, property from hotels
group by property
order by total_revenue desc;

--checking the bookings as per room type
select count(reservation_id) as bookings, room_type from hotels
group by room_type
order by count(reservation_id) desc;

--checking the bookings as per booking channels
select count(reservation_id) as bookings, booking_channel from hotels
group by booking_channel
order by count(reservation_id) desc;

--checking the bookings as per property type
select count(*) as bookings, property from hotels
group by property
order by count(*) desc;

--checking the advanced bookings
select count(*) as bookings, advanced_booking from hotels
group by advanced_booking
order by count(*) desc;

--checking the preference for the rate type
select count(*) as bookings, rate_type as charge_day from hotels
group by rate_type
order by count(*) desc;

--checking the bookings having special requests
select count(*) as bookings, special_requests_flag from hotels
group by special_requests_flag
order by count(*) desc;

--checking the reservation status
select count(*) as bookings, reservation_status from hotels
group by reservation_status
order by count(*) desc;

--checking the cost of property
select round(avg(avg_room_rate),2) as avg_cost, property from hotels
group by property
order by avg(avg_room_rate) desc;

--checking the timeline of the data
select distinct(check_in_date) from hotels
order by check_in_date asc;
select distinct(date) from hotels
order by date asc;

--checking the revenue by months
select round(sum(avg_room_rate*stay_duration),2) as revenue, month(check_in_date) as months from hotels
group by month(check_in_date)
order by revenue desc;

--checking the demographics of the bookings
select sum(adults) from hotels;

select sum(children) from hotels;

select sum(adults + children) as total_occupants from hotels;

select sum(adults + children) as total_occupants, room_type from hotels
group by room_type
order by total_occupants desc;

select sum(adults + children) as total_occupants, Property from hotels
group by property
order by total_occupants desc;

--checking the correlation between bookings and occupants w.r.t room type
select count(reservation_id) as total_bookings, sum(adults + children) as total_occupants, room_type from hotels
group by room_type
order by total_occupants desc;

--checking the correlation between bookings and occupants w.r.t property type
select count(reservation_id) as total_bookings, sum(adults + children) as total_occupants, Property from hotels
group by Property
order by total_occupants desc;

--checking the average stay duration 
select avg(stay_duration) from hotels;

