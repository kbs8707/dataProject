<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="viewStylesheet.css">
</head>
<body>
	<?php
		if (isset($_POST['submit'])) {
			$choice = $_POST['viewNum'];
			// Write header and get correct SQL response
			// TODO: Get correct SQL response.
			switch ($choice) {
				case 1:
					echo "<h1>Compute a join of at least three tables</h1>";
					break;
				case 2:
					echo "<h1>Nested query with ANY or ALL</h1>";
					break;
				case 3:
					echo "<h1>Correlated nested query</h1>";
					break;
				case 4:
					echo "<h1>FULL JOIN</h1>";
					break;
				case 5:
					echo "<h1>Nested query with set operation</h1>";
					break;
				case 6:
					echo "<h1>Number of unique books sold</h1>";
					break;
				case 7:
					echo "<h1>Find new books costing less than $20</h1>";
					break;
				case 8:
					echo "<h1>Highest costing product from a specific author</h1>";
					break;
				case 9:
					echo "<h1>List of authors in the store, sorted alphabetically</h1>";
					break;
				case 10:
					echo "<h1>Books not in stock</h1>";
					break;
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