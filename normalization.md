# Database Normalization (Up to 3NF)

## Step 1: First Normal Form (1NF)
- Each table has a primary key.
- Each field contains only atomic (indivisible) values.
- No repeating groups or arrays.

✅ Example:
The **User** table stores individual user details — each row represents one user with unique `user_id`.

## Step 2: Second Normal Form (2NF)
- Table is already in 1NF.
- All non-key attributes depend entirely on the primary key.

✅ Example:
In **Property**, all details (title, description, location, price_per_night) depend on `property_id` only.

## Step 3: Third Normal Form (3NF)
- Table is already in 2NF.
- No transitive dependencies (non-key attributes don’t depend on other non-key attributes).

✅ Example:
In **Booking**, `total_amount` depends on `booking_id` (not on `user_id` or `property_id`).

---

## Result
After applying normalization up to 3NF:
- Redundancy is minimized.
- Data consistency is maintained.
- Each table represents one concept clearly.

---

## Summary
The Airbnb database now meets 3NF standards, ensuring clean structure, fast queries, and easy maintenance. Each entity focuses on one purpose — Users manage bookings, Properties hold listing data, Bookings link users and properties, and Payments record transactions.
