<?php
		$sql_wallet = 'SELECT * FROM wallet_account';
			$query_wallet = $connect->query($sql_wallet);
				$wallet = $query_wallet->fetch_assoc();

    if(isset($_POST['topup'])) {
			   if(empty($_POST['amount']) || empty($_POST['TW_id'])) {
		iDisplayMSG('error','เกิดข้อผิดพลาด', 'กรุณาอย่าเว้นช่องว่าง','true','?page=topup');
	}else {
		$c_query = $connect->query('SELECT * FROM topup WHERE TW_id = "'.$_POST['TW_id'].'"');
		$code_num = $c_query->num_rows;
		if ($code_num){
			iDisplayMSG('error','Error Already','หมายเลขอ้างอิงนี้มีการเติมเข้ามาแล้ว','false','');
		}else {
	$type = ('เติมเงินด้วย TrueWallet');
$time_date = date("d-m-Y G:i:s");	
	$query = $connect->query('INSERT INTO topup (TW_id,amount,date,type,username) VALUES ("'.$_POST['TW_id'].'", "'.$_POST['amount'].'","'.$time_date.'", "'.$type.'", "'.$_SESSION['username'].'")');
	iDisplayMSG('isuccess','กำลังตรวจสอบ','คุณได้ทำการเติมเงินด้วยการโอน Truewallet !!','true','?page=topup');
}
	}
		}
		
	if(isset($_POST['bank'])) {
			   if(empty($_POST['amount']) || empty($_POST['date'])) {
		iDisplayMSG('error','เกิดข้อผิดพลาด', 'กรุณาอย่าเว้นช่องว่าง','true','?page=topup');
	}else {
	$type = ('เติมเงินด้วย bank');
    $TW_id = ('ไม่มี Ref');
    $time_date = date("d-m-Y H:i");
	$query = $connect->query('INSERT INTO topup (TW_id,amount,date,type,username) VALUES ("'.$TW_id.'", "'.$_POST['amount'].'","'.$time_date.'", "'.$type.'", "'.$_SESSION['username'].'")');
	iDisplayMSG('isuccess','กำลังตรวจสอบ','คุณได้ทำการเติมเงินด้วยการโอน bank !!','true','?page=topup');
   }
     }		
   ?>  
 <div class="card border-0 shadow mb-4">
                        <div class="card-body">
                            <h5 class="m-0"><i class="fa fa-wallet"></i> การเติมเงิน</h5>
                            <br>
<div class="row">
                    <div class="col-md-12">
<div class="alert alert-primary">เมื่อกดเติมเงินแล้ว ให้ส่งสลิปเข้าเพจ แล้วให้รอ 1 - 24 ชั่วโมง</div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="h5 my-2">เติมผ่านทรูมันนี่วอลเล็ท <small>(ไม่มีค่าธรรมเนียม)</small></div>
                                <hr>
                                <form name="topup_btn" method="POST"> 

                                    <div class="form-group">
                                        <label><b>กรุณาโอนมาที่ เบอร์</b></label>

                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <img src="./img/tw.png" class="rounded-circle commentsbox_image" height="25" width="25" alt="">
                                                </div>
                                            </div>
                                            <input type="text" class="form-control" value="<?php echo $wallet['phone'];?> (<?php echo $wallet['name'];?>)" disabled="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label><b>เลขอ้างอิง (จะได้หลังโอนสำเร็จ)</b></label>
										<input class="form-control" type="text" name="TW_id" maxlength="14" placeholder="เลขที่อ้างอิง แอปทรูมันนี่วอลเล็ท">
                                    </div>

                                    <div class="form-group">
                                        <label><b>จำนวนที่โอน</b></label>
                                        <input class="form-control mb-2" type="number" name="amount" max="150000" min="20" onInput="$('#amount_c').text($(this).val() + '฿');" placeholder="จำนวนเงินที่โอนมา">
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" name="topup" class="btn btn-outline-success btn-block"><i class="fa fa-wallet"></i>&nbsp;แจ้งโอน</button>
                                    </div>


                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="h5 my-2">เติมผ่านธนาคาร <small>(ไม่มีค่าธรรมเนียม)</small></div>
                                <hr>

                                <form name="bank_btn" method="POST"> 

                                    <div class="form-group">
                                        <label><b>กรุณาโอนมาที่ เลขบัญชี</b></label>

                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <img src="http://compare.chaladsue.com/public/img/product/%E0%B8%98_%E0%B8%81%E0%B8%AA%E0%B8%B4%E0%B8%81%E0%B8%A3_-_%E0%B9%82%E0%B8%A5%E0%B9%82%E0%B8%81%E0%B9%891.png" class="rounded-circle commentsbox_image" height="25" width="25" alt="">
                                                </div>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Text input with radio button" value="ธนาคาร: กสิกรไทย 098-3-39824-3 (เอกชัย ไพรินทร์)" disabled="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label><b>เวลา (ตามสลิป)</b></label>
                                        <input class="form-control" type="time" name="date">
                                    </div>

                                    <div class="form-group">
                                        <label><b>จำนวนเงินที่โอน</b></label>
                                        <input class="form-control mb-2" type="number" name="amount" max="150000" min="1" onInput="$('#amount_c').text($(this).val() + '฿');" placeholder="จำนวนเงินที่โอนมา">
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" name="bank" class="btn btn-outline-success btn-block"><i class="fa fa-wallet"></i>&nbsp;แจ้งโอน</button>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
					
                <div id="return"></div>						
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="h5 my-2">คูปองเงินสด <small>(ไม่มีค่าธรรมเนียม)</small></div>
                                <hr>
                                <form method="post"> 
                                    <div class="form-group">
                                        <label><b>คูปองเงินสด</b></label>
                                        <input type="text" name="code" id="code" class="form-control" placeholder="รหัสคูปองที่ท่านได้มา">
                                    </div>

                                    <div class="form-group">
									<a class="btn btn-outline-success btn-block" id="btn" href="javascript:redeem();"><i class="fa fa-check-circle fa-lg"></i>&nbsp;ตรวจสอบ&nbsp;</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>		
					
                </div>				
        </div>
                </div>		