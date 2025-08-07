# ERD Requirements – alx-airbnb-database

This ERD represents the relational design for the alx Airbnb-like platform.

## Entities
- User
- Property
- Booking
- Payment
- Review
- Message

## Relationships
- Users can book properties (1:M)
- Users can host properties (1:M)
- Users can review properties (1:M)
- Properties can have multiple bookings (1:M)
- Properties can have multiple reviews (1:M)
- Bookings can have one payment (1:1)
- Users can message each other (M:M with self-reference)

## Tool
The diagram was created using Draw.io and exported in both PNG and XML formats.

