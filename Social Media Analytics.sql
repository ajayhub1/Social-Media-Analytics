CREATE DATABASE Social_Media_Analytics;
USE Social_Media_Analytics;
-- DROP DATABASE Social_Media_Analytics;

CREATE TABLE Users (
User_id INT PRIMARY KEY AUTO_INCREMENT, 
Username VARCHAR(30) UNIQUE, 
Email VARCHAR(30) UNIQUE NOT null, 
Mail_Password VARCHAR(50), 
Phone VARCHAR(15), 
Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Users (Username, Email, Mail_Password, Phone) VALUES
('arun','arun01@gmail.com','Arun@4827','9384658738'),
('bala','bala02@gmail.com','Bala#7391','9849208458'),
('charan','charan03@gmail.com','Charan$5628','9456282990'),
('deepa','deepa04@gmail.com','Deepa@9046','9355739194'),
('elina','elina05@gmail.com','Elina#7315','9364912023'),
('farhan','farhan06@gmail.com','Farhan$8264','7309302506'),
('gowtham','gowtham07@gmail.com','Gowtham@4937','9053065278'),
('hari','hari08@gmail.com','Hari#6185','9074905608'),
('ishan','ishan09@gmail.com','Ishan$7529','9648900349'),
('jaya','jaya10@gmail.com','Jaya@3846','9178907610'),
('karthik','karthik11@gmail.com','Karthik#9274','7448990417'),
('lakshmi','lakshmi12@gmail.com','Lakshmi$6158','7658201912'),
('manoj','manoj13@gmail.com','Manoj@8463','9630920405'),
('naveen','naveen14@gmail.com','Naveen#5297','9467803002'),
('ojas','ojas15@gmail.com','Ojas$7384','9038902033'),
('priya','priya16@gmail.com','Priya@9162','9225667516'),
('qasim','qasim17@gmail.com','Qasim#4839','9947890200'),
('rahul','rahul18@gmail.com','Rahul$6725','9379002235'),
('sanjay','sanjay19@gmail.com','Sanjay@8451','9678360240'),
('tara','tara20@gmail.com','Tara#3968','9222398740'),
('uma','uma21@gmail.com','Uma$7514','9379020387'),
('vijay','vijay22@gmail.com','Vijay@6283','9657883056'),
('waseem','waseem23@gmail.com','Waseem#9472','9852903453'),
('xavier','xavier24@gmail.com','Xavier$5836','9050047894'),
('yamini','yamini25@gmail.com','Yamini@7249','9289019035'),
('zara','zara26@gmail.com','Zara#8615','9390506023'),
('ajay','ajay27@gmail.com','Ajay$4398','9059390266'),
('banu','banu28@gmail.com','Banu@7526','9123456789'),
('cathy','cathy29@gmail.com','Cathy#6184','9876543210'),
('dinesh','dinesh30@gmail.com','Dinesh$9357','9987643210'),
('eshwar','eshwar31@gmail.com','Eshwar@4729','9555567890'),
('fathima','fathima32@gmail.com','Fathima#8265','9156880346'),
('ganesh','ganesh33@gmail.com','Ganesh$7193','9456744557'),
('hema','hema34@gmail.com','Hema@5842','9012345678'),
('irfan','irfan35@gmail.com','Irfan#9637','9765432109'),
('jeni','jeni36@gmail.com','Jeni$4285','9234567890'),
('kavin','kavin37@gmail.com','Kavin@7396','9543210987'),
('lavanya','lavanya38@gmail.com','Lavanya#8154','9876543211'),
('mohan','mohan39@gmail.com','Mohan$6248','9012456789'),
('nandha','nandha40@gmail.com','Nandha@9375','9765432110'),
('omkar','omkar41@gmail.com','Omkar#4826','9954320988'),
('pavithra','pavithra42@gmail.com','Pavithra$7569','9343456565'),
('queen','queen43@gmail.com','Queen@3947','9787890909'),
('ravi','ravi44@gmail.com','Ravi#8253','9485712364'),
('siva','siva45@gmail.com','Siva$6174','9172638495'),
('thara','thara46@gmail.com','Thara@9382','9638527410'),
('udhay','udhay47@gmail.com','Udhay#5649','9201938475'),
('varun','varun48@gmail.com','Varun$7285','9746382910'),
('vani','vani49@gmail.com','Vani@8163','9352416079'),
('yogi','yogi50@gmail.com','Yogi#4927','9812736450'),
('akash','akash51@gmail.com','Akash$7358','9506918273'),
('bhavana','bhavana52@gmail.com','Bhavana@6194','9048372615'),
('chitra','chitra53@gmail.com','Chitra#8472','9812736450'),
('dhivya','dhivya54@gmail.com','Dhivya$5268','9506918273'),
('keerthi','keerthi55@gmail.com','Keerthi@7935','9625143908'),
('lokesh','lokesh56@gmail.com','Lokesh#4682','9198273645'),
('monisha','monisha57@gmail.com','Monisha$9517','9435216087'),
('nithin','nithin58@gmail.com','Nithin@6843','9871234560'),
('pooja','pooja59@gmail.com','Pooja#7392','9304958271'),
('rohit','rohit60@gmail.com','Rohit$8256','9651438207');

SELECT * FROM Users;
SELECT * FROM Users WHERE Location='Chennai';
CREATE INDEX idx_username ON Users(Username);

CREATE TABLE User_Profiles (
Profile_id INT PRIMARY KEY AUTO_INCREMENT, 
User_id INT, 
Full_Name VARCHAR(100), 
Bio TEXT, 
Gender VARCHAR(20), 
Location VARCHAR(100),
Profile_Image VARCHAR(255), 
FOREIGN KEY (User_id) REFERENCES Users(User_id)
);

INSERT INTO User_Profiles (User_id, Full_Name, Bio, Gender, Location, Profile_Image) VALUES
(1,'Arun Kumar','Tech lover and blogger','Male','Chennai','arun.jpg'),
(2,'Bala Raj','Photography lover','Male','Madurai','bala.jpg'),
(3,'Charan Das','Music enthusiast','Male','Coimbatore','charan.jpg'),
(4,'Deepa Sri','Travel explorer','Female','Salem','deepa.jpg'),
(5,'Elina Rose','Fashion designer','Female','Trichy','elina.jpg'),
(6,'Farhan Ali','Digital marketer','Male','Chennai','farhan.jpg'),
(7,'Gowtham Raj','Software developer','Male','Bangalore','gowtham.jpg'),
(8,'Hari Prasad','Food reviewer','Male','Hyderabad','hari.jpg'),
(9,'Ishan Kumar','Gaming creator','Male','Pune','ishan.jpg'),
(10,'Jaya Lakshmi','Content creator','Female','Chennai','jaya.jpg'),
(11,'Karthik M','AI researcher','Male','Delhi','karthik.jpg'),
(12,'Lakshmi Devi','Artist','Female','Madurai','lakshmi.jpg'),
(13,'Manoj Kumar','Fitness trainer','Male','Chennai','manoj.jpg'),
(14,'Naveen Raj','Movie critic','Male','Bangalore','naveen.jpg'),
(15,'Priya S','Writer','Female','Coimbatore','priya.jpg'),
(16,'Rahul Singh','Entrepreneur','Male','Mumbai','rahul.jpg'),
(17,'Sanjay Kumar','Developer','Male','Pune','sanjay.jpg'),
(18,'Tara Devi','Teacher','Female','Chennai','tara.jpg'),
(19,'Vijay Kumar','Business owner','Male','Salem','vijay.jpg'),
(20,'Yamini R','Social worker','Female','Trichy','yamini.jpg');

SELECT * FROM User_Profiles;

CREATE TABLE Posts (
    Post_id INT PRIMARY KEY AUTO_INCREMENT,
    User_id INT,
    Content TEXT,
    Post_type VARCHAR(30),
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(User_id) REFERENCES Users(User_id)
);

INSERT INTO Posts (User_id,Content,Post_Type) VALUES
(1,'My first technology update','Text'),
(2,'Beautiful nature photography','Image'),
(3,'My new music cover video','Video'),
(4,'Travel memories from my trip','Image'),
(5,'Latest fashion trends','Text'),
(6,'Digital marketing tips','Text'),
(7,'Programming tutorial for beginners','Video'),
(8,'Restaurant food review','Text'),
(9,'New gaming stream update','Video'),
(10,'Creative content ideas','Text'),
(11,'Artificial intelligence news','Text'),
(12,'My latest painting work','Image'),
(13,'Fitness motivation video','Video'),
(14,'Latest movie review','Text'),
(15,'Short story publication','Text'),
(16,'Startup experience sharing','Text'),
(17,'Coding tricks and tips','Video'),
(18,'Education guidance post','Text'),
(19,'Business growth ideas','Text'),
(20,'Community service activity','Image');

SELECT * FROM Posts;
SELECT User_id, COUNT(Post_id) AS Total_Posts FROM Posts GROUP BY User_id;
SELECT u.Username, p.Content FROM Users u JOIN Posts p ON u.User_id=p.User_id;
SELECT Username FROM Users WHERE User_id IN (SELECT User_id FROM Posts);
CREATE VIEW User_Post_Details AS SELECT u.Username, p.Content FROM Users u JOIN Posts p ON u.User_id=p.User_id;

CREATE TABLE Post_Media (
    Media_id INT PRIMARY KEY AUTO_INCREMENT,
    Post_id INT,
    Media_Type VARCHAR(20),
    Media_Url VARCHAR(255),
    FOREIGN KEY(Post_id) REFERENCES Posts(Post_id)
);

INSERT INTO Post_Media (Post_id,Media_Type,Media_Url) VALUES
(1,'Image','technology_01.png'),
(2,'Image','nature_02.png'),
(3,'Video','music_03.mp4'),
(4,'Image','travel_04.png'),
(5,'Image','fashion_05.png'),
(6,'Video','marketing_06.mp4'),
(7,'Video','coding_07.mp4'),
(8,'Image','food_08.png'),
(9,'Video','gaming_09.mp4'),
(10,'Image','creator_10.png'),
(11,'Video','ai_11.mp4'),
(12,'Image','art_12.png'),
(13,'Video','fitness_13.mp4'),
(14,'Image','movie_14.png'),
(15,'Text','story_15.txt'),
(16,'Image','startup_16.png'),
(17,'Video','programming_17.mp4'),
(18,'Image','education_18.png'),
(19,'Image','business_19.png'),
(20,'Video','service_20.mp4');

SELECT * FROM Post_Media;

CREATE TABLE Comments (
    Comment_id INT PRIMARY KEY AUTO_INCREMENT,
    Post_id INT,
    User_id INT,
    Comment_text TEXT,
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO Comments (Post_id,User_id,Comment_Text) VALUES
(1,2,'Great technology update'),
(2,3,'Amazing photography'),
(3,4,'Nice music video'),
(4,5,'Beautiful travel place'),
(5,6,'Fashion idea is good'),
(6,7,'Useful marketing tips'),
(7,8,'Very helpful tutorial'),
(8,9,'Good food review'),
(9,10,'Awesome gaming content'),
(10,11,'Creative post'),
(11,12,'Interesting AI information'),
(12,13,'Beautiful artwork'),
(13,14,'Motivating fitness video'),
(14,15,'Good movie analysis'),
(15,16,'Nice story writing'),
(16,17,'Great startup idea'),
(17,18,'Useful coding tips'),
(18,19,'Helpful education post'),
(19,20,'Good business idea'),
(20,1,'Great social service');

SELECT * FROM Comments;
SELECT u.Username, c.Comment_text FROM Users u JOIN Comments c ON u.User_id=c.User_id;

CREATE TABLE Replies (
    Reply_id INT PRIMARY KEY AUTO_INCREMENT,
    Comment_id INT,
    User_id INT,
    Reply_text TEXT,
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(comment_id) REFERENCES Comments(Comment_id),
    FOREIGN KEY(user_id) REFERENCES Users(User_id)
);

INSERT INTO Replies (Comment_id,User_id,Reply_text) VALUES
(1,3,'Thank you for your feedback'),
(2,4,'Glad you liked it'),
(3,5,'Thanks for watching'),
(4,6,'Happy you enjoyed it'),
(5,7,'Thank you so much'),
(6,8,'More updates coming soon'),
(7,9,'Keep learning'),
(8,10,'Thanks for support'),
(9,11,'Gaming is exciting'),
(10,12,'Appreciate your comment'),
(11,13,'AI is the future'),
(12,14,'Thanks for your support'),
(13,15,'Stay motivated'),
(14,16,'Thanks for reading'),
(15,17,'More stories soon'),
(16,18,'Thank you friend'),
(17,19,'Keep coding'),
(18,20,'Glad to help'),
(19,1,'Thank you'),
(20,2,'Great support');

SELECT * FROM Replies;

CREATE TABLE likes (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO likes (post_id,user_id) VALUES
(1,5),(2,6),(3,7),(4,8),(5,9),(6,10),(7,11),(8,12),(9,13),(10,14),(11,15),(12,16),(13,17),(14,18),(15,19),(16,20),(17,1),(18,2),(19,3),(20,4);

SELECT * FROM likes;

CREATE TABLE shares (
    share_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    shared_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO shares (post_id,user_id) VALUES
(1,10),(2,11),(3,12),(4,13),(5,14),(6,15),(7,16),(8,17),(9,18),(10,19),(11,20),(12,1),(13,2),(14,3),(15,4),(16,5),(17,6),(18,7),(19,8),(20,9);

SELECT * FROM shares;

CREATE TABLE followers (
    follower_id INT PRIMARY KEY AUTO_INCREMENT,
    follower_user_id INT,
    following_user_id INT,
    followed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(follower_user_id) REFERENCES users(user_id),
    FOREIGN KEY(following_user_id) REFERENCES users(user_id)
);

INSERT INTO followers (follower_user_id,following_user_id) VALUES
(1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10),(10,11),(11,12),(12,13),(13,14),(14,15),(15,16),(16,17),(17,18),(18,19),(19,20),(20,1);

SELECT * FROM followers;
SELECT following_user_id, COUNT(*) AS Followers FROM Followers GROUP BY following_user_id;

CREATE TABLE hashtags (
    hashtag_id INT PRIMARY KEY AUTO_INCREMENT,
    hashtag_name VARCHAR(100)
);

INSERT INTO hashtags (hashtag_name) VALUES
('#technology'),('#coding'),('#music'),('#travel'),('#fashion'),('#marketing'),('#programming'),('#food'),('#gaming'),('#creator'),
('#ai'),('#art'),('#fitness'),('#movies'),('#writing'),('#startup'),('#education'),('#business'),('#community'),('#innovation');

SELECT * FROM hashtags;

CREATE TABLE post_hashtags (
    post_hashtag_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    hashtag_id INT,
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(hashtag_id) REFERENCES hashtags(hashtag_id)
);

INSERT INTO post_hashtags (post_id,hashtag_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);

SELECT * FROM post_hashtags;

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100)
);

INSERT INTO categories (category_name) VALUES
('Technology'),('Programming'),('Music'),('Travel'),('Fashion'),('Marketing'),('Software Development'),('Food'),('Gaming'),('Content Creation'),
('Artificial Intelligence'),('Art'),('Fitness'),('Movies'),('Writing'),('Startup'),('Education'),('Business'),('Community Service'),('Innovation');

SELECT * FROM categories;

CREATE TABLE post_categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    category_id INT,
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

INSERT INTO post_categories (post_id,category_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);

SELECT * FROM post_categories;

CREATE TABLE conversations (
    conversation_id INT PRIMARY KEY AUTO_INCREMENT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO conversations (conversation_id) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20);

SELECT * FROM conversations;

CREATE TABLE conversation_participants (
    participant_id INT PRIMARY KEY AUTO_INCREMENT,
    conversation_id INT,
    user_id INT,
    FOREIGN KEY (conversation_id)
        REFERENCES conversations(conversation_id),
    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

INSERT INTO conversation_participants
(conversation_id, user_id)
VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6),
(4,7),
(4,8),
(5,9),
(5,10);

Select * from conversation_participants;
SELECT
c.conversation_id,
u.username
FROM conversations c
JOIN conversation_participants cp
ON c.conversation_id = cp.conversation_id
JOIN users u
ON cp.user_id = u.user_id
WHERE c.conversation_id = 1;

CREATE TABLE messages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    conversation_id INT,
    sender_id INT,
    message_text TEXT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(conversation_id) REFERENCES conversations(conversation_id),
    FOREIGN KEY(sender_id) REFERENCES users(user_id)
);

INSERT INTO messages (conversation_id,sender_id,message_text) VALUES
(1,1,'Hello Arun'),(2,2,'Hi Bala'),(3,3,'Good morning'),(4,4,'How are you'),(5,5,'Nice post'),
(6,6,'Keep sharing'),(7,7,'Great content'),(8,8,'Thank you'),(9,9,'Awesome work'),(10,10,'Good idea'),
(11,11,'Interesting topic'),(12,12,'Nice update'),(13,13,'Well done'),(14,14,'Good review'),(15,15,'Amazing story'),
(16,16,'Great startup'),(17,17,'Useful information'),(18,18,'Helpful post'),(19,19,'Good business tips'),(20,20,'Excellent work');

SELECT * FROM messages;
SELECT
c.conversation_id,
u.username,
m.message_text
FROM conversations c
JOIN messages m
ON c.conversation_id = m.conversation_id
JOIN users u
ON m.sender_id = u.user_id
WHERE c.conversation_id = 1;

CREATE TABLE post_analytics (
    analytics_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    views INT DEFAULT 0,
    likes_count INT DEFAULT 0,
    shares_count INT DEFAULT 0,
    comments_count INT DEFAULT 0,
    FOREIGN KEY(post_id) REFERENCES posts(post_id)
);

INSERT INTO post_analytics (post_id,views,likes_count,shares_count,comments_count) VALUES
(1,500,50,10,5),(2,650,80,15,8),(3,700,90,20,10),(4,800,100,25,12),(5,450,40,8,4),(6,900,120,30,15),(7,1000,150,40,20),(8,550,60,12,6),(9,750,95,18,9),(10,600,70,14,7),
(11,850,110,22,11),(12,400,35,5,3),(13,950,130,35,18),(14,720,85,17,8),(15,520,55,9,5),(16,680,75,16,7),(17,880,115,28,13),(18,610,65,12,6),(19,770,98,21,10),(20,920,125,32,16);

SELECT * FROM post_analytics;
SELECT * FROM Post_Analytics ORDER BY views DESC;
SELECT SUM(likes) from post_analytics;
CREATE TRIGGER trg_like_count
AFTER INSERT ON Likes
FOR EACH ROW
UPDATE Post_Analytics
SET likes_count = likes_count + 1
WHERE post_id = NEW.post_id;

CREATE TABLE user_analytics (
    user_analytics_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    total_posts INT,
    total_followers INT,
    total_following INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO user_analytics (user_id,total_posts,total_followers,total_following) VALUES
(1,10,120,80),(2,12,150,90),(3,8,100,70),(4,15,200,110),(5,9,130,60),(6,14,180,95),(7,20,250,140),(8,11,160,75),(9,13,170,85),(10,18,220,100),
(11,16,190,90),(12,7,90,50),(13,19,240,120),(14,10,140,65),(15,6,80,40),(16,17,210,105),(17,21,270,150),(18,9,125,55),(19,14,175,88),(20,11,145,72);

SELECT * FROM user_analytics;
SELECT
u.user_id,
u.username,
COUNT(DISTINCT p.post_id) AS total_posts,
COUNT(DISTINCT f1.follower_user_id) AS total_followers,
COUNT(DISTINCT f2.following_user_id) AS total_following
FROM Users u
LEFT JOIN Posts p
ON u.user_id = p.user_id
LEFT JOIN Followers f1
ON u.user_id = f1.following_user_id
LEFT JOIN Followers f2
ON u.user_id = f2.follower_user_id
GROUP BY u.user_id;

CREATE TABLE engagement_metrics (
    metric_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    engagement_rate DECIMAL(5,2),
    recorded_date DATE,
    FOREIGN KEY(post_id) REFERENCES posts(post_id)
);

INSERT INTO engagement_metrics (post_id,engagement_rate,recorded_date) VALUES
(1,8.50,'2026-01-01'),(2,9.20,'2026-01-02'),(3,10.50,'2026-01-03'),(4,12.10,'2026-01-04'),(5,7.80,'2026-01-05'),
(6,13.40,'2026-01-06'),(7,15.20,'2026-01-07'),(8,9.80,'2026-01-08'),(9,11.50,'2026-01-09'),(10,10.00,'2026-01-10'),
(11,14.30,'2026-01-11'),(12,6.50,'2026-01-12'),(13,16.80,'2026-01-13'),(14,12.50,'2026-01-14'),(15,8.90,'2026-01-15'),
(16,11.00,'2026-01-16'),(17,15.70,'2026-01-17'),(18,9.40,'2026-01-18'),(19,13.10,'2026-01-19'),(20,14.80,'2026-01-20');

select * from engagement_metrics;
SELECT AVG(engagement_rate) FROM engagement_metrics;

CREATE TABLE daily_activity (
    activity_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    login_count INT,
    post_count INT,
    activity_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO daily_activity (user_id,login_count,post_count,activity_date) VALUES
(1,5,2,'2026-02-01'),(2,4,3,'2026-02-02'),(3,6,1,'2026-02-03'),(4,7,4,'2026-02-04'),(5,3,2,'2026-02-05'),
(6,8,5,'2026-02-06'),(7,9,6,'2026-02-07'),(8,4,2,'2026-02-08'),(9,6,3,'2026-02-09'),(10,10,5,'2026-02-10'),
(11,7,4,'2026-02-11'),(12,3,1,'2026-02-12'),(13,9,6,'2026-02-13'),(14,5,2,'2026-02-14'),(15,4,1,'2026-02-15'),
(16,8,5,'2026-02-16'),(17,10,7,'2026-02-17'),(18,6,3,'2026-02-18'),(19,7,4,'2026-02-19'),(20,5,2,'2026-02-20');

SELECT * FROM daily_activity;

CREATE TABLE traffic_sources (
    source_id INT PRIMARY KEY AUTO_INCREMENT,
    source_name VARCHAR(100),
    visits INT
);

INSERT INTO traffic_sources (source_name,visits) VALUES
('Google Search',5000),('Facebook Ads',4200),('Instagram',6500),('YouTube',7000),('Twitter',3500),
('LinkedIn',3000),('Direct Traffic',8000),('Email Campaign',2500),('Mobile App',9000),('Website Referral',3200),
('Blog Links',2100),('Influencer Links',4500),('Search Ads',5200),('Organic Reach',7800),('Community Groups',2800),
('News Articles',1900),('Affiliate Links',3600),('Push Notifications',4100),('QR Campaign',1500),('Other Sources',1000);

SELECT * FROM traffic_sources;

CREATE TABLE ad_campaigns (
    campaign_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    campaign_name VARCHAR(100),
    budget DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO ad_campaigns (user_id,campaign_name,budget,start_date,end_date) VALUES
(1,'Tech Promotion Campaign',5000.00,'2026-03-01','2026-03-10'),
(2,'Photography Reach Campaign',4000.00,'2026-03-02','2026-03-11'),
(3,'Music Advertisement Campaign',3500.00,'2026-03-03','2026-03-12'),
(4,'Travel Explorer Campaign',6000.00,'2026-03-04','2026-03-13'),
(5,'Fashion Trends Campaign',7000.00,'2026-03-05','2026-03-14'),
(6,'Marketing Course Campaign',4500.00,'2026-03-06','2026-03-15'),
(7,'Coding Bootcamp Campaign',8000.00,'2026-03-07','2026-03-16'),
(8,'Food Review Campaign',3000.00,'2026-03-08','2026-03-17'),
(9,'Gaming Stream Campaign',5500.00,'2026-03-09','2026-03-18'),
(10,'Creator Growth Campaign',6500.00,'2026-03-10','2026-03-19'),
(11,'AI Workshop Campaign',9000.00,'2026-03-11','2026-03-20'),
(12,'Art Exhibition Campaign',2500.00,'2026-03-12','2026-03-21'),
(13,'Fitness Program Campaign',7500.00,'2026-03-13','2026-03-22'),
(14,'Movie Promotion Campaign',4800.00,'2026-03-14','2026-03-23'),
(15,'Writing Contest Campaign',2200.00,'2026-03-15','2026-03-24'),
(16,'Startup Event Campaign',8500.00,'2026-03-16','2026-03-25'),
(17,'Programming Ads Campaign',5200.00,'2026-03-17','2026-03-26'),
(18,'Education Program Campaign',4300.00,'2026-03-18','2026-03-27'),
(19,'Business Growth Campaign',6200.00,'2026-03-19','2026-03-28'),
(20,'Social Service Campaign',2800.00,'2026-03-20','2026-03-29');

SELECT * FROM ad_campaigns;
ALTER TABLE ad_campaigns
ADD source_id INT,
ADD FOREIGN KEY (source_id)
REFERENCES traffic_sources(source_id);

CREATE TABLE ad_creatives (
    creative_id INT PRIMARY KEY AUTO_INCREMENT,
    campaign_id INT,
    creative_type VARCHAR(50),
    creative_url VARCHAR(255),
    FOREIGN KEY(campaign_id) REFERENCES ad_campaigns(campaign_id)
);

INSERT INTO ad_creatives (campaign_id,creative_type,creative_url) VALUES
(1,'Image','tech_ad_01.png'),(2,'Video','photo_ad_02.mp4'),(3,'Image','music_ad_03.png'),(4,'Video','travel_ad_04.mp4'),(5,'Image','fashion_ad_05.png'),
(6,'Banner','marketing_ad_06.png'),(7,'Video','coding_ad_07.mp4'),(8,'Image','food_ad_08.png'),(9,'Video','gaming_ad_09.mp4'),(10,'Banner','creator_ad_10.png'),
(11,'Video','ai_ad_11.mp4'),(12,'Image','art_ad_12.png'),(13,'Video','fitness_ad_13.mp4'),(14,'Banner','movie_ad_14.png'),(15,'Image','writing_ad_15.png'),
(16,'Video','startup_ad_16.mp4'),(17,'Image','program_ad_17.png'),(18,'Banner','education_ad_18.png'),(19,'Video','business_ad_19.mp4'),(20,'Image','service_ad_20.png');

SELECT * FROM ad_creatives;

CREATE TABLE ad_performance (
    performance_id INT PRIMARY KEY AUTO_INCREMENT,
    campaign_id INT,
    impressions INT,
    clicks INT,
    conversions INT,
    FOREIGN KEY(campaign_id) REFERENCES ad_campaigns(campaign_id)
);

INSERT INTO ad_performance (campaign_id,impressions,clicks,conversions) VALUES
(1,10000,500,50),(2,12000,600,70),(3,9000,400,40),(4,15000,800,90),(5,18000,900,120),
(6,11000,550,60),(7,20000,1000,150),(8,8000,300,35),(9,14000,700,80),(10,16000,750,100),
(11,22000,1200,180),(12,7000,250,30),(13,19000,950,140),(14,13000,620,75),(15,6000,200,20),
(16,21000,1100,160),(17,17000,850,110),(18,10000,450,55),(19,15500,780,95),(20,7500,280,25);

SELECT * FROM ad_performance;

CREATE TABLE notifications (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    message VARCHAR(255),
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO notifications (user_id,message,status) VALUES
(1,'Your post received a like','Read'),(2,'New follower added','Unread'),(3,'Comment received','Read'),(4,'Post shared successfully','Unread'),(5,'New message received','Read'),
(6,'Campaign approved','Unread'),(7,'Profile viewed','Read'),(8,'New comment added','Unread'),(9,'Video liked by user','Read'),(10,'New follower request','Unread'),
(11,'Post is trending','Read'),(12,'Mention notification','Unread'),(13,'Achievement unlocked','Read'),(14,'New message notification','Unread'),(15,'Post saved successfully','Read'),
(16,'Campaign updated','Unread'),(17,'New follower joined','Read'),(18,'Comment reply received','Unread'),(19,'Analytics report ready','Read'),(20,'Account updated successfully','Unread');

SELECT * FROM notifications;

CREATE TABLE user_sessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    login_time TIMESTAMP,
    logout_time TIMESTAMP,
    ip_address VARCHAR(50),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

INSERT INTO user_sessions (user_id,login_time,logout_time,ip_address) VALUES
(1,'2026-04-01 09:00:00','2026-04-01 10:00:00','192.168.1.1'),
(2,'2026-04-02 09:10:00','2026-04-02 10:20:00','192.168.1.2'),
(3,'2026-04-03 08:30:00','2026-04-03 09:45:00','192.168.1.3'),
(4,'2026-04-04 10:00:00','2026-04-04 11:00:00','192.168.1.4'),
(5,'2026-04-05 11:00:00','2026-04-05 12:15:00','192.168.1.5'),
(6,'2026-04-06 12:00:00','2026-04-06 13:00:00','192.168.1.6'),
(7,'2026-04-07 13:00:00','2026-04-07 14:00:00','192.168.1.7'),
(8,'2026-04-08 14:00:00','2026-04-08 15:00:00','192.168.1.8'),
(9,'2026-04-09 15:00:00','2026-04-09 16:00:00','192.168.1.9'),
(10,'2026-04-10 16:00:00','2026-04-10 17:00:00','192.168.1.10'),
(11,'2026-04-11 09:00:00','2026-04-11 10:00:00','192.168.1.11'),
(12,'2026-04-12 10:00:00','2026-04-12 11:00:00','192.168.1.12'),
(13,'2026-04-13 11:00:00','2026-04-13 12:00:00','192.168.1.13'),
(14,'2026-04-14 12:00:00','2026-04-14 13:00:00','192.168.1.14'),
(15,'2026-04-15 13:00:00','2026-04-15 14:00:00','192.168.1.15'),
(16,'2026-04-16 14:00:00','2026-04-16 15:00:00','192.168.1.16'),
(17,'2026-04-17 15:00:00','2026-04-17 16:00:00','192.168.1.17'),
(18,'2026-04-18 16:00:00','2026-04-18 17:00:00','192.168.1.18'),
(19,'2026-04-19 17:00:00','2026-04-19 18:00:00','192.168.1.19'),
(20,'2026-04-20 18:00:00','2026-04-20 19:00:00','192.168.1.20');

SELECT * FROM user_sessions;
