<html>
<head>
<title>Receipt Page</title>
</head>
<body>
<?php
include("databaseconfig.php");
$aBook=$_GET['order'];
if(empty($aBook)){
echo "You didn't select any book";
}
else{
	session_start();
	$N = count($aBook);	
	//$finame=$_REQUEST['finame'];
	//$laname=$_REQUEST['laname'];
	echo "Hi! <b>".$_SESSION["firstN"]." ".$_SESSION["lastN"]."</b></br>";
    echo "You selected $N book(s): <br>";
	echo "<table border='1'>";
	echo "<tr><th>Book_No</th><th>Book</th><th>Price</th></tr>";
    for($i=0; $i < $N; $i++)
    {	
		//echo "".$aBook[$i]."</br>";
		$iq=mysql_query("SELECT Book_No,Book,Price FROM book_records_store WHERE Price = '$aBook[$i]'")or die(mysql_error());
		while($fetchID=mysql_fetch_array($iq)){
			echo "<tr><td>".$fetchID['Book_No']."</td><td>".$fetchID['Book']."</td><td>".$fetchID['Price']."</td></tr>";
			//echo array_sum($fetch['Price'])."</br>";
		}
	}
	echo "</table>";
	//echo "";
	$totalprice = 0;
	foreach($aBook as $booK) $totalprice += $booK;
	echo "<b>Total Price:</b> ".$totalprice;
	echo "Thanks for visiting Elias bookstore!!!";
}
?>
</body>
</html>
