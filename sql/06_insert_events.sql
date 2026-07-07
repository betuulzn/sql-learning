INSERT INTO events (
    id,
    user_id,
    product_id,
    event_name,
    page_type,
    device_type,
    referrer,
    sid,
    source,
    src,
    url,
    created_at
)
VALUES
(1, 1, 103, 'homepage_view', 'Homepage', 'mobile', 'google.com', 'SID001', 'organic', 'google', '/', '2026-07-07 10:00:00'),

(2, 1, 103, 'product_viewed', 'PDP', 'mobile', '/', 'SID001', 'homepage', 'internal', '/products/iphone16', '2026-07-07 10:02:00'),

(3, 1, 103, 'item_added_to_cart', 'Cart', 'mobile', '/products/iphone16', 'SID001', 'pdp', 'button', '/cart', '2026-07-07 10:03:00'),

(4, 1, 103, 'purchase', 'Checkout', 'mobile', '/cart', 'SID001', 'checkout', 'payment', '/checkout/success', '2026-07-07 10:05:00'),

(5, 2, 107, 'product_viewed', 'PDP', 'desktop', 'google.com', 'SID002', 'organic', 'google', '/products/pasabahce', '2026-07-07 11:00:00'),

(6, 3, 101, 'product_viewed', 'PDP', 'mobile', 'instagram.com', 'SID003', 'social', 'instagram', '/products/nike-air-max', '2026-07-07 11:10:00'),

(7, 3, 101, 'item_added_to_cart', 'Cart', 'mobile', '/products/nike-air-max', 'SID003', 'pdp', 'button', '/cart', '2026-07-07 11:12:00'),

(8, 4, 104, 'product_viewed', 'PDP', 'desktop', 'bing.com', 'SID004', 'organic', 'bing', '/products/macbook-air-m4', '2026-07-07 11:30:00'),

(9, 5, 106, 'product_viewed', 'PDP', 'tablet', 'facebook.com', 'SID005', 'social', 'facebook', '/products/stanley-quencher', '2026-07-07 12:00:00'),

(10, 6, 105, 'purchase', 'Checkout', 'desktop', '/cart', 'SID006', 'checkout', 'payment', '/checkout/success', '2026-07-07 12:30:00');