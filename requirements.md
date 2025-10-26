# Airbnb Database Design - ER Diagram Requirements

## Entities Identified
1. **User**
   - user_id (PK)
   - name
   - email
   - phone
   - date_joined

2. **Property**
   - property_id (PK)
   - user_id (FK → User)
   - title
   - description
   - location
   - price_per_night

3. **Booking**
   - booking_id (PK)
   - user_id (FK → User)
   - property_id (FK → Property)
   - check_in_date
   - check_out_date
   - total_amount
   - status

4. **Payment**
   - payment_id (PK)
   - booking_id (FK → Booking)
   - amount
   - payment_date
   - payment_method
   - payment_status

---

## Relationships
- One **User** can own multiple **Properties**.
- One **User** can make multiple **Bookings**.
- One **Booking** is linked to one **Property**.
- One **Booking** has one **Payment**.

---

## Tools Used
- ER Diagram created using [draw.io](https://app.diagrams.net/)
- Output file: `airbnb_erd.png`

---

## Summary
This ER diagram models a simplified Airbnb system showing users, properties, bookings, and payments. The relationships ensure proper data integrity and scalability for a production-level database.
