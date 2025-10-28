# Database Normalization (Up to 3NF)

## Step 1: First Normal Form (1NF)
- Each table has a primary key (UUID).
- All fields contain atomic values (no repeating groups).
- Example: User table stores one email per user.

✅ Result: Database satisfies 1NF.

---

## Step 2: Second Normal Form (2NF)
- All non-key attributes depend entirely on the primary key.
- No composite keys are used.
- Example: In the Booking table, total_price depends on booking_id, not on user_id or property_id alone.

✅ Result: Database satisfies 2NF.

---

## Step 3: Third Normal Form (3NF)
- No transitive dependencies exist.
- Each non-key attribute depends only on the primary key.
- Example:
  - In User table, role depends on user_id, not email.
  - In Property table, description depends on property_id.
  - In Review table, rating depends on review_id only.

✅ Result: Database satisfies 3NF.

---


