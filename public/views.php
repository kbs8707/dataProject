<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="viewStylesheet.css">
</head>
<body>
	<h1>View 1: Compute a join of at least three tables</h1>
	<table id="viewTables">
		<?php
			$servername = "localhost";
			$username = "user";
			$password = "password";
			$dbname = "dmsproj";
  
			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}

			// Perform SQL query
			$sql = "SELECT bookID, title, author FROM book";
			$result = $conn->query($sql);
  
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
			$conn -> close();
			?>
		</table>
	</body>
</html>