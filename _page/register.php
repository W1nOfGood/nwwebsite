<?php
$id = $connect->query("SELECT * FROM member")->num_rows;
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
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white shadow-sm" data-aos="fade-down">
 <div class="container">
  <a class="navbar-brand" href="?page=home"><img src="<?php echo $config['icon']; ?>" alt="Beatles" style="width: 30px;" class="d-inline-block align-top lazy">&nbsp;GShops</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="login"><i class="fa fa-user fa-fw"></i> เข้าสู่ระบบ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register"><i class="fa fa-registered fa-fw"></i> สมัครสมาชิก</a>
                    </li>
              
      </ul>	
            </div>
		</div>
  </nav>
        <div class="intro-x2 py-5">

    <div class="container py-5">
    <div class="row align-items-center">
        <div class="col-lg-7 text-title text-lg-left text-center">
                    <h1 class="font-weight-bold mb-0">ยินดีต้อนรับสู่</h1>
                    <h1 class="font-weight-bold mb-4">GShops เว็บไชต์จำหน่ายไอดีเกม และอื่นๆๆ</h1>
                    <h4 class="mb-4">เริ่มต้นเพียง 10 บาท#คุ้มสุดคุ้ม!</h4>
        </div>
  
          <div class="col-lg-5">
            

    <div class="card" style="max-width:28rem">
        <div class="card-body">
        <h2 class="font-weight-bold text-center mt-4 mb-4">สมัครสมาชิก</h2>
		<div id="return"></div>
       <form method="post">
						<div class="col-md-12 mb-2">
				       <label for="username"><i class="fas fa-user"></i>&nbsp;ชื่อผู้ใช้</label>
					   <input type="text" id="username" class="form-control" name="username" placeholder="Username ที่ท่านต้องการ" required="">
			           </div>
						<div class="col-md-12 mb-2">
				       <label for="password"><i class="fas fa-lock"></i>&nbsp;รหัสผ่าน</label>
				       <input name="password" id="password" class="form-control" type="password" placeholder="Password ที่ท่านต้องการ" required="">
			           </div>
						<div class="col-md-12 mb-2">
				       <label for="repassword"><i class="fas fa-lock"></i>&nbsp;ยืนยันรหัสผ่าน</label>
				       <input name="repassword" id="repassword" class="form-control" type="password" placeholder="RePassword ยืนยันรหัสผ่านอีกครั้ง" required="">
			           </div>					   
    <div class="text-left mt-1"><i class="fa fa-shield"></i> <img src="_page/captcha.php"></div>
				<div class="col-md-12 mb-2">
				<input class="form-control" style="height: 40px;margin-top: 7px;" name="captcha" id="captcha" type="text" placeholder="Captcha" required="">
				</div>
					   <input type="checkbox" id="checkbox1" onclick="check_click()" />ฉันยอมรับ<a href="#" class="text-info" target="_blank" data-toggle="modal" data-target="#accept">&nbsp;เงื่อนไขและข้อตกลงในการใช้บริการ</a>
<script>
function check_click()
{
if(document.getElementById('checkbox1').checked==true)
{
document.getElementById('button1').disabled = false;
}
else
{
document.getElementById('button1').disabled = true;
}
}
</script>
<div class="container-login100-form-btn">		  
            <a id="btn" href="javascript:register();" class="btn btn-outline-primary btn-block" type="button" id="button1" disabled"><i class="fa fa-users"></i>&nbsp;สมัครสมาชิก</a>
	</div>
        </form>
		<center> 
            <p class="mt-2">คุณมีบัญชีผู้ใช้งานอยู่แล้ว <a href="?page=login">เข้าสู่ระบบ</a></p>
        </div>
		</center> 
				<div class="text-center">
			<div>เข้าชม: <?php echo number_format($count); ?> | ขายไปแล้ว:0 | สมาชิก: <?php echo number_format($user); ?> </div>
		</div>
    </div>
	</div>
    </div>
    
    </div>

    </div>		

  </body>
</html>		

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
					</div>

					<div class="footer-widget col-lg-2 col-md-6 col-sm-6 col-12 mb-40 mb-xs-30 footer-padding-left">
						<h4 class="title"><span class="text">Help ?</span></h4>
						<ul class="ft-menu">
							<li><a href="topup" class="mb-15">วิธีเติมเงิน</a></li>
							<li><a href="shop" class="mb-15">สั่งซื้อสินค้า</a></li>
							<br>
						</ul>
					</div>
					
					<div class="footer-widget col-lg-4 col-md-6 col-sm-6 col-12 mb-40 mb-xs-30">
						<h4 class="title"><span class="text">Facebook Fanpage</span></h4>
						<div class="fb-page" data-href="https://www.facebook.com/GShops123/" data-height="259" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><blockquote cite="https://www.facebook.com/GShops123/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/GShops123/">Loading . .</a></blockquote></div>
					</div>
				</div>
			</div>
		</div>

	</footer> 