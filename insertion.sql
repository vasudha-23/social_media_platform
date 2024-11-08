﻿Inserting records into the USERS table:


INSERT INTO users (user_id, username, email, phonenumber, country, state, city)
VALUES
(1, 'john_doe', 'john@example.com', 1234567890, 'USA', 'California', 'Los Angeles'),
(2, 'alice_smith', 'alice@example.com', 9876543210, 'UK', 'England', 'London'),
(3, 'bob_jones', 'bob@example.com', 5555555555, 'Canada', 'Ontario', 'Toronto'),
(4, 'emma_watson', 'emma@example.com', 1111222233, 'Australia', 'New South Wales', 'Sydney'),
(5, 'michael_chang', 'michael@example.com', 9999888877, 'China', 'Beijing', 'Beijing'),
(6, 'maria_garcia', 'maria@example.com', 7777666655, 'Spain', 'Madrid', 'Madrid'),
(7, 'adam_kowalski', 'adam@example.com', 4444333322, 'Poland', 'Masovian', 'Warsaw'),
(8, 'sakura_tanaka', 'sakura@example.com', 6666777788, 'Japan', 'Tokyo', 'Tokyo'),
(9, 'raja_kumar', 'raja@example.com', 2222111100, 'India', 'Maharashtra', 'Mumbai'),
(10, 'carla_santos', 'carla@example.com', 8888999900, 'Brazil', 'Sao Paulo', 'Sao Paulo');


Inserting records into the POSTS table:


INSERT INTO posts (post_id, user_id, content, created_at)
VALUES
(1, 3, 'Just posted a new photo!', CURRENT_TIMESTAMP),
(2, 1, 'Feeling excited about the weekend!', CURRENT_TIMESTAMP),
(3, 5, 'Exploring new places. #Travel', CURRENT_TIMESTAMP),
(4, 8, 'Coding all night. #DeveloperLife', CURRENT_TIMESTAMP),
(5, 2, 'Movie night with friends!', CURRENT_TIMESTAMP),
(6, 7, 'Art exhibition was amazing!', CURRENT_TIMESTAMP),
(7, 4, 'Cooking experiment gone wrong!', CURRENT_TIMESTAMP),
(8, 9, 'Celebrating a milestone at work!', CURRENT_TIMESTAMP),
(9, 10, 'Sunday brunch with family.', CURRENT_TIMESTAMP),
(10, 6, 'Fitness journey begins today!', CURRENT_TIMESTAMP);


Inserting records into the COMMENTS table:


INSERT INTO comments (comment_id, post_id, user_id, content, created_at)
VALUES
(1, 1, 5, 'Great photo! Where was it taken?', CURRENT_TIMESTAMP),
(2, 3, 2, 'Love your travel posts!', CURRENT_TIMESTAMP),
(3, 5, 9, 'Which movie did you watch?', CURRENT_TIMESTAMP),
(4, 7, 6, 'The art exhibition was indeed amazing!', CURRENT_TIMESTAMP),
(5, 8, 4, 'Congratulations on the milestone!', CURRENT_TIMESTAMP),
(6, 10, 1, 'You got this! 💪', CURRENT_TIMESTAMP),
(7, 2, 8, 'Excited for the weekend too!', CURRENT_TIMESTAMP),
(8, 4, 3, 'Tell me more about your coding projects.', CURRENT_TIMESTAMP),
(9, 6, 10, 'How do you stay fit?', CURRENT_TIMESTAMP),
(10, 9, 7, 'Sunday brunch sounds delightful!', CURRENT_TIMESTAMP);


Inserting records into the LIKES table:


INSERT INTO likes (like_id, post_id, user_id, created_at)
VALUES
(1, 1, 7, CURRENT_TIMESTAMP),
(2, 3, 4, CURRENT_TIMESTAMP),
(3, 5, 6, CURRENT_TIMESTAMP),
(4, 8, 2, CURRENT_TIMESTAMP),
(5, 2, 9, CURRENT_TIMESTAMP),
(6, 4, 1, CURRENT_TIMESTAMP),
(7, 7, 10, CURRENT_TIMESTAMP),
(8, 10, 3, CURRENT_TIMESTAMP),
(9, 6, 8, CURRENT_TIMESTAMP),
(10, 9, 5, CURRENT_TIMESTAMP);
