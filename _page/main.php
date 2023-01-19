<?php
date_default_timezone_set("Asia/Bangkok");

if(isset($_SESSION['username']))
{
    $player_q = $connect->query("SELECT * FROM member where username = '".$_SESSION['username']."'");
    $player = $player_q->fetch_assoc();

}else{
	
}
	$config_q = $connect->query("SELECT * FROM config");
    $config = $config_q->fetch_assoc();
	
    $website_q = $connect->query("SELECT * FROM website");
    $website = $website_q->fetch_assoc();	

$user = $connect->query("SELECT * FROM member")->num_rows;

$counter_file = "counter.txt";
$count = file_get_contents($counter_file);
$counter = file_put_contents($counter_file,$count+1);
?>
<!DOCTYPE HTML>
<html>
<!-- Update Version 2 -->
   <!-- © gshops -->

    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->
    <!-- ใครก๊อปเว็บพ่อมึงตาย -->

    <!-- ใครก๊อปพ่อมึงตายนะครับ © Copyright 2020 by gshops.ml ไม่อนุณาติให้นำไปใช้ #ทุกกรณี -->
    <!-- ใครก๊อปพ่อมึงตายนะครับ © Copyright 2020 by gshops.ml ไม่อนุณาติให้นำไปใช้ #ทุกกรณี -->
    <!-- ใครก๊อปพ่อมึงตายนะครับ © Copyright 2020 by gshops.ml ไม่อนุณาติให้นำไปใช้ #ทุกกรณี -->
<head>
<?php include 'hader.php'; ?>
 </head>
 <body>
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white shadow-sm" data-aos="fade-down">
 <div class="container">
  <a class="navbar-brand" href="?page=home"><img src="<?php echo $config['icon']; ?>" alt="Beatles" style="width: 30px;" class="d-inline-block align-top lazy">&nbsp;GShops</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item <?php if($_GET['page'] == "home"){echo 'active';}else{} ?>">
          <a class="nav-link" href="home"><i class="fa fa-home"></i> Home</a>
        </li>            
        <li class="nav-item <?php if($_GET['page'] == "shop"){echo 'active';}else{} ?>">
          <a class="nav-link" href="shop"><i class="fa fa-shopping-cart"></i> shop</a>
        </li> 
        <li class="nav-item <?php if($_GET['page'] == "topup"){echo 'active';}else{} ?>">
          <a class="nav-link" href="topup"><i class="fas fa-wallet"></i> เติมเงิน</a>
        </li> 
        <li class="nav-item <?php if($_GET['page'] == "history"){echo 'active';}else{} ?>">
          <a class="nav-link" href="history"><i class="fa fa-history"></i> ประวัติทั้งหมด</a>
        </li>  	 		
        <li class="nav-item <?php if($_GET['page'] == "contact"){echo 'active';}else{} ?>">
          <a class="nav-link" href="?page=contact"><i class="fas fa-contact"></i>☎ ติดต่อ</a>
        </li>
        </ul>
        <ul class="navbar-nav ml-auto">
           <?php if(!$_SESSION['username']){ ?>
                    <?php }else{ ?>
           <li class="nav-item  dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-user"></i> <?php echo $_SESSION['username'] ?></a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		
          <a class="dropdown-item" href="#"><i class="fa fa-user"></i>&nbsp;ผู้ใช้งาน : <?php echo $_SESSION['username'] ?></a>
           <a class="dropdown-item" href="#"><i class="fa fa-cube"></i>&nbsp;พ้อย : <?php echo number_format($player['point'],2); ?></a>
           <a class="dropdown-item" href="#"><i class="fa fa-users"></i>&nbsp;แรงค์ : <?php echo $player['rank'] ?></a>
          
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="profile"><i class="fa fa-user"></i>&nbsp;แก้ไขข้อมูลส่วนตัว</a>
		  <?php if(isset($_SESSION['id']) && $player['rank'] == "admin" ){ ?>
		  <a class="dropdown-item" href="?page=admin"><i class="fa fa-cog fa-lg"></i>&nbsp;จัดการระบบ</a>
		  <?php } ?>
         <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="javascript:logout();"><i class="fas fa-sign-out-alt"></i>&nbsp;ออกจากระบบ</a>
        </div>
      </li>
      <span class="nav-link">
	  <span class="badge badge-light noselect">
	  <i class="fas fa-coins"></i>&nbsp;<?php echo number_format($player['point'],2); ?> บาท</span>
	  </span>	  
                    <?php } ?>   
      </ul>
            </div>
  </nav>
<br>
<br>
<br>
<div class="container" style="margin-top: 30px" data-aos="fade-up">
<div class="lpk_content" data-aos="fade-up">
<?php
                    if(!$_GET){$_GET["page"] = 'home';}
                    if(!$_GET["page"])
                    {
                      $_GET["page"] = "home";
                    }
                     if($_GET["page"] == "home"){
                         include_once __DIR__.'/home.php';
                    }elseif($_GET['page'] == "shop"){
                        include_once __DIR__.'/shop.php';
                    }elseif($_GET['page'] == "history"){
                        include_once __DIR__.'/history.php';
                    }elseif($_GET['page'] == "topup"){
                        include_once __DIR__.'/topup.php';
                    }elseif($_GET['page'] == "profile"){
                        include_once __DIR__.'/profile.php';
                    }elseif($_GET['page'] == "contact"){
                        include_once __DIR__.'/contact.php';						
                    }elseif($_GET['page'] == "logout"){
                        include_once __DIR__.'/logout.php';
                   }elseif($_GET['page'] == "admin" && isset($_SESSION['username']) && $player['rank'] == "admin"){
                        include_once __DIR__.'/admin/admin.php';							
                    }elseif($_GET['page'] == "redeem"){
                        include_once __DIR__.'/redeem.php';
                    }else{
                                           require('_page/home.php');
                                        }
                     ?>
</div> 
</div> 

	<div class="container">
  <div class="modal fade" id="accept" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
		<p class="modal-title">&nbsp;<h5>เงื่อนไขและข้อตกลงในการใช้บริการ</h5></p>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
		</div>
        <div class="modal-body">
<b>รายละเอียดเว็บไซต์</b><br>
1.GShops เป็นระบบเว็บไซต์ประเภท "autobuy"<br>2. เว็บไซต์สงวนสิทธิ์ห้ามก็อปหรือเอาไปดัดแปลงทุกกรณี
<br>
<br>
<b>ข้อตกลงการใช้บริการ</b><br>
1. มีปัญหาสามารถกดติดต่อแชท "ด้านขวามือ"<br>2. ในการส่งข้อความห้ามสแปมแชทรัวๆโปรดรอ...<br>3. ผู้บริการสามารถชำระเงินซื้อสินค้าและรับสินค้าโดยอัตโนมัติ

        </div>
        </div>
      </div>
    </div>
  </div>

<footer class="footer" style="background-color: white;">
  <div style="background-color: #ffffff;">
  
      <div class="container">

      <div class="row py-2 d-flex align-items-center">

      </div>

    </div>
  
			<div class="container text-center text-md-left mt-5">
				<div class="row">

					<div class="footer-widget col-lg-4 col-md-6 col-sm-6 col-12 mb-40 mb-xs-30">
						<div class="footer-logo">
							<a href=""><img src="" alt=""></a>
						</div>
						<div class="copyright">
							<p class="pb-lg-3">Copyright © 2020 GShops.ml All Rights Reserved.:</a></p>
						</div>
						<div class="footer-p">
							<p>GShops เว็บไซต์จำหน่ายไอดีแท้มายคราฟ ราคาถูก<!--br>ระบบเติมเงินทรูมันนี่วอลเล็ทอั่งเปาอัตโนมัติ 24 ชม.<--></p>
						</div>
					</div>
					
					<div class="footer-widget col-lg-2 col-md-6 col-sm-6 col-12 mb-40 mb-xs-30 footer-border-right">
						<h4 class="title"><span class="text">Contact</span></h4>
						
						<p style="font-family: 'Prompt', sans-serif;">Discord : <a href="https://discord.gg/mr4TEn3fhQ">discord.gg/mr4TEn3fhQ</a></p>
					</div>
					
					<div class="footer-widget col-lg-2 col-md-6 col-sm-6 col-12 mb-40 mb-xs-30 footer-padding-left">
						<h4 class="title"><span class="text">Help ?</span></h4>
						<ul class="ft-menu">
							<li><a href="topup" class="mb-15">วิธีเติมเงิน</a></li>
							<li><a href="shop" class="mb-15">สั่งซื้อสินค้า</a></li>
						</ul>
					</div>
					
					<div class="footer-widget col-lg-4 col-md-6 col-sm-6 col-12 mb-40 mb-xs-30">
						<h4 class="title"><span class="text">Facebook Fanpage</span></h4>
						<div class="fb-page" data-href="https://www.facebook.com/GShops123/" data-height="259" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><blockquote cite="https://www.facebook.com/Smilepay.in.th/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Smilepay.in.th/">Loading . .</a></blockquote></div>
					</div>
				</div>
			</div>
		</div>

	</footer>
</html>