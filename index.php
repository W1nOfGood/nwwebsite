<?php
// News Design by maime
date_default_timezone_set("Asia/Bangkok");
require('_system/setting.php');
require('_system/action.php');
$protect = "___MAIME___";
if(isset($_SESSION['username'])) {
	require('_page/main.php');
}else {
	if(@$_GET['page'] == "register") {
		require('_page/register.php');
	}else {
		require('_page/login.php');
	}
}
?>