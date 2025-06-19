--Project 9 (USER Engagement Analysis)

CREATE TABLE Posts(Post_Id INT PRIMARY KEY,Post_Content TEXT,Post_Date TIMESTAMP);
INSERT INTO Posts(Post_Id,Post_Content,Post_Date) VALUES
(1,'Lorem ipsum dolor sit amet','2023-08-25 10:00:00'),
(2,'Exploring the beauty of nature','2023-08-26 15:30:00'),
(3,'Unveiling the latest tech trends','2023-08-27 12:00:00'),
(4,'Journey into the world of literature','2023-08-28 09:45:00'),
(5,'Capturing the essence of city life','2023-08-29 16:20:00');

SELECT * FROM Posts;

CREATE TABLE UserReactions(reaction_id INT PRIMARY KEY,user_id INT,post_id INT ,reaction_type VARCHAR(30),reaction_date TIMESTAMP);
INSERT INTO UserReactions(reaction_id,user_id,post_id,reaction_type,reaction_date) VALUES
(1,101, 1, 'like','2023-08-25 10:15:00'),
(2,102,1,'comment','2023-08-25 11:30:00'),
(3,103,1,'share','2023-08-26 12:45:00'),
(4,101,2,'like','2023-08-26 15:45:00'),
(5,102,2,'comment','2023-08-27 09:20:00'),
(6,104,2,'like','2023-08-27 10:00:00'),
(7,105,3,'comment','2023-08-27 14:30:00'),
(8,101,3,'like','2023-08-28 08:15:00'),
(9,103,4,'like','2023-08-28 10:30:00'),
(10,105,4,'share','2023-08-29 11:15:00'),
(11,104,5,'like','2023-08-29 16:30:00'),
(12,101,5,'comment','2023-08-30 09:45:00');

SELECT * FROM UserReactions;

--ANSWER 1

SELECT Posts.Post_Id ,posts.Post_Content,
count(CASE WHEN UserReactions.reaction_type = 'like' THEN 1 END) AS num_likes,
count(CASE WHEN UserReactions.reaction_type = 'comment' THEN 1 END) AS num_comments,
count(CASE WHEN UserReactions.reaction_type = 'share' THEN 1 END) AS num_shares

FROM Posts

LEFT JOIN UserReactions ON Posts.Post_Id = UserReactions.Post_Id

WHERE Posts.Post_Id = 2

GROUP BY  Posts.Post_Id,Posts.Post_Content;

--ANSWER 2

CREATE TABLE viewss AS SELECT DISTINCT(date(reaction_date)) AS reaction_day,count(DISTINCT user_id) AS distinct_user,count(reaction_type) AS total_reactions FROM
UserReactions GROUP BY reaction_day ORDER BY reaction_day

SELECT * FROM viewss

SELECT reaction_day ,
       distinct_user,
       total_reactions,
       (distinct_user + total_reactions) / 2.0 AS avg_reactions_per_user
       
FROM viewss;       
  
--ANSWER 3  
       
SELECT Posts.Post_Id,Posts.Post_Content,count(UserReactions.reaction_type) AS total_reactions FROM Posts LEFT OUTER JOIN UserReactions ON Posts.Post_Id =
UserReactions.Post_Id GROUP BY  Posts.Post_Id,Posts.Post_Content ORDER BY Post_Id LIMIT 3;
    



