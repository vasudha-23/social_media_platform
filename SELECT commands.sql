SELECT Commands:
select * from users;
select * from posts;
select * from comments;
select * from  likes;


The following are the outputs of the SELECT commands:

USER table:

+---------+---------------+----------------------------+-----------------+-----------+---------------------+-------------+
| user_id | username      | email                            | phonenumber | country   | state                      | city            |
+---------+---------------+----------------------------+----------------+------------+----------------------+-------------+
|       1 | john_doe           | john@example.com     | 1234567890 | USA        | California             | Los Angeles |
|       2 | alice_smith        | alice@example.com    | 9876543210 | UK          | England                | London       |
|       3 | bob_jones          | bob@example.com      | 5555555555 | Canada    | Ontario                 | Toronto      |
|       4 | emma_watson   | emma@example.com   | 1111222233 | Australia | New South Wales | Sydney       |
|       5 | michael_chang  | michael@example.com| 9999888877 | China      | Beijing                  | Beijing       |
|       6 | maria_garcia     | maria@example.com    | 7777666655 | Spain       | Madrid                 | Madrid       |
|       7 | adam_kowalski | adam@example.com    | 4444333322 | Poland     | Masovian             | Warsaw      |
|       8 | sakura_tanaka   | sakura@example.com   | 6666777788 | Japan       | Tokyo                  | Tokyo         |
|       9 | raja_kumar        | raja@example.com       |  2222111100 | India       | Maharashtra         | Mumbai     |
|      10 | carla_santos     | carla@example.com      |  8888999900 | Brazil    | Sao Paulo             | Sao Paulo   |
+---------+---------------+---------------------+-------------+-----------+-----------------+-------------+--------------+



POSTS table:
+---------+---------+-------------------------------------------+---------------------------+
| post_id | user_id | content                                              | created_at                    |
+---------+---------+-------------------------------------------+---------------------------+
|           1 |           3 | Just posted a new photo!                  | 2024-02-22 10:42:06   |
|           2 |           1 | Feeling excited about the weekend! | 2024-02-22 10:42:06   |
|           3 |           5 | Exploring new places. #Travel         | 2024-02-22 10:42:06   |
|           4 |    	   8 | Coding all night. #DeveloperLife    | 2024-02-22 10:42:06   |
|           5 |           2 | Movie night with friends!                 | 2024-02-22 10:42:06   |
|           6 |           7 | Art exhibition was amazing!             | 2024-02-22 10:42:06   |
|           7 |           4 | Cooking experiment gone wrong!    | 2024-02-22 10:42:06   |
|           8 |           9 | Celebrating a milestone at work!      | 2024-02-22 10:42:06   |
|           9 |         10 | Sunday brunch with family.               | 2024-02-22 10:42:06  |
|         10 |           6 | Fitness journey begins today!            | 2024-02-22 10:42:06  |
+---------+---------+--------------------------------------------+----------------------------+



COMMENTS table:
+---------------+---------+---------+------------------------------------------+--------------------------+
| comment_id | post_id | user_id | content                                             | created_at                  |
+---------------+---------+---------+-------------------------------------------+--------------------------+
|          1          |       1 |       5 | Great photo! Where was it taken?           | 2024-02-22 10:42:06 |
|          2          |       3 |       2 | Love your travel posts!                            | 2024-02-22 10:42:06 |
|          3          |       5 |       9 | Which movie did you watch?                   | 2024-02-22 10:42:06 |
|          4          |       7 |       6 | The art exhibition was indeed amazing!   | 2024-02-22 10:42:06 |
|          5          |       8 |       4 | Congratulations on the milestone!            | 2024-02-22 10:42:06 |
|          6          |      10 |       1 | You got this! ?                                          | 2024-02-22 10:42:06 |
|          7          |       2 |       8 | Excited for the weekend too!                    | 2024-02-22 10:42:06 |
|          8          |       4 |       3 | Tell me more about your coding projects.| 2024-02-22 10:42:06 |
|          9          |       6 |      10 | How do you stay fit?                                | 2024-02-22 10:42:06 |
|         10         |       9 |       7 | Sunday brunch sounds delightful!            | 2024-02-22 10:42:06 |
+---------------+------+-------+-------------------------------------------------+-------------------------+



LIKES table:
+----------+---------+---------+--------------------------+
| like_id   | post_id | user_id | created_at                  |
+---------+----------+---------+--------------------------+
|          1 |           1 |            7 | 2024-02-22 10:42:10 |
|          2 |           3 |           4 | 2024-02-22 10:42:10  |
|          3 |           5 |           6 | 2024-02-22 10:42:10  |
|          4 |           8 |           2 | 2024-02-22 10:42:10  |
|          5 |           2 |           9 | 2024-02-22 10:42:10  |
|          6 |           4 |           1 | 2024-02-22 10:42:10  |
|          7 |           7 |         10 | 2024-02-22 10:42:10  |
|          8 |         10 |          3 | 2024-02-22 10:42:10   | 
|          9 |           6 |          8 | 2024-02-22 10:42:10   |
|        10 |           9 |          5 | 2024-02-22 10:42:10   |
+--------+---------+---------+---------------------------+
