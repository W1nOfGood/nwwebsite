<?php
require('setting.php');
require('core.php');
if(isset($_GET['login'])) {
	if(empty($_POST['username']) || empty($_POST['password']))  {
		DisplayMSG('error','Error', 'กรุณาอย่าเว้นช่องว่าง.','false');
		}
                $check = checkpassword($_POST['username'],$_POST['password']);
                if($check == false)
                {
                    DisplayMSG('error','Error', 'ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง.','false');
                }
                elseif($check == true)
                {
                 $query_log = $connect->query("SELECT * FROM member WHERE username = '".$_POST['username']."'");
                 $login = $query_log->fetch_assoc();
                 $_SESSION['id'] = $login['id'];
                 $_SESSION['username'] = $login['username'];
                 $_SESSION['PointFree'] = $login['PointFree'];
                 DisplayMSG('success','Login Success !!!', 'เข้าสู่ระบบสำเร็จ !!','true');
                }else{
                    DisplayMSG('error','Error', 'ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง.','false');
                }
}
if(isset($_GET['register'])) {
	if(empty($_POST['username']) || empty($_POST['password']))  {
	   DisplayMSG('error','Error', 'กรุณาอย่าเว้นช่องว่าง.','false');
		}
	if (!preg_match('/^[a-zA-Z0-9\_]*$/', $_POST['username'])) {
		DisplayMSG('error','Error', 'ชื่อผู้ใช้ไม่ถูกต้อง ต้องเป็น A-Z 0-9 เท่านั้น !!.','false');
	}
	if(mb_strlen($_POST['username']) <= 4) {
		DisplayMSG('error','Error', 'ชื่อผู้ใช้อย่างน้อย 5 ตัวขึ้นไป !!','false');
	}
	if(mb_strlen($_POST['username']) >= 25) {
		DisplayMSG('error','Error', 'ชื่อผู้ใช้สูงสุด 24 ตัวขึ้นไป !!','false');
	}
	if(strlen($_POST['password']) <= 4) {
		DisplayMSG('error','Error', 'รหัสผ่านอย่างน้อย 5 ตัวขึ้นไป !!','false');
	}
	if(mb_strlen($_POST['password']) >= 25) {
		DisplayMSG('error','Error', 'รหัสผ่านสูงสุด 24 ตัว !!','false');
	}
	if($_POST['password'] != $_POST['repassword'])  {
	  DisplayMSG('error','Error', 'รหัสผ่าน ไม่ตรงกัน !!','false');
        }
	if (trim($_POST['captcha']) != $_SESSION['cap_code']){
		DisplayMSG('error','Error', 'รหัสความปลอดภัย ไม่ถูกต้อง !!!','false');
	}
        $query_user_reg = $connect->query("SELECT * FROM member WHERE username = '".$_POST['username']."'");
       $reg_user = $query_user_reg->fetch_assoc();
       if ($reg_user) {
           DisplayMSG('error','Error', 'ชื่อผู้ใช้ มีผู้ใช้งานไปแล้ว !!!','false');
        }else{
          $password_hash = hashPassword($_POST['password']);
          $query_reg2 = $connect->query("INSERT INTO member (username,password) VALUES ('".$_POST['username']."','".$password_hash."')");
          DisplayMSG_REG('success','Register Success !!!', 'สมัครสมาชิกสำเร็จ !!!..','true');
          
        }
}
		if(isset($_GET['cpassword'])) {
                    if(isset($_SESSION['username'])){
			if(empty($_POST['password_old']) || empty($_POST['password_new']) || empty($_POST['repassword_new']) || empty($_POST['captcha']))  {
				DisplayMSG('error','Error', 'กรุณาอย่าเว้นช่องว่าง.','false');
				}
			if(strlen($_POST['password_new']) <= 4) {
				DisplayMSG('error','Error', 'รหัสผ่านอย่างน้อย 4 ตัวขึ้นไป !!','false');
				exit();
			}
			if(mb_strlen($_POST['password_new']) >= 21) {
				DisplayMSG('error','Error', 'รหัสผ่านสูงสุด 20 ตัว !!','false');
				exit();
			}
			if($_POST['password_new'] != $_POST['repassword_new'])  {
			  DisplayMSG('error','Error', 'รหัสผ่าน ไม่ตรงกัน !!','false');
				}
			if (trim($_POST['captcha']) != $_SESSION['cap_code']){
				DisplayMSG('error','Error', 'รหัสความปลอดภัย ไม่ถูกต้อง !!!','false');
			}
                            @$objLogin = checkpassword($_SESSION['username'],$_POST['password_old']);
                                  @$passwordhw = hashPassword(($_POST['password_new']));
                            if($objLogin == false)
                                  {       
                          DisplayMSG('error','Error', 'รหัสเก่าไม่ถูกต้อง.','false');
                            } else {
                            if($objLogin == true)
                            {
                            $query = $connect->query("UPDATE member set password='".$passwordhw."' WHERE username='".$_SESSION['username']."'");
                          DisplayMSG('success','Change Password !!!', 'เปลี่ยนรหัสผ่านสำเร็จ','true');
                            }
                            mysql_close();
                          }
                            }
		}
if(isset($_GET['shop'])) {
			$id = $_GET['id'];
			if(empty($id)) {
				DisplayMSG('error','Error Buy','ไม่พบสินค้านี้','false');
			}
			$query = $connect->query('SELECT * FROM products WHERE id = "'.$id.'"');
			$shop = $query->fetch_assoc();			
			$query2 = $connect->query("SELECT * FROM member WHERE username='".$_SESSION['username']."'");
            $player = $query2->fetch_assoc();
			$query1 = $connect->query('SELECT * FROM stock WHERE type = "'.$shop['id'].'" AND owner="" ORDER BY RAND() LIMIT 1');
			$result = $query1->fetch_assoc();		
			if($query->num_rows == 0) {
			DisplayMSG('error','Error Buy','ไม่พบสินค้านี้','false');
			}	
			if($player['point'] >= $shop['price']) {
				if($result) {
				$date = date('Y-m-d H:i:s');
				$connect->query("UPDATE member SET point = point-'".$shop['price']."' WHERE username = '".$_SESSION['username']."'");
				$connect->query('UPDATE stock SET owner= "'.$_SESSION['username'].'", date= "'.$date.'" WHERE id= "'.$result['id'].'"');
				DisplayMSG('success','Success Buy', 'ซื้อสินค้า <U>"'.$shop['name'].'"</U> สำเร็จ <br>คุณสามารถรับ ข้อมูลการใช้งานที่ <br><a class="btn btn-success" href="?page=history"><i class="fas fa-gift"></i>&nbsp;ประวัตการซื้อเลย</a>','false');
			}else {
			  DisplayMSG('error','Error Buy','สินค้าหมด !!','false');
			   }			
			     }else {
				 DisplayMSG('error','Error Buy','พ้อยของคุณไม่เพียงพอ','false');
			}
		}
if(isset($_GET['redeem'])) {
	if (empty($_POST['code'])){
		DisplayMSG('error','เกิดข้อผิดพลาด', 'กรุณาอย่าเว้นช่องว่าง','true','?page=topup');
 	    }else if(isset($_POST['code'])){	
	   $code = $connect->real_escape_string($_POST['code']);
		$stmt = $connect->query("SELECT * FROM gift_code WHERE code_id = '".$code."'");
		if ($stmt->fetch_assoc() > 0) {
			$result = $stmt->fetch_assoc();
			if($result['limits'] == 0){
				$transactions = $connect->query("SELECT * FROM topup WHERE username = '".$_SESSION['username']."' AND TW_id = '".$code."'");
				if ($transactions->fetch_assoc() > 0){
					DisplayMSG('error','Error','คุณเคยใช้โค้ดนี้ไปแล้ว !!','false');
				}else{
					$date = date("Y-m-d H:i:s");
					$stmt = $connect->query("INSERT INTO topup(TW_id,amount,status,date,username,type) VALUES ('".$code."', '".$result['reward']."', 'success', '".$date."', '".$_SESSION['username']."', 'เติมเงินด้วย คูปอง')");
					$pointuser = $connect->query("SELECT * FROM member WHERE username = '".$_SESSION['username']."'");
					$pointy = $pointuser->fetch_assoc();
					$point = $pointy['point'];
					$reward = $result['reward'];
					$rewardnow = $point + $reward;
					$addpoint = $connect->query("UPDATE member SET point = '".$rewardnow."' WHERE username = '".$_SESSION['username']."'");
                    DisplayMSG('success','success','เติมสำเร็จ','false');					
				}
			}else{
				if($result['limits'] == $result['used']){
					DisplayMSG('error','Error','โค้ดถูกใช้หมดแล้ว !!','false');
				}else{
					$transactions = $connect->query("SELECT * FROM topup");
					$transactions = $connect->query("SELECT * FROM topup WHERE username = '".$_SESSION['username']."' AND TW_id = '".$code."'");
					if ($transactions->fetch_assoc() > 0){
						DisplayMSG('error','Error','คุณเคยใช้โค้ดนี้ไปแล้ว !!','false');
					}else{
						$stmt = $connect->query("INSERT INTO topup(TW_id,amount,status,date,username,type) VALUES ('".$code."', '".$result['reward']."', 'success', '".$date("Y-m-d H:i:s")."', '".$_SESSION['username']."', 'เติมเงินด้วย คูปอง')");
						$update = $result['used'];
						$used  = $update + 1;
						$giftcode_id = $result['id'];
						$updateused = $connect->query("UPDATE gift_code SET used = '".$used."' WHERE id = '".$giftcode_id."'");
						$user_id = $_SESSION['id'];
						$pointuser = $connect->query("SELECT * FROM member WHERE username = '".$_SESSION['username']."'");
						$pointy = $pointuser->fetch_assoc();
						$point = $pointy['point'];
						$reward = $result['reward'];
						$rewardnow = $point + $reward;
						$addpoint = $connect->query("UPDATE member SET point = '".$rewardnow."' WHERE username = '".$_SESSION['username']."'");
						DisplayMSG('success','success','เติมสำเร็จ','false');
					}
				}
			}
		}else{
			DisplayMSG('error','Error','ไม่พบโค้ดนี้ !!','false');
		}
	}
}	
?>