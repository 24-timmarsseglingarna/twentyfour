<?php
error_reporting(E_ALL);

$punkt 	= isset($_GET['point']) ? $_GET['point'] : "";
$krets 	= isset($_GET['start']) ? $_GET['start'] : "";

$krets 	= isset($_GET['krets']) ? $_GET['krets'] : $krets;


require_once("../common.php");

$mysqli = new mysqli( DB_HOST, DB_USER, DB_PASS, DB_DBNAME);
if ($mysqli->connect_errno) {
	if ($mysqli->connect_errno == 1040)
	die('Database connect error: '. $mysqli->connect_error.
		"<br /><br />Databasen är överbelastad. Försök igen senare");
} 

//$mysqli->query("SET NAMES 'utf8'");

$out = "<?xml version='1.0' encoding='ISO-8859-1'?>";

$out .= "<PoD>";

if (isset($_GET['points'])) {
	$query = "SELECT Punkt FROM Punkter ";
	if ($result = $mysqli->query($query)) {
	  $out .= "<punkter>";
		while($row = $result->fetch_row()) {
			$out .= "<punkt><nummer>{$row[0]}</nummer></punkt>";
		}
		$out .= "</punkter>";
		$result->close();
	}
}

$out .= "</PoD>";

$mysqli->close();

header("Content-type: text/xml");
echo $out;
?>