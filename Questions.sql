DROP TABLE bookingdata CASCADE;
CREATE TABLE bookings (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(20),
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(20),
    Vehicle_Type VARCHAR(20),
    Pickup_Location VARCHAR(50),
    Drop_Location VARCHAR(50),
    V_TAT INT, 
    C_TAT INT, 
    Canceled_Rides_by_Customer VARCHAR(100),
    Canceled_Rides_by_Driver VARCHAR(100),
    Incomplete_Rides VARCHAR(10),
    Incomplete_Rides_Reason VARCHAR(100),
    Booking_Value INT,
    Payment_Method VARCHAR(50),
    Ride_Distance FLOAT,
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    Vehicle_Images VARCHAR(50)
);

COPY bookings FROM 'C:\Users\asus\OneDrive\Desktop\PROJECT\ola bookings.csv' DELIMITER ',' CSV HEADER NULL AS 'null';

SELECT * FROM bookings;

-- 1. Retrieve all successful bookings:
Select * FROM bookings WHERE Booking_Status = 'Success';

-- 2. Find the average ride distance for each vehicle type:
Select Vehicle_type, AVG(Ride_distance) as avg_ride_distance from bookings
GROUP BY Vehicle_type
ORDER BY Vehicle_type;

-- 3. Get the total number of cancelled rides by customers:
Create view canceled_rides_by_customers as
Select Count(*) from bookings
Where Booking_status = 'Canceled by Customer';

Select * from canceled_rides_by_customers;

-- 4. List the top 5 customers who booked the highest number of rides:
Create View Top_5_Customers as 
Select Customer_id, count(*) as Number_of_rides from bookings 
Group by Customer_id
Order by Number_of_rides desc
Limit 5;

Select * From Top_5_Customers;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create view Rides_cacelled_by_driver_due_to_personal_and_car_related_reason as
Select count(*) from bookings 
Where Booking_status = 'Canceled by Driver' and Canceled_rides_by_driver = 'Personal & Car related issue';

Select * from Rides_cacelled_by_driver_due_to_personal_and_car_related_reason;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select max(driver_ratings) as max_driver_rating, min(driver_ratings) as min_driver_rating from bookings 
	where vehicle_type = 'Prime Sedan';


-- 7. Retrieve all rides where payment was made using UPI:
Select * from bookings 
where payment_method = 'UPI';

-- 8. Find the average customer rating per vehicle type:
Select Vehicle_type, Avg(customer_rating) as avg_customer_ratings from bookings 
group by Vehicle_type;

-- 9. Calculate the total booking value of rides completed successfully:
Create view total_value_of_successful_rides as
Select Count(*) from bookings 
where booking_status = 'Success';

Select * from total_value_of_successful_rides;

-- 10. List all incomplete rides along with the reason:
Create view List_of_incomplete_rides_with_reason as 
Select Booking_id, incomplete_rides_reason from bookings where incomplete_rides = 'Yes';

Select * from List_of_incomplete_rides_with_reason;


