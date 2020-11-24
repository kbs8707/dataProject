<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="viewStylesheet.css">
</head>
<body>
	<?php
		$servername = "localhost";
		$username = "user";
		$password = "password";
		$dbname = "dmsproj";
		$conn = new mysqli($servername, $username, $password, $dbname);
		if ($conn-> connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}
		
		if (isset($_POST['submit'])) {
			$choice = $_POST['viewNum'];
			// Write header and get correct SQL response
			// TODO: Get correct SQL response.
			$result = "";
			switch ($choice) {
				case 1:
					$result = $conn->query("SELECT book.title, product.BookID, transaction.transactionID FROM book INNER JOIN product ON book.bookID=product.bookID INNER JOIN transaction ON product.productID=transaction.transactionID");
					echo "<h1>Compute a join of at least three tables</h1>";
					break;
				case 2:
					$result = $conn->query("SELECT count(*) FROM book WHERE bookID = ANY(SELECT bookID FROM product WHERE price > 500");
					echo "<h1>Nested query with ANY or ALL</h1>";
					break;
				case 3:
					$result = $conn->query("SELECT sellerinfo.sellerName, review.description FROM review, sellerinfo WHERE review.score =(SELECT review.score FROM review WHERE review.score > 8");
					echo "<h1>Correlated nested query</h1>";
					break;
				case 4:
					$result = $conn->query("SELECT a.email FROM account a FULL JOIN sellerinfo s ON a.accountID = s.accountID");
					echo "<h1>FULL JOIN</h1>";
					break;
				case 5:
					$result = $conn->query("SELECT sellerName FROM sellerinfo EXCEPT (SELECT sellerName FROM review)");
					echo "<h1>Nested query with set operation</h1>";
					break;
				case 6:
					$result = $conn->query("SELECT count(*) FROM (SELECT DISTINCT bookID FROM product)");
					echo "<h1>Number of unique books sold</h1>";
					break;
				case 7:
					$result = $conn->query('SELECT title, author FROM book WHERE bookID = ANY (SELECT bookID FROM product WHERE (price < 20) AND condition = "New")');
					echo "<h1>Find new books costing less than $20</h1>";
					break;
				case 8:
					$result = $conn->query('SELECT MAX(product.price) FROM product, book WHERE book.bookID = product.bookID AND book.author ="J. K. Rowling"');
					echo "<h1>Highest costing product from a specific author</h1>";
					break;
				case 9:
					$result = $conn->query("SELECT * FROM book ORDER BY author");
					echo "<h1>List of authors in the store, sorted alphabetically</h1>";
					break;
				case 10:
					$result = $conn->query("SELECT * FROM book WHERE bookID NOT IN (SELECT bookID FROM product)");
					echo "<h1>Books not in stock</h1>";
					break;
				default:
					echo "<h1>Please select a view.</h1>";
			}
				
			// Output SQL response to formatted table
			echo '<table id="viewTables">';
			if (mysqli_num_rows($result) > 0) {
				// Get result as an object so we can parse out our table headings
				$finfo = mysqli_fetch_fields($result);
				echo "<tr>";
				foreach ($finfo as $val) {
					echo '<th id="viewTableHeading">' . $val->name . '</th>';
				}
				echo "</tr>";
				// Iterate through the rows in the result and place data in the table
				while ($row = mysqli_fetch_assoc($result)) {
					echo "<tr>";
					foreach ($row as $data => $data_value) {
						echo "<td>" . $data_value . "</td>";
					}
					echo "</tr>";
				}
				echo "</table>";
			} else {
				echo "0 results";
			}
		} else {
			// default output, no query selected
			echo "<h1>Please select a view.</h1>";
		}
	?>
	
	<form action="" method="POST">
		<select name="viewNum" id="viewNum">
			<option value=1>1: Compute a join of at least three tables</option>
			<option value=2>2: Nested query with ANY or ALL</option>
			<option value=3>3: Correlated nested query</option>
			<option value=4>4: FULL JOIN</option>
			<option value=5>5: Nested query with set operation</option>
			<option value=6>6: Number of unique books sold</option>
			<option value=7>7: Find new books costing less than $20</option>
			<option value=8>8: Highest costing product from a specific author</option>
			<option value=9>9: List of authors in the store, sorted alphabetically</option>
			<option value=10>10: Books not in stock</option>
		</select>
		<br>
		<input type="submit" name="submit" value="submit">
	</form>
</body>
</html>