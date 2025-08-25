CREATE TABLE Author(
AUTH_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(MAX),
COUNTRY VARCHAR(MAX)
)

create table book
(
BOOK_ID INT PRIMARY KEY,
BOOK_NAME VARCHAR(MAX),
AUTH__ID INT
FOREIGN KEY (AUTH__ID) REFERENCES Author(AUTH_ID)
)
INSERT INTO Author(AUTH_ID,EMP_NAME,COUNTRY) VALUES(70240,'Jayaprakash','Australia'),
(70293,'Bhanu','India'),(70265,'Karan','America')
INSERT INTO book(BOOK_ID,BOOK_NAME,AUTH__ID) VALUES(1,'MIssile',70240),(2,'Bomber',70293),(3,'The First Flight',70265)
truncate table book
SELECT* FROM Author
select* from Author as A 
inner join 
book as b on
b.BOOK_ID = A.AUTH_ID