/* For a given ad, what is the email address of the user that created it? */
SELECT u.email AS 'E-Mail'
FROM users AS u JOIN ads AS a ON u.id = a.user_id
WHERE a.id = entryVariable;

/* For a given ad, what category, or categories, does it belong to? */
SELECT c.name AS 'Categories'
FROM categories AS c
JOIN ads_categories AS ac ON c.id = ac.category_id
JOIN ads AS a ON ac.ad_id = a.id
WHERE a.id = entryVariable;

/* For a given category, show all the ads that are in that category. */
SELECT a.title as 'Ad Titles'
FROM ads AS a
JOIN ads_categories ac ON a.id = ac.ad_id
JOIN categories c ON ac.category_id = c.id
WHERE c.id = entryVariable;

/* For a given user, show all the ads they have posted. */
SELECT a.title as 'Ad Titles'
FROM ads AS a
JOIN users AS u ON a.user_id = u.id
WHERE u.id = entryVariable;

/* For a given user, show all the ads they have posted. */
SELECT a.title as 'Ad Titles'
FROM ads AS a
JOIN users AS u ON a.user_id = u.id
WHERE u.id = entryVariable;