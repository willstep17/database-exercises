USE adlister;

INSERT INTO users(username, email, password) VALUES
    ('bad', 'badpassword@gmail.com', '1234512345'),
    ('nickRage', 'nicholasCage@gmail.com', 'aaaaaaaab'),
    ('noland', 'nolando@gmail.com', 'iknowpython'),
    ('chris', 'Chris@freemason.com', 'password'),
    ('lary', 'LaryDavid@seinfeld.com', 'curbyourenthusiasm'),
    ('saul', 'SaulGOODman@lawyrup.com', 'bettercallsaul');

INSERT INTO ads(title, description, user_id) VALUES
    ('Title 1', 'Content 1', 2),
    ('Title 2', 'Content 2', 4),
    ('Title 3', 'Content 3', 4),
    ('Title 4', 'Content 4', 5),
    ('Title 5', 'Content 5', 1),
    ('Title 6', 'Content 6', 3),
    ('Title 7', 'Content 7', 6);

INSERT INTO categories(name) VALUES
    ('Homes'),
    ('Cars'),
    ('Services'),
    ('Tools'),
    ('Food and Beverage');

INSERT INTO ads_categories(ad_id, category_id) VALUES
    (1, 2), (1, 3), (2, 4), (3, 1),
    (3, 2), (3, 3), (6, 3), (5, 2),
    (7, 1), (4, 2), (5, 1), (2, 3),
    (2, 5);


