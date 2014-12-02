<?php
require 'Slim/Slim.php';
require 'libs/datatable.class.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

// handle GET requests for /articles
$app->get('/customers', function () use ($app) {  
	$db = getConnection();
	// send response header for JSON content type
	$app->response()->header('Content-Type', 'application/json');

	// DB table to use
	$table = 'customers';

	// Table's primary key
	$primaryKey = 'id';
	
	// Array of database columns which should be read and sent back to DataTables.
	// The `db` parameter represents the column name in the database, while the `dt`
	// parameter represents the DataTables column identifier. In this case simple
	// indexes
	$columns = array(
		array( 'db' => 'customer_name', 'dt' => 0 ),
		array( 'db' => 'email',  'dt' => 1 ),
		array( 'db' => 'phone',   'dt' => 2 ),
		array(
			'db'        => 'created_date',
			'dt'        => 3,
			'formatter' => function( $d, $row ) {
				return date( 'm/d/y', strtotime($d));
			}
		),
		array(
			'db'        => 'updated_date',
			'dt'        => 4,
			'formatter' => function( $d, $row ) {
				return date( 'm/d/y', strtotime($d));
			}
		)
	);

	// return JSON-encoded response body with query results
	echo json_encode(
		SSP::simple( $db, $_GET, $table, $primaryKey, $columns )
	);
});

/**
 *  To perform database connection
 *  @param  void
 *  @return object database object
 */
function getConnection() {
    try {
        $db_username = "root";
        $db_password = "";
        $conn = new PDO('mysql:host=localhost;dbname=sample-app', $db_username, $db_password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
		} catch(PDOException $e) {
        echo 'ERROR: ' . $e->getMessage();
    }
    return $conn;
}

// run
$app->run();
