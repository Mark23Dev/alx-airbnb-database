# Join Queries - Airbnb Clone Database

This directory contains advanced SQL queries using different types of SQL joins to retrieve related data from the database.

## Files

- **joins_queries.sql**: Contains all join-based SQL queries as per task requirements.

## Queries Description

### 1. INNER JOIN – Bookings and Users
This query retrieves all bookings along with the details of the user who made each booking.

**Tables Involved**: `bookings`, `users`  
**Join Type**: INNER JOIN  
**Use Case**: Display user information alongside their bookings.

### 2. LEFT JOIN – Properties and Reviews
This query retrieves all properties and their corresponding reviews. Properties without any reviews will also be included.

**Tables Involved**: `properties`, `reviews`  
**Join Type**: LEFT JOIN  
**Use Case**: Useful for listing properties with or without feedback.

### 3. FULL OUTER JOIN – Users and Bookings
This query returns all users and all bookings, even if a user hasn’t made a booking or a booking isn’t linked to a valid user.

**Tables Involved**: `users`, `bookings`  
**Join Type**: FULL OUTER JOIN  
**Use Case**: Used for data reconciliation or analytics to find unlinked data.

> **Note**: FULL OUTER JOIN is not supported in MySQL. If using MySQL, replace it with:
```sql
SELECT ...
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
UNION
SELECT ...
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id;
