<?php
  date_default_timezone_set("Asia/Bangkok");
  $db_host = 'localhost';
  $db_user = 'root';
  $db_pass = '';
  $db_name = 'gshop';
  
  
  $connect = new mysqli($db_host,$db_user,$db_pass,$db_name);
  $connect->query('SET names utf8'); 
	if($connect->connect_errno){
	exit($connect->connect_error);
	}
?>
