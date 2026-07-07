INSERT INTO users (
    id,
    email,
    first_name,
    country,
    lang,
    created_at
)
VALUES
(1, 'betul@test.com', 'Betul', 'TR', 'tr', '2026-07-01'),
(2, 'ahmet@test.com', 'Ahmet', 'TR', 'tr', '2026-07-02'),
(3, 'ayse@test.com', 'Ayse', 'TR', 'tr', '2026-07-03'),
(4, 'john@test.com', 'John', 'US', 'en', '2026-07-04'),
(5, 'emma@test.com', 'Emma', 'US', 'en', '2026-07-05'),
(6, 'mehmet@test.com', 'Mehmet', 'TR', 'tr', '2026-07-06'),
(7, 'lucas@test.com', 'Lucas', 'UK', 'en', '2026-07-07'),
(8, 'maria@test.com', 'Maria', 'ES', 'es', '2026-07-08'),
(9, 'hans@test.com', 'Hans', 'DE', 'de', '2026-07-09'),
(10, 'sophie@test.com', 'Sophie', 'FR', 'fr', '2026-07-10');

SELECT * FROM users;