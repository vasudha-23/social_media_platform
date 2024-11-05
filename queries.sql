Queries:
In SQL, a query is a request for data or information from a database. It allows you to retrieve, insert, update, or delete data in a structured way. Queries are written using SQL (Structured Query Language), which is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS).

A SQL query typically consists of one or more clauses such as SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY, etc. These clauses are used to specify what data should be retrieved from the database, how it should be filtered, grouped, and ordered.

  
-- Query 1: Retrieve all posts with associated user information
SELECT posts.*, users.username AS user_username
FROM posts
JOIN users ON posts.user_id = users.user_id;
+---------+-------------+------------------------------------+---------------------+------------------+
| post_id | user_id     | content                            | created_at          | user_username    |
+---------+-------------+------------------------------------+---------------------+------------------+
|       1 |       3     | Just posted a new photo!           | 2024-02-22 10:42:06 | bob_jones        |
|       2 |       1 	  | Feeling excited about the weekend! | 2024-02-22 10:42:06 | john_doe         |
|       3 |       5 	  | Exploring new places. #Travel      | 2024-02-22 10:42:06 | michael_chang    |
|       4 |       8     | Coding all night. #DeveloperLife   | 2024-02-22 10:42:06 | sakura_tanaka    |
|       5 |       2     | Movie night with friends!          | 2024-02-22 10:42:06 | alice_smith      |
|       6 |       7     | Art exhibition was amazing!        | 2024-02-22 10:42:06 | adam_kowalski    |
|       7 |       4     | Cooking experiment gone wrong!     | 2024-02-22 10:42:06 | emma_watson      |
|       8 |       9     | Celebrating a milestone at work!   | 2024-02-22 10:42:06 | raja_kumar       |
|       9 |      10     | Sunday brunch with family.         | 2024-02-22 10:42:06 | carla_santos     |
|      10 |       6     | Fitness journey begins today!      | 2024-02-22 10:42:06 | maria_garcia     |
+---------+-------+------------------------------------------+---------------------+------------------+



-- Query 2: Retrieve all comments for a specific post
SELECT * FROM comments
WHERE post_id = 1;
+---------------+----------+---------+---------------------------------------+--------------------------+
| comment_id | post_id   |    user_id |     content                          | created_at               |
+---------------+---------+---------+----------------------------------------+--------------------------+
|         1 |          1 |          5 | Great photo! Where was it taken?     | 2024-02-22 10:42:06      |
+----=--------+----------+---------+----------------------------------------+--------------------------+


-- Query 3: Retrieve the number of likes for a specific post
SELECT COUNT(*) AS like_count
FROM likes
WHERE post_id = 3;
+------------+
| like_count |
+------------+
|       ,  1 |
+------------+




-- Query 4: Retrieve users who have made posts and received likes:
SELECT users.*, COUNT(posts.post_id) AS post_count, COUNT(likes.like_id) AS like_count
FROM users
LEFT JOIN posts ON users.user_id = posts.user_id
LEFT JOIN likes ON posts.post_id = likes.post_id
GROUP BY users.user_id
HAVING post_count > 0 AND like_count > 0;
+---------+---------------+-----------------------+-------------+-----------+-----------------+-------------+------------+-------------+
| user_id | username      | email                 | phonenumber | country   | state           |   city      | post_count |  like_count |
+---------+---------------+-----------------------+-------------+-----------+-----------------+-------------+------------+-------------+
|       1 | john_doe     | john@example.com       |  1234567890 | USA       | California      | Los Angeles |          1 |            1|  
|       2 | alice_smith  | alice@example.com      |  9876543210 | UK        | England         | London      |          1 |            1|
|       3 | bob_jones    | new_email@example.com  |  5555555555 | Canada    | Ontario         | Toronto     |          1 |            1| 
|       4 | emma_watson  | emma@example.com       |  1111222233 | Australia | New South Wales | Sydney      |          1 |            1|
+---------+---------------+-----------------------+-------------+-----------+-----------------+-------------+------------+-------------+


-- Query 5: Retrieve the latest 3 posts
SELECT * FROM posts
ORDER BY created_at DESC
LIMIT 3;

+---------+---------+------------------------------------------+----------------------+
| post_id | user_id | content                                  | created_at           |
+---------+---------+------------------------------------------+----------------------+
|       1 |       3 | Just posted a new photo!                 | 2024-02-22 10:42:06  |
|       2 |       1 | Feeling excited about the weekend!       | 2024-02-22 10:42:06  |
|       3 |       5 | Exploring new places. #Travel            | 2024-02-22 10:42:06  |
+---------+--------+-------------------------------------------+----------------------+


-- Query 6: Retrieve posts with likes and comments:
SELECT posts.*, COUNT(likes.like_id) AS like_count, COUNT(comments.comment_id) AS comment_count
FROM posts
LEFT JOIN likes ON posts.post_id = likes.post_id
LEFT JOIN comments ON posts.post_id = comments.post_id
GROUP BY posts.post_id
HAVING like_count > 0 AND comment_count > 0;

+---------+---------+-------------------------------------+-------------------------+-------------+------------------+
| post_id | user_id | content                             | created_at          | like_count      |comment_count     |
+---------+---------+-------------------------------------+--------------------------+------------+------------------+
|       1 |       3 | Just posted a new photo!            | 2024-02-22 10:42:06 |               1 |               1 |
|       2 |       1 | Feeling excited about the weekend!  | 2024-02-22 10:42:06 |               1 |             	1 |
|       3 |       5 | Exploring new places. #Travel       | 2024-02-22 10:42:06 |               1 |            	  1 |
|       4 |       8 | Coding all night. #DeveloperLife    | 2024-02-22 10:42:06 |               1 |              	1 |
|       5 |       2 | Movie night with friends!           | 2024-02-22 10:42:06 |               1 |             	1 |
|       6 |       7 | Art exhibition was amazing!         | 2024-02-22 10:42:06 |               1 |             	1 |
|       7 |       4 | Cooking experiment gone wrong!      | 2024-02-22 10:42:06 |               1 |             	1 |
|       8 |       9 | Celebrating a milestone at work!    | 2024-02-22 10:42:06 |               1 |             	1 |
|       9 |      10 | Sunday brunch with family.          | 2024-02-22 10:42:06 |               1 |             	1 |
|      10 |       6 | Fitness journey begins today!       | 2024-02-22 10:42:06 |               1 |             	1 |
+-------+------+-------------------------------------------+-------------------------+------------+---------------+




-- Query 7: Retrieve posts with their comment count
SELECT posts.*, COUNT(comments.comment_id) AS comment_count
FROM posts
LEFT JOIN comments ON posts.post_id = comments.post_id
GROUP BY posts.post_id;
+---------+---------+----------------------------------------+----------------------+----------------+
| post_id | user_id | content                                | created_at           | comment_count  |
+---------+---------+----------------------------------------+----------------------+----------------+
|       1 |         3 | Just posted a new photo!              | 2024-02-22 10:42:06 |	             1 |
|       2 |       	1 | Feeling excited about the weekend!    | 2024-02-22 10:42:06 |	             1 |
|       3 |       	5 | Exploring new places. #Travel         | 2024-02-22 10:42:06 |	             1 |
|       4 |       	8 | Coding all night. #DeveloperLife      | 2024-02-22 10:42:06 |	             1 |
|       5 |       	2 | Movie night with friends!             | 2024-02-22 10:42:06 |	             1 |
|       6 |       	7 | Art exhibition was amazing!           | 2024-02-22 10:42:06 |	             1 |
|       7 |       	4 | Cooking experiment gone wrong!        | 2024-02-22 10:42:06 |	             1 |
|       8 |       	9 | Celebrating a milestone at work!      | 2024-02-22 10:42:06 |	             1 |
|       9 |        10 | Sunday brunch with family.            | 2024-02-22 10:42:06 |	             1 |
|      10 |       	6 | Fitness journey begins today!         | 2024-02-22 10:42:06 |	             1 |
+---------+---------+----------------------------------------+----------------------+----------------+


-- Query 8: Retrieve users who have liked a specific post
SELECT users.*
FROM users
JOIN likes ON users.user_id = likes.user_id
WHERE likes.post_id = 2;


+---------+-------------+------------------+-------------+-----------+------------------+--------------+
| user_id | username    | email            | phonenumber | country   | state            | city         |
+---------+-------------+------------------+-------------+-----------+-------------------+-------------+
|        9| raja_kumar  | raja@example.com |  2222111100 | India     | Maharashtra      | Mumbai       |
+---------+-------------+------------------+-------------+-----------+------------------+--------------+


-- Query 9: Update the email address for a specific user
UPDATE users
SET email = 'new_email@example.com'
WHERE user_id = 3;
+---------+---------------+---------------------------------+----------------+------------+---------------------+---------------+
| user_id | username      | email                           | phonenumber | country   | state                  | city           |
+---------+---------------+---------------------------------+-------------+-----------+------------------------+----------------+
|       1 | john_doe      | john@example.com                |  1234567890 | USA       | California             | Los Angeles    |
|       2 | alice_smith   | alice@example.com               |  9876543210 | UK        | England                | London         |
|       3 | bob_jones     | new_email@example.com           |  5555555555 | Canada    | Ontario                | Toronto        |
|       4 | emma_watson   | emma@example.com                |  1111222233 | Australia | New South Wales        | Sydney         |
|       5 | michael_chang | michael@example.com             |  9999888877 | China     | Beijing                | Beijing        |
|       6 | maria_garcia  | maria@example.com               |  7777666655 | Spain     | Madrid                 | Madrid         |
|       7 | adam_kowalski | adam@example.com                |  4444333322 | Poland    | Masovian               | Warsaw         |
|       8 | sakura_tanaka | sakura@example.com              |  6666777788 | Japan     | Tokyo                  | Tokyo          |  
|       9 | raja_kumar    | raja@example.com                |  2222111100 | India     | Maharashtra            | Mumbai         |
|      10 | carla_santos  | carla@example.com               |  8888999900 | Brazil    | Sao Paulo              | Sao Paulo      |
+-------+-----------------+----------------------------------+-----------------+----------+-----------------------+--------------+

-- Query 10: Retrieve posts created by users from a specific country
SELECT posts.*, users.username AS user_username
FROM posts
JOIN users ON posts.user_id = users.user_id
WHERE users.country = 'USA';

+---------+----------+-------------------------------------------+-----------------------+---------------+
| post_id | user_id  | content                                   | created_at            | user_username |
+---------+----------+-------------------------------------------+-----------------------+---------------+
|       2 |       1  | Feeling excited about the weekend!        | 2024-02-22 10:42:06   | john_doe      |
+---------+---------+--------------------------------------------+-----------------------+---------------+
