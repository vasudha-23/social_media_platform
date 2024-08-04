To Create the database “social_media”
CREATE DATABASE social_media;




To use the database for creating tables or to insert values or to modify the data.
USE social_media;


Creating table  users


CREATE TABLE users ( 
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phonenumber BIGINT NOT NULL,
    country VARCHAR(20), state VARCHAR(20),
    city VARCHAR(20));



Creating table posts


CREATE TABLE posts (
    post_id INT PRIMARY KEY, user_id INT,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);




Creating table comments


 CREATE TABLE comments (
  comment_id INT PRIMARY KEY, post_id INT, user_id INT,
   FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
   FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);




Creating table likes


CREATE TABLE likes (
    like_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
   FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
   FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
    


DESC Commands:
desc  users;
desc posts;
desc comments;
desc likes;


Description of table USERS :


+------------------+----------------+--------+-------+------------+----------------+
 | Field               | Type              | Null    | Key   | Default     | Extra |
+-----------------+----------------+--------+-------+------------+-----------------+
| user_id            | int                  | NO     | PRI    | NULL      |        | 
| username           | varchar(255)         | NO     |        | NULL      |        |
| email              | varchar(255)         | NO              | NULL      |        |
| phonenumber        | bigint               | NO     |        | NULL      |        |
| country            | varchar(20)          | YES   |         | NULL      |        |
| state               | varchar(20)         | YES   |          | NULL     |        |
| city                | varchar(20)         | YES   |          | NULL     |        |
+----------------+-----------------+-------+---------+-----------+-----------------+




Description of table POSTS:


+--------------+------------+-------+-------+-------------------------+------------------+
| Field        | Type           | Null   | Key   | Default           | Extra            |
+-------------+-------------+-------+-------+-------------------------+------------------+
| post_id      | int            | NO    | PRI     | NULL              |                  | 
| user_id      | int            | YES   | MUL     | NULL              |                  |
| content      | text           | NO    |         | NULL              |                  |
| created_at   | timestamp      | YES   |         | CURRENT_TIMESTAMP |DEFAULT_GENERATED |
+------------+-------------+--------+-------+-------------------------+------------------+


Description of table COMMENTS :


+---------------+-------------+------+-----+-------------------------+---------------------------+
| Field         | Type          | Null | Key  | Default           | Extra                        |
+---------------+-------------+------+-----+-------------------------+---------------------------+
| comment_id    | int           | NO   | PRI  | NULL              |                              |
| post_id       | int           | YES  | MUL  | NULL              |                              |
| user_id       | int           | YES  | MUL  | NULL              |                              |
| content       | text          | NO   |      | NULL              |                              |
| created_at    | timestamp     | YES  |      | CURRENT_TIMESTAMP | DEFAULT_GENERATED            |
+---------------+-----------+--------+-----+-------------------------+----------------------------+




Description of table LIKES:


+-------------+-----------+------+--------+------------------------------+--------------+
| Field         | Type        | Null | Key    | Default           | Extra               |
+-------------+------------+------+-------+------------------------------+--------------+
| like_id       | int         | NO   | PRI    | NULL              |                     |
| post_id       | int         | YES  | MUL    | NULL              |                     |
| user_id       | int         | YES  | MUL    | NULL              |                     |
| created_at    | timestamp   | YES  |        | CURRENT_TIMESTAMP | DEFAULT_GENERATED   |
+------------+------------+-------+------+-------------------------------+--------------+
