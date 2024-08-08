-- Active: 1722860389233@@127.0.0.1@3306


--create authors table
CREATE TABLE "Authors" (
	"a_id"	INTEGER NOT NULL UNIQUE,
	"first_Name"	TEXT NOT NULL,
	"last_Name"	TEXT NOT NULL,
	"nationality"	TEXT NOT NULL,
	PRIMARY KEY("a_id" AUTOINCREMENT)
);

--create books table
CREATE TABLE "Books" (
	"b_id"	INTEGER NOT NULL UNIQUE,
	"title"	TEXT NOT NULL,
	"author_id"	INTEGER NOT NULL,
	"description"	TEXT NOT NULL,
	PRIMARY KEY("b_id" AUTOINCREMENT),
	FOREIGN KEY("author_id") REFERENCES "Authors"("a_id")
);

--insert into books table
INSERT INTO Books (title, author_id, description) VALUES
('being maryjane', 1, 'focuses on the life of successful SNC news anchor, Mary Jane Paul who is the quintessential single black female'),
('itis dusk in Africa',2,'the sky often transforms into a mesmerizing palette of rich hues'),
('think like a man and act like a lady',3,' how men really think of love, relationships, intimacy, commitment, and how to successfully navigate a relationship'),
('gifted,hunted but not haunted',4,'unpacks the troubles that Haunts Gifted people who are always Hunted by the good and bad people in society'),
('A Murder, a Mystery and a Marriage',5,'A humble farmer means for his daughter to marry a wealthy mans son until a stranger is found unconscious in the snow'),
('green pasture',5, 'a man who accepted a better job offer not knowing his mental state will betriggered'),
('the night is still young',1,'group of friends went clubbing when they were suppose to leave they decided to go second location'),
('diary of a black woman',5, 'after 15 years of marriage  the husband decided to throw his wife out of the house and invite his girlfriend in'),
('Wait To Be Seated',4,' is an effective way of steering customers in the right direction'),
('straight talk no chaser',3,'Harvey lays out a three-tier, CIA-style of questioning that will leave your man no choice but to cut to the chase and deliver the truth');

--insert into authors table
INSERT INTO Authors (first_Name, last_Name, Nationality) VALUES
('Lizzie',' Ngwenya', 'South African'),
('Mara ','Brock Akil', 'American'),
('Hosea','Ramphekwa','South African'),
('Steve', 'Harvey', 'British'),;('Mark', 'Twain', 'American');


--count number of books
SELECT count(Title) as num_books
FROM Books;
 
--COUNT HOW MANY BOOKS AN AUTHOR HAS
SELECT a.first_Name, a.last_Name, COUNT(b.b_ID) AS BookCount
FROM Authors a
JOIN Books b ON a.a_id = b.author_id
GROUP BY a.a_id, a.first_Name, a.last_Name
ORDER BY BookCount DESC
LIMIT 1;
 
--how many books there are according to nationality,
SELECT a.Nationality, COUNT(b.b_ID) AS BookCount
FROM Authors a
JOIN Books b ON a.a_ID = b.author_id
GROUP BY a.Nationality;

-------------------------------------END OF SQL---------------------------------------------------