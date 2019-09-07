<?php 

function getConexao(){
	$host = "localhost";
	$banco= "test";
	$usr = "admin";
	$pwd = "admin";


	try {
		$conn = new PDO("mysql:host=".$host.";dbname=".$banco,$usr, $pwd);
		return $conn;
	} catch (Exception $e) {
		return "Ocorreu erro: ". $e->getMessage();
	}
}

?>