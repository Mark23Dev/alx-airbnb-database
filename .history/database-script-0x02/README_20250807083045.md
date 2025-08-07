## Sample Data

The `sample_data.sql` script seeds the database with realistic entries for testing:

- **3 Users** (guest, host, admin)
- **2 Properties** hosted by Bob
- **2 Bookings** made by Alice
- **1 Payment** for a confirmed booking
- **2 Reviews** left by Alice
- **2 Messages** exchanged between Alice and Bob

All UUIDs are generated dynamically using `uuid_generate_v4()` for realism.

Run this after executing `schema.sql` to populate the system.
