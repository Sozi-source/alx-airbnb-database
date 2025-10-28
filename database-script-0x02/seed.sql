INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('f47ac10b-58cc-4372-a567-0e02b2c3d479','Alice','Wanjiku','alice@example.com','hashedpassword1','0712345678','guest',CURRENT_TIMESTAMP),
('c9bf9e57-1685-4c89-bafb-ff5af830be8a','Bob','Otieno','bob@example.com','hashedpassword2','0723456789','host',CURRENT_TIMESTAMP),
('3fa85f64-5717-4562-b3fc-2c963f66afa6','Catherine','Kamau','catherine@example.com','hashedpassword3',NULL,'admin',CURRENT_TIMESTAMP),
('a1234567-89ab-cdef-0123-456789abcdef','David','Muthoni','david@example.com','hashedpassword4','0733456789','guest',CURRENT_TIMESTAMP),
('b2345678-9abc-def0-1234-56789abcdef0','Emily','Njoroge','emily@example.com','hashedpassword5','0744567890','host',CURRENT_TIMESTAMP),
('c3456789-abcd-ef01-2345-6789abcdef01','Frank','Omondi','frank@example.com','hashedpassword6','0755678901','guest',CURRENT_TIMESTAMP),
('d456789a-bcde-f012-3456-789abcdef012','Grace','Wangari','grace@example.com','hashedpassword7',NULL,'host',CURRENT_TIMESTAMP),
('e56789ab-cdef-0123-4567-89abcdef0123','Henry','Kimani','henry@example.com','hashedpassword8','0766789012','guest',CURRENT_TIMESTAMP),
('f6789abc-def0-1234-5678-9abcdef01234','Ivy','Mutua','ivy@example.com','hashedpassword9','0777890123','host',CURRENT_TIMESTAMP),
('a789abcd-ef01-2345-6789-abcdef012345','John','Ochieng','john@example.com','hashedpassword10','0788901234','guest',CURRENT_TIMESTAMP);

INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
('9a2b0e9e-bc2d-4a91-a0b5-1f414b58a7ab','c9bf9e57-1685-4c89-bafb-ff5af830be8a','Beachfront Villa','Beautiful villa with sea view','Mombasa',250.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('d1e4f8a7-7f1b-48b0-9e3c-4c5a9e2c5f7b','c9bf9e57-1685-4c89-bafb-ff5af830be8a','City Apartment','Modern apartment in downtown','Nairobi',120.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('f2a3c5b7-8d9e-4f1a-9b2c-3d4e5f6a7b8c','b2345678-9abc-def0-1234-56789abcdef0','Countryside Cottage','Peaceful cottage near the hills','Naivasha',180.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('a3b4c5d6-7e8f-4a9b-8c0d-1e2f3a4b5c6d','d456789a-bcde-f012-3456-789abcdef012','Mountain Cabin','Cozy cabin with mountain view','Nakuru',200.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('b4c5d6e7-8f9a-4b0c-9d1e-2f3a4b5c6d7e','f6789abc-def0-1234-5678-9abcdef01234','Lake House','House on the lakeside','Kisumu',220.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('c5d6e7f8-9a0b-4c1d-8e2f-3a4b5c6d7e8f','e56789ab-cdef-0123-4567-89abcdef0123','Downtown Studio','Compact studio in city center','Nairobi',100.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('d6e7f8a9-0b1c-4d2e-9f3a-4b5c6d7e8f9a','d456789a-bcde-f012-3456-789abcdef012','Safari Lodge','Luxury lodge near Maasai Mara','Narok',350.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('e7f8a9b0-1c2d-4e3f-0a4b-5c6d7e8f9a0b','f6789abc-def0-1234-5678-9abcdef01234','Beach Bungalow','Small bungalow on the beach','Mombasa',180.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('f8a9b0c1-2d3e-4f5a-1b6c-7d8e9f0a1b2c','b2345678-9abc-def0-1234-56789abcdef0','Hilltop Villa','Villa with panoramic hill views','Nakuru',280.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('a9b0c1d2-3e4f-5a6b-2c7d-8e9f0a1b2c3d','e56789ab-cdef-0123-4567-89abcdef0123','City Loft','Spacious loft in city center','Nairobi',150.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);


INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('2a5f1d3b-7c8f-4c10-99fa-1c2d3e4b5f6a','9a2b0e9e-bc2d-4a91-a0b5-1f414b58a7ab','f47ac10b-58cc-4372-a567-0e02b2c3d479','2025-11-01','2025-11-05',1000.00,'confirmed',CURRENT_TIMESTAMP),
('8b7c2d4f-1e3a-4f9c-80f3-2d5e7a9b1c2d','d1e4f8a7-7f1b-48b0-9e3c-4c5a9e2c5f7b','f47ac10b-58cc-4372-a567-0e02b2c3d479','2025-12-10','2025-12-12',240.00,'pending',CURRENT_TIMESTAMP),
('a1b2c3d4-5e6f-7a8b-9c0d-1e2f3a4b5c6d','f2a3c5b7-8d9e-4f1a-9b2c-3d4e5f6a7b8c','a1234567-89ab-cdef-0123-456789abcdef','2025-11-15','2025-11-18',540.00,'confirmed',CURRENT_TIMESTAMP),
('b2c3d4e5-6f7a-8b9c-0d1e-2f3a4b5c6d7e','a3b4c5d6-7e8f-4a9b-8c0d-1e2f3a4b5c6d','e56789ab-cdef-0123-4567-89abcdef0123','2025-12-05','2025-12-10',1000.00,'canceled',CURRENT_TIMESTAMP),
('c3d4e5f6-7a8b-9c0d-1e2f-3a4b5c6d7e8f','b4c5d6e7-8f9a-4b0c-9d1e-2f3a4b5c6d7e','f47ac10b-58cc-4372-a567-0e02b2c3d479','2025-12-20','2025-12-25',1100.00,'confirmed',CURRENT_TIMESTAMP),
('d4e5f6a7-8b9c-0d1e-2f3a-4b5c6d7e8f9a','c5d6e7f8-9a0b-4c1d-8e2f-3a4b5c6d7e8f','f47ac10b-58cc-4372-a567-0e02b2c3d479','2025-11-21','2025-11-23',200.00,'pending',CURRENT_TIMESTAMP),
('e5f6a7b8-9c0d-1e2f-3a4b-5c6d7e8f9a0b','d6e7f8a9-0b1c-4d2e-9f3a-4b5c6d7e8f9a','c3456789-abcd-ef01-2345-6789abcdef01','2025-12-01','2025-12-03',400.00,'confirmed',CURRENT_TIMESTAMP),
('f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c','e7f8a9b0-1c2d-4e3f-0a4b-5c6d7e8f9a0b','d456789a-bcde-f012-3456-789abcdef012','2025-12-10','2025-12-12',360.00,'confirmed',CURRENT_TIMESTAMP),
('a7b8c9d0-1e2f-3a4b-5c6d-7e8f9a0b1c2d','f8a9b0c1-2d3e-4f5a-1b6c-7d8e9f0a1b2c','e56789ab-cdef-0123-4567-89abcdef0123','2025-12-15','2025-12-18',560.00,'pending',CURRENT_TIMESTAMP),
('b8c9d0e1-2f3a-4b5c-6d7e-8f9a0b1c2d3e','a9b0c1d2-3e4f-5a6b-2c7d-8e9f0a1b2c3d','f47ac10b-58cc-4372-a567-0e02b2c3d479','2025-12-20','2025-12-22',400.00,'confirmed',CURRENT_TIMESTAMP),
('c9d0e1f2-3a4b-5c6d-7e8f-9a0b1c2d3e4f','9a2b0e9e-bc2d-4a91-a0b5-1f414b58a7ab','a1234567-89ab-cdef-0123-456789abcdef','2025-12-05','2025-12-07',500.00,'canceled',CURRENT_TIMESTAMP),
('d0e1f2a3-4b5c-6d7e-8f9a-0b1c2d3e4f5a','d1e4f8a7-7f1b-48b0-9e3c-4c5a9e2c5f7b','b2345678-9abc-def0-1234-56789abcdef0','2025-11-12','2025-11-14',240.00,'confirmed',CURRENT_TIMESTAMP),
('e1f2a3b4-5c6d-7e8f-9a0b-1c2d3e4f5a6b','f2a3c5b7-8d9e-4f1a-9b2c-3d4e5f6a7b8c','c3456789-abcd-ef01-2345-6789abcdef01','2025-12-01','2025-12-04',540.00,'pending',CURRENT_TIMESTAMP),
('f2a3b4c5-6d7e-8f9a-0b1c-2d3e4f5a6b7c','a3b4c5d6-7e8f-4a9b-8c0d-1e2f3a4b5c6d','d456789a-bcde-f012-3456-789abcdef012','2025-12-08','2025-12-10',400.00,'confirmed',CURRENT_TIMESTAMP),
('a3b4c5d6-7e8f-4a9b-8c0d-1e2f3a4b5c6d','b4c5d6e7-8f9a-4b0c-9d1e-2f3a4b5c6d7e','f47ac10b-58cc-4372-a567-0e02b2c3d479','2025-12-12','2025-12-14',440.00,'pending',CURRENT_TIMESTAMP),
('b4c5d6e7-8f9a-4b0c-9d1e-2f3a4b5c6d7e','c5d6e7f8-9a0b-4c1d-8e2f-3a4b5c6d7e8f','e56789ab-cdef-0123-4567-89abcdef0123','2025-12-18','2025-12-20',400.00,'confirmed',CURRENT_TIMESTAMP),
('c5d6e7f8-9a0b-4c1d-8e2f-3a4b5c6d7e8f','d6e7f8a9-0b1c-4d2e-9f3a-4b5c6d7e8f9a','f6789abc-def0-1234-5678-9abcdef01234','2025-12-22','2025-12-25',600.00,'confirmed',CURRENT_TIMESTAMP),
('d6e7f8a9-0b1c-4d2e-9f3a-4b5c6d7e8f9a','e7f8a9b0-1c2d-4e3f-0a4b-5c6d7e8f9a0b','a1234567-89ab-cdef-0123-456789abcdef','2025-12-28','2025-12-30',500.00,'pending',CURRENT_TIMESTAMP);


INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('p1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a','2a5f1d3b-7c8f-4c10-99fa-1c2d3e4b5f6a',1000.00,'2025-10-28 10:00:00','credit_card'),
('p2f3a4b5-c6d7-8e9f-0a1b-2c3d4e5f6a7b','8b7c2d4f-1e3a-4f9c-80f3-2d5e7a9b1c2d',240.00,'2025-11-15 09:00:00','paypal'),
('p3a4b5c6-d7e8-9f0a-1b2c-3d4e5f6a7b8c','a1b2c3d4-5e6f-7a8b-9c0d-1e2f3a4b5c6d',540.00,'2025-11-20 14:00:00','stripe'),
('p4b5c6d7-e8f9-0a1b-2c3d-4e5f6a7b8c9d','b2c3d4e5-6f7a-8b9c-0d1e-2f3a4b5c6d7e',1000.00,'2025-12-01 16:00:00','credit_card'),
('p5c6d7e8-f9a0-1b2c-3d4e-5f6a7b8c9d0e','c3d4e5f6-7a8b-9c0d-1e2f-3a4b5c6d7e8f',1100.00,'2025-12-10 11:00:00','paypal'),
('p6d7e8f9-a0b1-2c3d-4e5f-6a7b8c9d0e1f','d4e5f6a7-8b9c-0d1e-2f3a-4b5c6d7e8f9a',200.00,'2025-11-21 12:00:00','stripe'),
('p7e8f9a0-b1c2-3d4e-5f6a-7b8c9d0e1f2a','e5f6a7b8-9c0d-1e2f-3a4b-5c6d7e8f9a0b',400.00,'2025-12-02 13:30:00','credit_card'),
('p8f9a0b1-c2d3-4e5f-6a7b-8c9d0e1f2a3b','f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c',360.00,'2025-12-10 15:00:00','paypal'),
('p9a0b1c2-d3e4-5f6a-7b8c-9d0e1f2a3b4c','a7b8c9d0-1e2f-3a4b-5c6d-7e8f9a0b1c2d',560.00,'2025-12-15 10:30:00','stripe'),
('p10b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d','b8c9d0e1-2f3a-4b5c-6d7e-8f9a0b1c2d3e',400.00,'2025-12-20 14:00:00','credit_card');


INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('r1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c','9a2b0e9e-bc2d-4a91-a0b5-1f414b58a7ab','f47ac10b-58cc-4372-a567-0e02b2c3d479',5,'Amazing stay with a great view!',CURRENT_TIMESTAMP),
('r2b3c4d5-e6f7-8a9b-0c1d-2e3f4a5b6c7d','d1e4f8a7-7f1b-48b0-9e3c-4c5a9e2c5f7b','a1234567-89ab-cdef-0123-456789abcdef',4,'Comfortable and clean apartment.',CURRENT_TIMESTAMP),
('r3c4d5e6-f7a8-9b0c-1d2e-3f4a5b6c7d8e','f2a3c5b7-8d9e-4f1a-9b2c-3d4e5f6a7b8c','f47ac10b-58cc-4372-a567-0e02b2c3d479',5,'Perfect cottage for a weekend getaway.',CURRENT_TIMESTAMP),
('r4d5e6f7-a8b9-0c1d-2e3f-4a5b6c7d8e9f','a3b4c5d6-7e8f-4a9b-8c0d-1e2f3a4b5c6d','e56789ab-cdef-0123-4567-89abcdef0123',3,'Nice cabin but a bit far from town.',CURRENT_TIMESTAMP),
('r5e6f7a8-b9c0-1d2e-3f4a-5b6c7d8e9f0a','b4c5d6e7-8f9a-4b0c-9d1e-2f3a4b5c6d7e','f47ac10b-58cc-4372-a567-0e02b2c3d479',4,'Beautiful lake house, loved it!',CURRENT_TIMESTAMP);


INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('m1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c','f47ac10b-58cc-4372-a567-0e02b2c3d479','c9bf9e57-1685-4c89-bafb-ff5af830be8a','Hello, I would like to book your villa for next weekend.',CURRENT_TIMESTAMP),
('m2b3c4d5-e6f7-8a9b-0c1d-2e3f4a5b6c7d','c9bf9e57-1685-4c89-bafb-ff5af830be8a','f47ac10b-58cc-4372-a567-0e02b2c3d479','Sure! The villa is available.',CURRENT_TIMESTAMP),
('m3c4d5e6-f7a8-9b0c-1d2e-3f4a5b6c7d8e','a1234567-89ab-cdef-0123-456789abcdef','b2345678-9abc-def0-1234-56789abcdef0','Hi, can I get more pictures of the cottage?',CURRENT_TIMESTAMP),
('m4d5e6f7-a8b9-0c1d-2e3f-4a5b6c7d8e9f','b2345678-9abc-def0-1234-56789abcdef0','a1234567-89ab-cdef-0123-456789abcdef','Yes, I will send them now.',CURRENT_TIMESTAMP),
('m5e6f7a8-b9c0-1d2e-3f4a-5b6c7d8e9f0a','f47ac10b-58cc-4372-a567-0e02b2c3d479','e56789ab-cdef-0123-4567-89abcdef0123','Thank you for the quick response!',CURRENT_TIMESTAMP),
('m6f7a8b9-c0d1-2e3f-4a5b-6c7d8e9f0a1b','a1234567-89ab-cdef-0123-456789abcdef','f47ac10b-58cc-4372-a567-0e02b2c3d479','Can I extend my booking by one day?','2025-12-01 09:00:00'),
('m7a8b9c0-d1e2-3f4a-5b6c-7d8e9f0a1b2c','f47ac10b-58cc-4372-a567-0e02b2c3d479','a1234567-89ab-cdef-0123-456789abcdef','Yes, your booking has been updated.','2025-12-01 09:15:00'),
('m8b9c0d1-e2f3-4a5b-6c7d-8e9f0a1b2c3d','b2345678-9abc-def0-1234-56789abcdef0','c9bf9e57-1685-4c89-bafb-ff5af830be8a','Is the pool heated?','2025-12-02 10:00:00'),
('m9c0d1e2-f3a4-5b6c-7d8e-9f0a1b2c3d4e','c9bf9e57-1685-4c89-bafb-ff5af830be8a','b2345678-9abc-def0-1234-56789abcdef0','Yes, it is heated.','2025-12-02 10:05:00'),
('m10d1e2f3-a4b5-6c7d-8e9f-0a1b2c3d4e5f','e56789ab-cdef-0123-4567-89abcdef0123','f47ac10b-58cc-4372-a567-0e02b2c3d479','Thanks for the confirmation!','2025-12-03 11:30:00'),
('m11e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a','f47ac10b-58cc-4372-a567-0e02b2c3d479','e56789ab-cdef-0123-4567-89abcdef0123','You are welcome!','2025-12-03 11:45:00'),
('m12f3a4b5-c6d7-8e9f-0a1b-2c3d4e5f6a7b','a1234567-89ab-cdef-0123-456789abcdef','b2345678-9abc-def0-1234-56789abcdef0','Can I check in earlier?','2025-12-04 08:00:00'),
('m13a4b5c6-d7e8-9f0a-1b2c-3d4e5f6a7b8c','b2345678-9abc-def0-1234-56789abcdef0','a1234567-89ab-cdef-0123-456789abcdef','Yes, early check-in is available.','2025-12-04 08:20:00'),
('m14b5c6d7-e8f9-0a1b-2c3d-4e5f6a7b8c9d','c9bf9e57-1685-4c89-bafb-ff5af830be8a','f47ac10b-58cc-4372-a567-0e02b2c3d479','Is parking available?','2025-12-05 09:15:00'),
('m15c6d7e8-f9a0-1b2c-3d4e-5f6a7b8c9d0e','f47ac10b-58cc-4372-a567-0e02b2c3d479','c9bf9e57-1685-4c89-bafb-ff5af830be8a','Yes, free parking is included.','2025-12-05 09:25:00'),
('m16d7e8f9-a0b1-2c3d-4e5f-6a7b8c9d0e1f','a1234567-89ab-cdef-0123-456789abcdef','e56789ab-cdef-0123-4567-89abcdef0123','Can we have an extra bed?','2025-12-06 14:00:00'),
('m17e8f9a0-b1c2-3d4e-5f6a-7b8c9d0e1f2a','e56789ab-cdef-0123-4567-89abcdef0123','a1234567-89ab-cdef-0123-456789abcdef','Extra bed arranged.','2025-12-06 14:30:00'),
('m18f9a0b1-c2d3-4e5f-6a7b-8c9d0e1f2a3b','b2345678-9abc-def0-1234-56789abcdef0','f47ac10b-58cc-4372-a567-0e02b2c3d479','Can I bring my pet?','2025-12-07 10:10:00'),
('m19a0b1c2-d3e4-5f6a-7b8c-9d0e1f2a3b4c','f47ac10b-58cc-4372-a567-0e02b2c3d479','b2345678-9abc-def0-1234-56789abcdef0','Yes, pets are allowed.','2025-12-07 10:25:00'),
('m20b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d','c9bf9e57-1685-4c89-bafb-ff5af830be8a','a1234567-89ab-cdef-0123-456789abcdef','Thank you for your help!','2025-12-08 11:00:00'),
('m21c2d3e4-f5a6-7b8c-9d0e-1f2a3b4c5d6e','a1234567-89ab-cdef-0123-456789abcdef','c9bf9e57-1685-4c89-bafb-ff5af830be8a','You’re welcome!','2025-12-08 11:10:00'),
('m22d3e4f5-a6b7-8c9d-0e1f-2a3b4c5d6e7f','e56789ab-cdef-0123-4567-89abcdef0123','b2345678-9abc-def0-1234-56789abcdef0','Is there a kitchen available?','2025-12-09 09:00:00'),
('m23e4f5a6-b7c8-9d0e-1f2a-3b4c5d6e7f8a','b2345678-9abc-def0-1234-56789abcdef0','e56789ab-cdef-0123-4567-89abcdef0123','Yes, full kitchen access.','2025-12-09 09:15:00'),
('m24f5a6b7-c8d9-0e1f-2a3b-4c5d6e7f8a9b','f47ac10b-58cc-4372-a567-0e02b2c3d479','c9bf9e57-1685-4c89-bafb-ff5af830be8a','Can we check in late?','2025-12-10 18:00:00'),
('m25a6b7c8-d9e0-1f2a-3b4c-5d6e7f8a9b0c','c9bf9e57-1685-4c89-bafb-ff5af830be8a','f47ac10b-58cc-4372-a567-0e02b2c3d479','Late check-in approved.','2025-12-10 18:30:00'),
('m26b7c8d9-e0f1-2a3b-4c5d-6e7f8a9b0c1d','a1234567-89ab-cdef-0123-456789abcdef','f47ac10b-58cc-4372-a567-0e02b2c3d479','Do you have WiFi?','2025-12-11 08:00:00'),
('m27c8d9e0-f1a2-3b4c-5d6e-7f8a9b0c1d2e','f47ac10b-58cc-4372-a567-0e02b2c3d479','a1234567-89ab-cdef-0123-456789abcdef','Yes, high-speed WiFi is available.','2025-12-11 08:15:00'),
('m28d9e0f1-a2b3-4c5d-6e7f-8a9b0c1d2e3f','b2345678-9abc-def0-1234-56789abcdef0','e56789ab-cdef-0123-4567-89abcdef0123','Can I have an extra towel?','2025-12-12 09:30:00'),
('m29e0f1a2-b3c4-5d6e-7f8a-9b0c1d2e3f4a','e56789ab-cdef-0123-4567-89abcdef0123','b2345678-9abc-def0-1234-56789abcdef0','Extra towel provided.','2025-12-12 09:45:00'),
('m30f1a2b3-c4d5-6e7f-8a9b-0c1d2e3f4a5b','c9bf9e57-1685-4c89-bafb-ff5af830be8a','f47ac10b-58cc-4372-a567-0e02b2c3d479','Thanks again for your support!','2025-12-12 10:00:00');
