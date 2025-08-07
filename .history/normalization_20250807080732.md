# Normalization Process – Airbnb Database

## First Normal Form (1NF)
- All attributes contain only atomic values.
- No multivalued or repeating fields.

## Second Normal Form (2NF)
- No partial dependencies exist since all tables use a single-attribute primary key.
- All non-key attributes fully depend on the primary key.

## Third Normal Form (3NF)
- No transitive dependencies observed.
- Every non-key attribute is directly dependent on the primary key and not another non-key field.

## Final Verdict
The database schema has been reviewed and adheres to 3NF principles. Each table is efficiently designed for data integrity, reducing redundancy, and ensuring consistent relationships between entities.
