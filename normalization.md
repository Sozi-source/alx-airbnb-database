🧩 Database Schema (Normalized to 3NF)
| Column Name   | Data Type | Constraints                    | Description            |
| ------------- | --------- | ------------------------------ | ---------------------- |
| user_id       | UUID      | PRIMARY KEY, Indexed           | Unique user identifier |
| first_name    | VARCHAR   | NOT NULL                       | User’s first name      |
| last_name     | VARCHAR   | NOT NULL                       | User’s last name       |
| email         | VARCHAR   | UNIQUE, NOT NULL               | User’s email address   |
| password_hash | VARCHAR   | NOT NULL                       | Encrypted password     |
| phone_number  | VARCHAR   | NULL                           | Optional phone number  |
| role          | ENUM      | (guest, host, admin), NOT NULL | Defines user role      |
| created_at    | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP      | Record creation time   |


# ✅ Normalization Justification

## First Normal Form (1NF)
- Each table has a primary key (UUID).
- All fields contain atomic values (no repeating groups).
- Example: User table stores one email per user.

✅ Result: Database satisfies 1NF.

---

## Second Normal Form (2NF)
- All non-key attributes depend entirely on the primary key.
- No composite keys are used.
- Example: In the Booking table, total_price depends on booking_id, not on user_id or property_id alone.

✅ Result: Database satisfies 2NF.

---

## Third Normal Form (3NF)
- No transitive dependencies exist.
- Each non-key attribute depends only on the primary key.
- Example:
  - In User table, role depends on user_id, not email.
  - In Property table, description depends on property_id.
  - In Review table, rating depends on review_id only.

✅ Result: Database satisfies 3NF.

---


