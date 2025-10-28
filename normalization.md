🧩 Database Schema (Normalized to 3NF)
1. User Table
Field Name	Data Type	Constraints	Description
user_id	UUID	PRIMARY KEY, Indexed	Unique user identifier
first_name	VARCHAR	NOT NULL	User’s first name
last_name	VARCHAR	NOT NULL	User’s last name
email	VARCHAR	UNIQUE, NOT NULL	User’s email address
password_hash	VARCHAR	NOT NULL	Encrypted password
phone_number	VARCHAR	NULL	Optional phone number
role	ENUM	(guest, host, admin), NOT NULL	Defines user role
created_at	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	Record creation time
2. Property Table
Field Name	Data Type	Constraints	Description
property_id	UUID	PRIMARY KEY, Indexed	Unique property identifier
host_id	UUID	FOREIGN KEY → User(user_id)	Property owner (host)
name	VARCHAR	NOT NULL	Property name
description	TEXT	NOT NULL	Description of the property
location	VARCHAR	NOT NULL	Property location
price_per_night	DECIMAL	NOT NULL	Cost per night
created_at	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	Record creation time
updated_at	TIMESTAMP	ON UPDATE CURRENT_TIMESTAMP	Last update time
3. Booking Table
Field Name	Data Type	Constraints	Description
booking_id	UUID	PRIMARY KEY, Indexed	Unique booking identifier
property_id	UUID	FOREIGN KEY → Property(property_id)	Related property
user_id	UUID	FOREIGN KEY → User(user_id)	Guest who made booking
start_date	DATE	NOT NULL	Check-in date
end_date	DATE	NOT NULL	Check-out date
total_price	DECIMAL	NOT NULL	Total booking price
status	ENUM	(pending, confirmed, canceled), NOT NULL	Booking status
created_at	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	Record creation time
4. Payment Table
Field Name	Data Type	Constraints	Description
payment_id	UUID	PRIMARY KEY, Indexed	Unique payment identifier
booking_id	UUID	FOREIGN KEY → Booking(booking_id)	Related booking
amount	DECIMAL	NOT NULL	Payment amount
payment_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	Date of payment
payment_method	ENUM	(credit_card, paypal, stripe), NOT NULL	Method of payment
5. Review Table
Field Name	Data Type	Constraints	Description
review_id	UUID	PRIMARY KEY, Indexed	Unique review identifier
property_id	UUID	FOREIGN KEY → Property(property_id)	Reviewed property
user_id	UUID	FOREIGN KEY → User(user_id)	Reviewer (guest)
rating	INTEGER	CHECK (rating >= 1 AND rating <= 5), NOT NULL	Star rating (1–5)
comment	TEXT	NOT NULL	Review comment
created_at	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	Review creation time
6. Message Table
Field Name	Data Type	Constraints	Description
message_id	UUID	PRIMARY KEY, Indexed	Unique message identifier
sender_id	UUID	FOREIGN KEY → User(user_id)	Message sender
recipient_id	UUID	FOREIGN KEY → User(user_id)	Message recipient
message_body	TEXT	NOT NULL	Content of the message
sent_at	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	Time message was sent


# ✅ Normalization Justification

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


