# ALX Airbnb Database Schema

## Task: Design Database Schema (DDL)

**Objective:**  
Create SQL queries to define the database schema for an Airbnb-like application. This involves creating tables, defining primary and foreign keys, setting constraints, and creating indexes for performance optimization.

---

## Database Entities

The database consists of the following main entities:

1. **Users**  
   Stores information about all users, including guests, hosts, and admins.  
   - Fields: `user_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `role`, `created_at`, `updated_at`  
   - Constraints:  
     - `user_id` is the primary key (UUID)  
     - `email` is unique  
     - `role` restricted to `'guest'`, `'host'`, or `'admin'`  

2. **Properties**  
   Stores details about properties listed by hosts.  
   - Fields: `property_id`, `host_id`, `name`, `description`, `location`, `price_per_night`, `created_at`, `updated_at`  
   - Constraints:  
     - `property_id` is the primary key  
     - `host_id` references `users(user_id)`  
     - `price_per_night` must be non-negative  

3. **Bookings**  
   Tracks reservations made by guests.  
   - Fields: `booking_id`, `property_id`, `guest_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`  
   - Constraints:  
     - Foreign keys: `property_id` → `properties`, `guest_id` → `users`  
     - `status` limited to `'pending'`, `'confirmed'`, `'canceled'`  
     - `total_price` must be non-negative  

4. **Payments**  
   Records payments made for bookings.  
   - Fields: `payment_id`, `booking_id`, `amount`, `payment_method`, `payment_date`  
   - Constraints:  
     - Foreign key: `booking_id` → `bookings`  
     - `amount` must be non-negative  

5. **Reviews**  
   Stores guest reviews for properties.  
   - Fields: `review_id`, `property_id`, `guest_id`, `rating`, `comment`, `created_at`  
   - Constraints:  
     - Foreign keys: `property_id` → `properties`, `guest_id` → `users`  
     - `rating` must be between 1 and 5  

6. **Messages**  
   Handles messaging between users.  
   - Fields: `message_id`, `sender_id`, `recipient_id`, `message_text`, `sent_at`  
   - Constraints:  
     - Foreign keys: `sender_id` & `recipient_id` → `users`  

---

## Features & Constraints

- Primary keys are **UUIDs** for uniqueness.
- Proper **foreign key relationships** maintain data integrity.
- **CHECK constraints** enforce valid values for roles, statuses, ratings, and prices.
- **Indexes** created on commonly queried columns for performance optimization.
- Timestamps (`created_at`, `updated_at`) automatically generated.

---

## ERD Diagram

Below is a visual representation of the database relationships:

[Users] 1 --- * [Properties]
[Users] 1 --- * [Bookings] * --- 1 [Properties]
[Bookings] 1 --- 1 [Payments]
[Users] 1 --- * [Reviews] * --- 1 [Properties]
[Users] 1 --- * [Messages] * --- 1 [Users]

markdown
Copy code

- `1 --- *` indicates a one-to-many relationship.
- `* --- 1` indicates many-to-one relationship.

> You can generate a proper ERD diagram using tools like [draw.io](https://app.diagrams.net/), [dbdiagram.io](https://dbdiagram.io/), or PostgreSQL pgAdmin ERD tool.

---

## Technologies

- **Database:** PostgreSQL (DDL designed for PostgreSQL syntax)
- **SQL Features Used:**  
  - `CREATE TABLE`  
  - `PRIMARY KEY`  
  - `FOREIGN KEY`  
  - `CHECK` constraints  
  - `INDEX`  
  - `DEFAULT` values for timestamps and UUIDs  

---

## Usage

1. Install PostgreSQL.
2. Connect to your database.
3. Execute the SQL DDL script to create the schema.
4. Verify table creation and constraints using `\d` commands in psql or equivalent.

---

## Author

- Wilfred Osozi  
- ALX Project: Airbnb Database