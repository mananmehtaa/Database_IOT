<?php
// Connect to the database
$conn = mysqli_connect('localhost', 'username', 'password', 'database_name');
// This line connects to the MySQL database using the mysqli_connect function. Replace 'localhost', 'username', 'password', and 'database_name' with your actual values.

// Check for errors
if (!$conn) {
  die('Connection failed: ' . mysqli_connect_error());
  // This line checks if the connection to the database was successful. If there was an error, it prints the error message and stops the script execution.
}

// Get the data from the form
$name = mysqli_real_escape_string($conn, $_POST['name']);
$specialization = mysqli_real_escape_string($conn, $_POST['specialization']);
$availability = mysqli_real_escape_string($conn, $_POST['availability']);
$location = mysqli_real_escape_string($conn, $_POST['location']);
// These lines get the data submitted from the form and use the mysqli_real_escape_string function to escape special characters and prevent SQL injection attacks.

// Insert the data into the table
$sql = "INSERT INTO medical_practitioners (name, specialization, availability, location) VALUES ('$name', '$specialization', '$availability', '$location')";
if (mysqli_query($conn, $sql)) {
  echo 'Medical practitioner added successfully.';
  // This line creates an SQL query to insert the data into the 'medical_practitioners' table. If the query is successful, it prints a success message.
} else {
  echo 'Error: ' . mysqli_error($conn);
  // If there was an error with the SQL query, it prints the error message.
}

// Close the database connection
mysqli_close($conn);
// This line closes the database connection.
?>
