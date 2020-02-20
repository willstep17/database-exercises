USE codeup_test_db;
SELECT name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Sgt.Peppers Lonely Hearts Club Band release date.' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'Genre of Nevermind' FROM albums WHERE name = 'Nevermind';
SELECT name AS '90''s Albums' FROM albums WHERE 1989 < release_date && release_date < 2000;
SELECT name AS 'Sales Greater than 20 Million' FROM albums WHERE sales > 20;
SELECT name AS 'Rock Albums' FROM albums WHERE genre = 'Rock';