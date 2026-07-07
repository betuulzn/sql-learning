CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    brand TEXT NOT NULL,
    original_price REAL NOT NULL,
    sale_price REAL,
    stock INTEGER NOT NULL,
    currency TEXT,
    product_url TEXT,
    image_url TEXT
);