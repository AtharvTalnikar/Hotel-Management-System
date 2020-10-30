# Hotel-Management-System
A simple Hotel Management System using SQL
HOTEL MANAGEMENT SYSTEM:

Every hotel branch has a branch id,name, location. 
Customers(CUSTOMER_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,COUNTRY,EMAIL_ID) visit the hotel and select a room(ROOM_NO,TYPE,RATE,BRANCH_ID,STATUS) from a variety of rooms.
Every room has a different price.The duration of the customers stay is clocked in days.
The hotel also has a lot of leisure facilities(NAME,PRICE_PER_HOUR,BRANCH_ID) for the customers to use but are charged separately for that.
Each person of the staff(EMPLOYEE_ID,NAME,SALARY,SUPERVISOR_ID,BRANCH_ID) has a fixed designation. There is one manager assigned to every service(NAME,MANAGER_ID).
At the end of the trip the customer is given the bill(BILL_NO,CUSTOMER_ID,AMOUNT).
Reservation(PNR,CHECK_IN_DATE,CHECK_OUT_DATE,ROOM_NO,CUSTOMER_ID) keeps a check of number of days of stay.
Uses_facilities(CUSTOMER_ID,FACILITY_NAME,NO_OF_HOURS,BRANCH_ID) keeps track of the facilities used by the customer.
