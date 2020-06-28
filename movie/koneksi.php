<?php

$connect = new mysqli("localhost", "root", "", "db_movie");
if ($connect) {
} else {
	echo "Connection Failed";
	exit();
}
?>