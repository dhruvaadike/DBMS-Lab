<!DOCTYPE html>
<html>
<body>
<?php
$servername="localhost";
$username="username";
$password="password";

$conn= new mysqli($servername,$username,$password);

if($conn->connect_error)
{
die("Failed to connect: " "<br>".$conn->connect_error);
}

$sql="CREATE DATABASE library";

if($conn->error)
{
echo "Database connection unsuccessful" "<br>" .$conn->error ;
}

$sql="USE library";

$sql="
CREATE TABLE student
(
sid varchar(30),
name varchar(30) NOT NULL,
dept varchar(30) NOT NULL,
sem varchar(30) NOT NULL,
l_card_n0 varchar(30) NOT NULL,
PRIMARY KEY(sid)
);"

$sql="
CREATE TABLE teacher
(
tid varchar(30),
name varchar(30) NOT NULL,
dept varchar(30) NOT NULL,
l_card_no varchar(30) NOT NULL,
PRIMARY KEY(tid)
);"

$sql="
CREATE TABLE book
(
isbn varchar(30),
title varchar(30) NOT NULL,
edition varchar(30) NOT NULL,
author varchar(30) NOT NULL,
no_of_copies varchar(30) NOT NULL,
PRIMARY KEY(isbn)
);"

$sql=
"CREATE TABLE book_list
(
book_no varchar(30),
isbn varchar(30) NOT NULL,
PRIMARY KEY(book_no)
);"

$sql=
"CREATE TABLE members
(
l_card_no varchar(30),
type varchar(3) NOT NULL,
join_date date NOT NULL,
exp_date date NOT NULL,
no_of_books_taken int NOT NULL,
PRIMARY KEY(l_card_no)
);"

$sql=

"CREATE TABLE borrow
(
book_no varchar(30),
l_card_no varchar(30) NOT NULL,
b_date date NOT NULL,
 due_date date NOT NULL,
 return_date date NULL,
 PRIMARY KEY(book_no)
 );"
 
if($conn->multiquery_error($sql))
{
echo "Failed to connect to database" .$conn->multiquery_error;
}

?>


</body>
</html>
 
