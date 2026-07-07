-- ==========================================
-- SQL LEARNING QUERIES
-- ==========================================

--------------------------------------------------
-- 1. Tüm kullanıcıları getir
--------------------------------------------------

SELECT *
FROM users;

--------------------------------------------------
-- 2. Tüm ürünleri getir
--------------------------------------------------

SELECT *
FROM products;

--------------------------------------------------
-- 3. Tüm eventleri getir
--------------------------------------------------

SELECT *
FROM events;

--------------------------------------------------
-- 4. Sadece Türk kullanıcıları getir
--------------------------------------------------

SELECT *
FROM users
WHERE country = 'TR';

--------------------------------------------------
-- 5. Betul'un eventlerini getir
--------------------------------------------------

SELECT *
FROM events
WHERE user_id = 1;

--------------------------------------------------
-- 6. Betul hangi ürünü görüntüledi?
--------------------------------------------------

SELECT
    users.first_name AS User,
    products.product_name AS Product,
    events.event_name AS Event
FROM events
JOIN users
ON events.user_id = users.id
JOIN products
ON events.product_id = products.id
WHERE users.first_name = 'Betul'
AND events.event_name = 'product_viewed';

--------------------------------------------------
-- 7. Purchase yapan kullanıcılar
--------------------------------------------------

SELECT
    users.first_name AS User,
    products.product_name AS Product,
    events.event_name AS Event
FROM events
JOIN users
ON events.user_id = users.id
JOIN products
ON events.product_id = products.id
WHERE events.event_name = 'purchase';

--------------------------------------------------
-- 8. Desktop kullanan kullanıcıların görüntülediği ürünler
--------------------------------------------------

SELECT
    users.first_name AS User,
    products.product_name AS Product,
    events.device_type AS Device
FROM events
JOIN users
ON events.user_id = users.id
JOIN products
ON events.product_id = products.id
WHERE events.device_type = 'desktop'
AND events.event_name = 'product_viewed';

--------------------------------------------------
-- 9. Her eventten kaç tane var?
--------------------------------------------------

SELECT
    event_name,
    COUNT(*) AS Total
FROM events
GROUP BY event_name;

--------------------------------------------------
-- 10. Kullanıcı başına event sayısı
--------------------------------------------------

SELECT
    users.first_name AS User,
    COUNT(*) AS Total_Events
FROM events
JOIN users
ON events.user_id = users.id
GROUP BY users.first_name;

--------------------------------------------------
-- 11. 2 veya daha fazla event yapan kullanıcılar
--------------------------------------------------

SELECT
    users.first_name AS User,
    COUNT(*) AS Total_Events
FROM events
JOIN users
ON events.user_id = users.id
GROUP BY users.first_name
HAVING COUNT(*) >= 2;

--------------------------------------------------
-- 12. En çok event yapan kullanıcı
--------------------------------------------------

SELECT
    users.first_name AS User,
    COUNT(*) AS Total_Events
FROM events
JOIN users
ON events.user_id = users.id
GROUP BY users.first_name
ORDER BY Total_Events DESC
LIMIT 1;

--------------------------------------------------
-- 13. LEFT JOIN örneği
--------------------------------------------------

SELECT
    products.product_name,
    events.event_name
FROM products
LEFT JOIN events
ON products.id = events.product_id;

--------------------------------------------------
-- 14. UNION örneği
--------------------------------------------------

SELECT first_name
FROM users

UNION

SELECT brand
FROM products;

--------------------------------------------------
-- 15. Kullanıcı sayısı
--------------------------------------------------

SELECT COUNT(*) AS Total_Users
FROM users;

--------------------------------------------------
-- 16. Ürün sayısı
--------------------------------------------------

SELECT COUNT(*) AS Total_Products
FROM products;

--------------------------------------------------
-- 17. Event sayısı
--------------------------------------------------

SELECT COUNT(*) AS Total_Events
FROM events;

--------------------------------------------------
-- 18. Ürünleri fiyata göre sırala
--------------------------------------------------

SELECT *
FROM products
ORDER BY sale_price DESC;

--------------------------------------------------
-- 19. İlk 5 ürünü getir
--------------------------------------------------

SELECT *
FROM products
LIMIT 5;