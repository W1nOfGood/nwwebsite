<?php
session_destroy();
 unset($_SESSION['email']);
      unset($_SESSION['key']);
      unset($_SESSION['id']);
      unset($_SESSION['username']);
      
      echo "<script>window.location.href='./'</script>";
