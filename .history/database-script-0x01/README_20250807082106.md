#  PostgreSQL Database Schema – Booking Platform

This repository contains the SQL schema definition for a full-featured booking platform, including support for users, listings, bookings, reviews, payments, and location metadata.

---

## Schema Overview

The schema is designed with normalization and scalability in mind. It supports:

-  **Role-based user types** (guest, host, admin)
-  **Listings** with support for geolocation and property features
-  **Bookings** with status tracking
-  **Payments** linked to bookings
-  **Reviews** for both listings and users
-  **Locations** separated into countries, cities, and areas
-  **Images** attached to listings
-  **Extensions** like `uuid-ossp` for unique identifiers

---

##  Files

- `schema.sql` – Main SQL file containing all schema definitions.
- `README.md` – Project documentation (this file).

---

##  Schema Breakdown

### 🔹 Extensions
```sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
