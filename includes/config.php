<?php
// DB credentials for local
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'cwmsdb');

// CWMSphp2023$

// DB credentials for Profreehost
// define('DB_HOST','	ftpupload.net');
// define('DB_USER','unaux_34375959');
// define('DB_PASS','hggdhfekr7');
// define('DB_NAME','unaux_34375959_cwmsdb');

// DB credentials for 000WebHost
// define('DB_HOST', 'localhost');
// define('DB_USER', 'id20879371_cwmsdb');
// define('DB_PASS', 'CWMSphp2023$');
// define('DB_NAME', 'id20879371_cwmsdb');

// Establish database connection.
try {
  $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
} catch (PDOException $e) {
  exit("Error: " . $e->getMessage());
}
?>