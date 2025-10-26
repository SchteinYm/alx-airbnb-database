-- Airbnb Sample Data Seed Script

-- Users
INSERT INTO User (name, email, phone, date_joined) VALUES
('John Doe', 'john@example.com', '+254701234567', '2023-02-10'),
('Mary Kim', 'mary@example.com', '+254711223344', '2023-03-21'),
('David Otieno', 'david@example.com', '+254722334455', '2023-05-14');

-- Properties
INSERT INTO Property (user_id, title, description, location, price_per_night) VALUES
(1, 'Cozy Apartment in Nairobi', 'Modern 2-bedroom apartment with WiFi and balcony view', 'Nairobi, Kenya', 45.00),
(2, 'Beach House Getaway', 'Spacious house near Diani Beach with ocean view', 'Diani, Kenya', 120.00),
(3, 'Budget Studio', 'Affordable studio near city center with basic amenities', 'Mombasa, Kenya', 25.00);

-- Bookings
INSERT INTO Booking (user_id, property_id, check_in_date, check_out_date, total_amount, status) VALUES
(2, 1, '2023-06-01', '2023-06-05', 180.00, 'Confirmed'),
(1, 2, '2023-07-10', '2023-07-15', 600.00, 'Completed'),
(3, 3, '2023-08-02', '2023-08-04', 50.00, 'Cancelled');

-- Payments
INSERT INTO Payment (booking_id, amount, payment_date, payment_method, payment_status) VALUES
(1, 180.00, '2023-05-30', 'Mpesa', 'Successful'),
(2, 600.00, '2023-07-09', 'Credit Card', 'Successful'),
(3, 50.00, '2023-08-01', 'PayPal', 'Failed');
