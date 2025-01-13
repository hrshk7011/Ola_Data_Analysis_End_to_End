# Ola_Data_Analysis_End_to_End 🚖


## 📌 Project Overview  
This project is a comprehensive analysis of Ola ride data using SQL for data exploration and Power BI for dashboard visualization. The aim is to provide actionable insights into ride booking patterns, revenue streams, cancellation trends, and customer/driver ratings. The dataset used includes key details such as booking statuses, payment methods, vehicle types, and ratings.

---

## 📊 Dataset Information  
The dataset contains the following key columns:  
- **Date**: The date of booking.  
- **Time**: The time of booking.  
- **Booking_ID**: Unique identifier for each booking.  
- **Booking_Status**: Status of the booking (e.g., Completed, Canceled).  
- **Customer_ID**: Unique identifier for each customer.  
- **Vehicle_Type**: Type of vehicle booked (e.g., Prime Sedan).  
- **Pickup_Location**: Starting point of the ride.  
- **Drop_Location**: Destination of the ride.  
- **Booking_Value**: Total ride cost.  
- **Payment_Method**: Method used for payment (e.g., Cash, Online).  
- **Ride_Distance**: Distance traveled during the ride.  
- **Driver_Ratings**: Ratings given to the driver by the customer.  
- **Customer_Rating**: Ratings given to the customer by the driver.  
- **Cancellation Details**: Information on cancellations by customers and drivers, including reasons.  

---

## 🛠️ Tools Used  
- **SQL**: For data exploration, cleaning, and analysis.  
- **Power BI**: For building interactive dashboards and visualizing key insights.  

---

## 📈 Dashboard Insights  
The Power BI dashboard consists of **5 interactive pages** with the following focus areas:  

### 1. **Overall**  
   - A brief interface showing a high-level summary of key metrics and insights.
   - ![Overall](https://github.com/user-attachments/assets/a92da9b0-b46b-45db-bf79-beacbe482ddd)


### 2. **Revenue**  
   - Analysis of **payment methods** to identify the revenue contribution from various modes of payment (e.g., Cash, Online).
   - ![Revenue](https://github.com/user-attachments/assets/c364f12a-d8a8-4971-becd-337817bebe74)


### 3. **Vehicle Type**  
   - Comparison of **booking value** and **distance traveled** by different vehicle types (e.g., Prime Sedan, Mini, Auto).
   - ![Vehicle Type](https://github.com/user-attachments/assets/d825e9d0-cae8-4e12-8070-e4b47e0e96f8)


### 4. **Cancellation**  
   - Detailed insights into cancellations:  
     - **By Driver**: Reasons for ride cancellations initiated by drivers.  
     - **By Customer**: Cancellations initiated by customers.
     - ![Cancellation](https://github.com/user-attachments/assets/67e89733-e6e3-48c5-840b-f7a384a8fe9c)


### 5. **Ratings**  
   - Analysis of average **customer ratings** and **driver ratings**, providing insights into overall satisfaction levels and areas for improvement.
   - ![Ratings](https://github.com/user-attachments/assets/4a7f7f20-3e8e-4eba-8c28-e93da22b190f)


---

## ⚡ Key Features of the Analysis  
- Identification of **popular vehicle types** based on booking values and distances.  
- Insights into **payment behavior** to optimize revenue collection methods.  
- Detailed breakdown of **cancellation trends**, including reasons for incomplete rides.  
- Analysis of **ratings** to assess service quality for both drivers and customers.  

---

## 📂 Project Structure  
The project is divided into the following components:  
1. **SQL Queries**: To explore and analyze the dataset by answering key business questions.  
2. **Power BI Dashboard**: A dynamic dashboard with 5 pages offering deep insights into the data.  

---

## 🔗 Visual Highlights  
- **Dashboard Preview**: [Include a snapshot or link to the dashboard here]  
- **Vehicle Images**: Used icons to represent various vehicle types for a more engaging visual experience.  

---

## 💡 Key Insights  
- **Revenue**: Online payment methods contribute significantly to the total revenue.  
- **Vehicle Usage**: Prime Sedans have the highest booking value and distances traveled.  
- **Cancellations**: Most cancellations are due to personal or vehicle-related issues by drivers.  
- **Ratings**: Average customer and driver ratings indicate a high level of satisfaction but highlight specific improvement areas.  

---

## 🚀 How to Use This Project  
1. Clone this repository to your local machine.  
2. Load the dataset into your SQL database for analysis.  
3. Open the Power BI file (`.pbix`) to explore the dashboard and insights.  
LINK-
app.powerbi.com/view?r=eyJrIjoiM2IwNmY1NDYtMjQwYy00MTY0LWIwOTYtNDY4MTVjZjI4ODMyIiwidCI6ImFkZjg3MmYwLTA1MTgtNDY3Zi1iMzUwLTAzNjMxODUzMTQxNCJ9

---

## 📌 Future Scope  
- Include predictive modeling to forecast ride demand.  
- Perform geospatial analysis for pickup and drop-off locations.  
- Enhance cancellation analysis with more detailed reasons and solutions.  

---
