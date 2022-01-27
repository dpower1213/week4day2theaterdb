INSERT INTO movie(
    movie_id,
    movie_name)
    VALUES
    ('1','gone with the wind'),
    ('2','arrived with the wind'),
    ('3','blowing in the wind');

INSERT INTO customer(
    customer_id,
    customer_name,
    customer_phone,
    customer_email)
    VALUES
    ('2','Davi','555-555-4789','test1@gmail.com'),
    ('3', 'Avid','555-555-9847','test2@gmail.com');

INSERT INTO concessions(
    item_id,
	item_name,
	"description",
    item_count,
	item_price,
    customer_id)
    VALUES
    ('1','popcorn','yummy','5','1.99','1'),
    ('2','popcorn','old and stale','4','.99','2'),
    ('3','pure sugar','all sugar','10','4.99','3');

INSERT INTO ticket(
    ticket_number,
    ticket_amount,
	movie_id,
	ticket_time,
	customer_id)
    VALUES
    ('1','1.99','1','2019-10-11 12:12:25','1'),
    ('2','2.00','2','2020-10-11 11:12:25','2'),
    ('3','3.00','3','2021-10-11 10:12:25','3');