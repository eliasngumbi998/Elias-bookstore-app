<html>
<head>
<title>Elias Bookstore|Cashier Page</title>
<body>
<?php
include("databaseconfig.php");
$qry=mysql_query("SELECT * FROM book_records_store");
?>
<form method="GET" action="order_summary.php">
<?php
if(isset($_GET["Loging"])){
session_start();
//$pid = $_GET['id']; 
//$_SESSION["pid"] = $pid;

$firstN=$_REQUEST['fname'];
$lastN=$_REQUEST['lname'];

$_SESSION["firstN"]=$firstN;
$_SESSION["lastN"]=$lastN;

?>
<?php
echo "Hello ".$firstN." ".$lastN."</br></br>";
}
?>
<div id="Hey">
<table border="1">
<tr>
<th>Book No</th>
<th>Book</th>
<th>Price</th>
</tr>
<?php
while($fetch=mysql_fetch_array($qry)){
//$conca=$fetch['Book_No']+$fetch['Book'];
echo "<tr><td>".$fetch['Book_No']."</td><td><input type='checkbox' name='order[]' value='".$fetch['Price']."'/>".$fetch['Book']."</td><td>".$fetch['Price']."</td></tr>";
}
?>
</table>
<table>
<tr align="center">
<td><input type="submit" name="Ord" value="Order"/></td>
<td><input type="reset" name="cleared" value="Clear"/></td>
</table>
</div>
</form>
</body>
</html>
