<?php

// Populating database variables
$DB['server'] = 'localhost';
$DB['user'] = 'root'; 
$DB['password'] = '';
$DB['db'] = 'sample';

try{
    // Connecting to database
  $conn = new PDO("mysql:host=".$DB['server'].";dbname=".$DB['db'],
	              $DB['user'],
				  $DB['password']);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
catch(PDOException $e){
  echo "Connection failed: " . $e->getMessage();
  exit();
}

?>