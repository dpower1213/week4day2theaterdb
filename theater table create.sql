-- Data Definition Language
-- SQL CREATE STATEMENTS

-- DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100)
	);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(100),
	customer_phone VARCHAR(13),
    customer_email VARCHAR(100)
);

-- DROP TABLE IF EXISTS concessions CASCADE;
CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(50),
	"description" TEXT,
    item_count INTEGER,
	item_price DECIMAL(4,2),
    customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
	);

-- DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
	ticket_number SERIAL PRIMARY KEY,
	ticket_amount DECIMAL(4,2),
	movie_id INTEGER NOT NULL,
	ticket_time TIMESTAMP,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
	);
