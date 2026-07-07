# SQL Learning — E-commerce Database

A hands-on project for learning **SQL fundamentals** using a simple e-commerce dataset.
It models users, products, and their interaction events, then walks through core SQL
concepts with practical, commented queries.

## 🎯 Purpose

This project is a personal learning playground for SQL. Instead of abstract examples,
it uses a realistic (but small) e-commerce scenario so each concept maps to a question
you'd actually ask about real data — *"Which users made a purchase?"*,
*"Which product was viewed the most?"*, *"How many events did each user trigger?"*

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **SQLite** | Lightweight, file-based relational database (`InsiderDB.db`) |
| **DBeaver** | SQL client used to run and explore the queries |

## 🗂️ Project Structure

```
sql-learning/
├── InsiderDB.db                  # SQLite database file
├── README.md
└── sql/
    ├── 01_create_users.sql       # CREATE TABLE users
    ├── 02_insert_users.sql       # INSERT sample users
    ├── 03_create_products.sql    # CREATE TABLE products
    ├── 04_insert_products.sql    # INSERT sample products
    ├── 05_create_events.sql      # CREATE TABLE events
    ├── 06_insert_events.sql      # INSERT sample events
    └── 07_join_queries.sql       # SELECT / JOIN / GROUP BY practice queries
```

## 🗃️ Database Schema

The database has three tables. `events` links back to `users` and `products`
through foreign keys.

### `users`
| Column | Type | Notes |
|--------|------|-------|
| `id` | INTEGER | Primary key |
| `first_name` | TEXT | Not null |
| `last_name` | TEXT | Not null |
| `email` | TEXT | Unique, not null |
| `country` | TEXT | Not null (e.g. `TR`) |
| `lang` | TEXT | Not null |
| `created_at` | TEXT | Not null |

### `products`
| Column | Type | Notes |
|--------|------|-------|
| `id` | INTEGER | Primary key |
| `product_name` | TEXT | Not null |
| `category` | TEXT | Not null |
| `brand` | TEXT | Not null |
| `original_price` | REAL | Not null |
| `sale_price` | REAL | Nullable |
| `stock` | INTEGER | Not null |
| `currency` | TEXT | Nullable |
| `product_url` | TEXT | Nullable |
| `image_url` | TEXT | Nullable |

### `events`
| Column | Type | Notes |
|--------|------|-------|
| `id` | INTEGER | Primary key |
| `user_id` | INTEGER | Not null → `users(id)` |
| `product_id` | INTEGER | Nullable → `products(id)` |
| `event_name` | TEXT | Not null (e.g. `product_viewed`, `purchase`) |
| `page_type` | TEXT | Nullable |
| `device_type` | TEXT | Nullable (e.g. `desktop`) |
| `referrer` | TEXT | Nullable |
| `sid` | TEXT | Nullable |
| `source` | TEXT | Nullable |
| `src` | TEXT | Nullable |
| `url` | TEXT | Nullable |
| `created_at` | TEXT | Not null |

**Relationships**

```
users (1) ──< events >── (1) products
        user_id          product_id
```

## 📚 Topics Covered

This project practices the following SQL concepts:

- **Schema & data**: `CREATE TABLE`, `INSERT`, `ALTER TABLE`
- **Reading data**: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- **Modifying data**: `UPDATE`
- **Combining tables**: `INNER JOIN`, `LEFT JOIN`, `UNION`
- **Aggregation**: `GROUP BY`, `HAVING`, `COUNT`

## 🚀 Getting Started

1. **Install a SQLite client** — [DBeaver](https://dbeaver.io/) is used here, but any
   SQLite tool (or the `sqlite3` CLI) works.
2. **Open the database** — connect DBeaver to `InsiderDB.db`.
3. **Run the scripts in order** — execute the files in `sql/` from `01` to `07`:
   1. Create the tables (`01`, `03`, `05`)
   2. Insert the sample data (`02`, `04`, `06`)
   3. Explore with the practice queries (`07`)

### Using the SQLite CLI instead

```bash
sqlite3 InsiderDB.db < sql/01_create_users.sql
sqlite3 InsiderDB.db < sql/02_insert_users.sql
sqlite3 InsiderDB.db < sql/03_create_products.sql
sqlite3 InsiderDB.db < sql/04_insert_products.sql
sqlite3 InsiderDB.db < sql/05_create_events.sql
sqlite3 InsiderDB.db < sql/06_insert_events.sql
sqlite3 InsiderDB.db < sql/07_join_queries.sql
```

## 🔍 Example Queries

**Users who made a purchase** (`INNER JOIN` + `WHERE`)
```sql
SELECT users.first_name AS User,
       products.product_name AS Product,
       events.event_name AS Event
FROM events
JOIN users    ON events.user_id = users.id
JOIN products ON events.product_id = products.id
WHERE events.event_name = 'purchase';
```

**Users with 2 or more events** (`GROUP BY` + `HAVING`)
```sql
SELECT users.first_name AS User,
       COUNT(*) AS Total_Events
FROM events
JOIN users ON events.user_id = users.id
GROUP BY users.first_name
HAVING COUNT(*) >= 2;
```

**Products that may have no events** (`LEFT JOIN`)
```sql
SELECT products.product_name,
       events.event_name
FROM products
LEFT JOIN events ON products.id = events.product_id;
```

## 📝 Notes

- Sample data is synthetic and for learning purposes only.
- Query comments in `07_join_queries.sql` are written in Turkish.

---

*Built while learning SQL fundamentals. 📊*
