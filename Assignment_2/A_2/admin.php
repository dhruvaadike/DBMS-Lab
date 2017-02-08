<!DOCTYPE html>
<html>
<body>
<?php
$servername="localhost";
$username="root";
$password="nsl";
$database="library";

$conn=mysql_connect($servername,$username,$password,$database);

if(!$conn)
{
echo "Failed to connect";
}
else
{
echo "connection successful";
}

$sql="INSERT INTO book_list(book_no,isbn) VALUE(?,?);"

$sql="UPDATE no_of_copies FROM BOOK;"

$sql="SELECT teacher.tid,teacher.name FROM teacher,member
WHERE (teacher.l_card_no=member.l_card_no) AND (MAX(member.no_of_books_taken)=member.no_of_books_taken) AND (member.type="T%")";

$result=$conn->query($sql);


if($result->num_rows > 0)
{
while($row=$result->fetch_assoc())
{
echo "TID: $row['teacher.tid'] - Name: $row['teacher.name'] "<br>"";
}
}
else
{
echo "0 rows selected";
}

if ($conn->multiquery_error($sql))
{
echo "Failed to connect :"<br>" .$conn->multiquery_error($sql) ";
}

?>

</body>
</html>





