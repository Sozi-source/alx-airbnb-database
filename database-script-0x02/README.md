# Airbnb Database Project – Task 3: Seed the Database with Sample Data

## Objective
Populate the Airbnb database with realistic sample data for testing and development purposes. This includes adding sample records for **Users, Properties, Bookings, Payments, Reviews, and Messages**.

## Instructions

1. **Write SQL INSERT statements** to add sample data to each table.
2. Ensure data **reflects real-world usage**, e.g.:
   - Multiple users (hosts and guests)
   - Properties with different locations and prices
   - Bookings with varying dates and statuses
   - Payments corresponding to bookings
   - Reviews linked to guests and properties
   - Messages exchanged between users
3. Follow proper **foreign key constraints** to avoid insertion errors.
4. Use **meaningful sample data** for easier testing and verification.

## Sample Data Guidelines

| Table       | Example Data Points                                  |
|------------|------------------------------------------------------|
| `users`    | Hosts and guests with names, emails, roles          |
| `properties` | Names, locations, prices, host references         |
| `bookings`  | Guest bookings for properties, start & end dates   |
| `payments`  | Booking payments, amount, method, date             |
| `reviews`   | Ratings and comments for properties                |
| `messages`  | Text messages exchanged between users              |

## Deliverables

1. A SQL script file named `data_seed.sql` containing:
   - `INSERT INTO` statements for all tables.
   - At least **5–10 sample records per table**.
2. Ensure the script **can be executed without errors** on the database schema created in Task 2.

## Scoring Criteria

- Proper **foreign key references** maintained.
- Sample data is **realistic and varied**.
- Script runs **successfully without errors**.
- Data adequately represents typical Airbnb usage. 
