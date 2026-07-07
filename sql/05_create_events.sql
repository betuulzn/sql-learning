CREATE TABLE events (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product_id INTEGER,
    event_name TEXT NOT NULL,
    page_type TEXT,
    device_type TEXT,
    referrer TEXT,
    sid TEXT,
    source TEXT,
    src TEXT,
    url TEXT,
    created_at TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);