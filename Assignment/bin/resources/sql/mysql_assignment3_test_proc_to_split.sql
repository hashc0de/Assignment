CREATE TABLE sometbl ( ID INT, NAME VARCHAR(50) );

INSERT INTO sometbl VALUES (1, 'Smith'), (2, 'Julio|Jones|Falcons'), (3,
'White|Snow'), (4, 'Paint|It|Red'), (5, 'Green|Lantern'), (6, 'Brown|bag');

select * from sometbl;

call split_string(3);

call split_string(2);
