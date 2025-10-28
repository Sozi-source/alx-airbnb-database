# 🧩 Database Schema (Normalized to 3NF)

# User Table
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


# Property Table

| Column Name     | Data Type | Constraints                 | Description                 |
| --------------- | --------- | --------------------------- | --------------------------- |
| property_id     | UUID      | PRIMARY KEY, Indexed        | Unique property identifier  |
| host_id         | UUID      | FOREIGN KEY → User(user_id) | Property owner (host)       |
| name            | VARCHAR   | NOT NULL                    | Property name               |
| description     | TEXT      | NOT NULL                    | Description of the property |
| location        | VARCHAR   | NOT NULL                    | Property location           |
| price_per_night | DECIMAL   | NOT NULL                    | Cost per night              |
| created_at      | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP   | Record creation time        |
| updated_at      | TIMESTAMP | ON UPDATE CURRENT_TIMESTAMP | Last update time            |


# Booking Table
| Column Name | Data Type | Constraints                              | Description                |
| ----------- | --------- | ---------------------------------------- | -------------------------- |
| booking_id  | UUID      | PRIMARY KEY, Indexed                     | Unique booking identifier  |
| property_id | UUID      | FOREIGN KEY → Property(property_id)      | Related property           |
| user_id     | UUID      | FOREIGN KEY → User(user_id)              | Guest who made the booking |
| start_date  | DATE      | NOT NULL                                 | Check-in date              |
| end_date    | DATE      | NOT NULL                                 | Check-out date             |
| total_price | DECIMAL   | NOT NULL                                 | Total booking price        |
| status      | ENUM      | (pending, confirmed, canceled), NOT NULL | Booking status             |
| created_at  | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                | Record creation time       |


# Payment Table
| Column Name    | Data Type | Constraints                             | Description               |
| -------------- | --------- | --------------------------------------- | ------------------------- |
| payment_id     | UUID      | PRIMARY KEY, Indexed                    | Unique payment identifier |
| booking_id     | UUID      | FOREIGN KEY → Booking(booking_id)       | Related booking           |
| amount         | DECIMAL   | NOT NULL                                | Payment amount            |
| payment_date   | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP               | Date of payment           |
| payment_method | ENUM      | (credit_card, paypal, stripe), NOT NULL | Payment method            |


# Review Table
| Column Name | Data Type | Constraints                                 | Description              |
| ----------- | --------- | ------------------------------------------- | ------------------------ |
| review_id   | UUID      | PRIMARY KEY, Indexed                        | Unique review identifier |
| property_id | UUID      | FOREIGN KEY → Property(property_id)         | Reviewed property        |
| user_id     | UUID      | FOREIGN KEY → User(user_id)                 | Reviewer (guest)         |
| rating      | INTEGER   | CHECK (rating >=1 AND rating <=5), NOT NULL | Star rating 1–5          |
| comment     | TEXT      | NOT NULL                                    | Review comment           |
| created_at  | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                   | Review creation time     |


# Message Table
| Column Name  | Data Type | Constraints                 | Description               |
| ------------ | --------- | --------------------------- | ------------------------- |
| message_id   | UUID      | PRIMARY KEY, Indexed        | Unique message identifier |
| sender_id    | UUID      | FOREIGN KEY → User(user_id) | Message sender            |
| recipient_id | UUID      | FOREIGN KEY → User(user_id) | Message recipient         |
| message_body | TEXT      | NOT NULL                    | Content of the message    |
| sent_at      | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP   | Time message was sent     |
