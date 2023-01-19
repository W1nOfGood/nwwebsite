<div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
  <!--Indicators-->
  <ol class="carousel-indicators">
          <li data-target="#carousel-example-1z" data-slide-to="0" class=""></li>
      <li data-target="#carousel-example-1z" data-slide-to="1" class=""></li>
      <li data-target="#carousel-example-1z" data-slide-to="2" class="active"></li>
      </ol>
  <!--/.Indicators-->
  <!--Slides 1920 * 500-->
  <div class="carousel-inner" role="listbox">
  
      <!--First slide-->
      <div class="carousel-item">
        <img class="d-block w-100 img-fluid" src="https://gshops.ml/img/nfa1.png" style="max-height: 500px;" alt="First slide">
        <div class="carousel-caption">
            <span class="nameweb animated zoomIn" style="animation-delay: 0.5s"><?php echo $config['name'];?></span><br>
            <span class="title animated zoomIn" style="animation-delay: 1s">เว็บไชต์จำหน่ายสคริป</span><br>
            <span class="subtitle animated zoomIn" style="animation-delay: 1.5s">กดซื้อได้รับสินค้าทันที ไม่ต้องรอ</span><br>
			<span class="subtitle animated zoomIn" style="animation-delay: 1.5s"><a class="btn btn-success" href="?page=shop">ซื้อเลย</a></span>
          </div>
      </div>
      <!--/First slide-->
      <!--Second slide-->
      <div class="carousel-item active">
        <img class="d-block w-100 img-fluid" src="http://localhost/gshop/img/sfa-1.png" style="max-height: 500px;" style="max-height: 500px;" alt="Second slide">
        <div class="carousel-caption">
          <span class="nameweb animated zoomIn" style="animation-delay: 0.5s"><?php echo $config['name'];?></span><br>
          <span class="title animated zoomIn" style="animation-delay: 1s">เติมเงินสะดวก รวดเร็ว ทันใจ</span><br>
          <span class="subtitle animated zoomIn" style="animation-delay: 1.5s">ด้วยระบบไม่อัตโนมัติ 3 ช่องทาง สะดวก รวดเร็ว ปลอดภัย 100%</span><br>
		  <span class="subtitle animated zoomIn" style="animation-delay: 1.5s"><a class="btn btn-success" href="?page=topup">เติมเงิน</a></span>
          </div>
      </div>
      <!--/Second slide-->
      <div class="carousel-item">
        <img class="d-block w-100 img-fluid" src="http://localhost/gshop/img/MFA.png" style="max-height: 500px;" alt="Third slide">
        <div class="carousel-caption">
            <span class="nameweb animated zoomIn" style="animation-delay: 0.5s">ร้านค้าของเรามีแอดมินดูแลอย่างดี</span><br>
            <span class="title animated zoomIn" style="animation-delay: 1s">ระบบสั่งซื้อสินค้าอัตโนมัติ 100%</span><br>
            <span class="subtitle animated zoomIn" style="animation-delay: 1.5s">สินค้าของเรามีการรับประกัน</span><br>
          </div>
      </div>
      <!--/Third slide-->

      </div>
  <!--/.Slides-->
  <!--Controls-->
  <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->
</div>
<br>
 <div class="card border-0 shadow mb-4">
                        <div class="card-body">
                            <h5 class="m-0"><i class="fa fa-video"></i>&nbsp;วิดีโอ</h5>
                            <br>
      <?php if($website['video'] == "true"){ ?>
	  <iframe iframe height="315" style="width:100%;" src='https://www.youtube.com/embed/<?php echo $website['videourl']; ?> 'frameborder="0" allowfullscreen=""></iframe>
      <?php }else{ } ?>
 </div>
</div>
 <div class="card border-0 shadow mb-4">
                        <div class="card-body">
                            <h5 class="m-0"><i class="fa fa-newspaper"></i>&nbsp; ข่าวสารเเละอัพเดท</h5>
                            <br>
 <div class="container">
 	    	<?php
	    		$query_announce = $connect->query('SELECT * FROM news ORDER BY id DESC LIMIT 5');
		        	$i =0 ;
		         	while($news = $query_announce->fetch_assoc())
		          	{
		            ?>
 			<table class="table table-striped table-bordered" >
				<tbody>
						<tr>
						 <td><span class="badge badge-info">News</span>&nbsp;<?php echo $news['info']; ?></td>
					     <td class="text-right">
		                	<?php echo $news['date']; ?>
		                </td>
						</tr>
				</tbody>
			</table>	
		          <?php
		        }
		    ?>
</div>
</div>
</div>

 <!--div class="card border-0 shadow mb-4">
                        <div class="card-body">
                            <h5 class="m-0"><i class="fa fa-newspaper"></i>&nbsp; ประวัติการซื้อสินค้าล่าสุด</h5>
                            <br>
						<table class="table stylish-table">
							<thead>
							<tr>
								<th class="text-center align-middle" scope="col">ID</th>
								<th class="text-center align-middle" scope="col">ชื่อสินค้า</th>
								<th class="text-center align-middle" scope="col">ราคา</th>
								<th class="text-center align-middle" scope="col">ผู้ซื้อ</th>
							</tr>
							</thead>
                                        <tbody>
                                              <?php 
                                                $download_u_q = $connect->query("SELECT * FROM stock ORDER BY id DESC LIMIT 4");
                                                 if($download_u_q->num_rows == 0) {
	                                                echo '<tr class="table text-center"><td colspan="5"><i class="fa fa-times-circle"></i> ไม่พบข้อมูล</td></tr>';
                                                  }
                                                while($download_u = $download_u_q->fetch_assoc())
                                                        
                                                {
                                                    $i++;
                                                   ?>
                                            <tr>
                                            <td class="text-center align-middle"><?php echo $download_u['id']; ?></td>
                                            <td class="text-center align-middle"><?php echo $download_u['name']; ?></td>
                                            <td class="text-center align-middle"><?php echo number_format($download_u['price'],2); ?></td>
                                            <td class="text-center align-middle"><?php echo $download_u['username']; ?></td>
                                                
                                            </tr>
                                                <?php } ?>
                                        </tbody>
						</table>
					</div>
				</div-->

  <div class="card border-0 shadow mb-4">
                        <div class="card-body">
                            <h5 class="m-0"><i class="fas fa-chart-line"></i>&nbsp; ข้อมูลเว็บไซต์</h5>
                            <br>
					    <div class="row">

<div class="col-md-4">
<div class="card card-body">
<div class="d-flex align-items-center">
<i class="fas fa-chart-bar fa-4x" aria-hidden=""></i><h4 class="pl-4"> ยอดเข้าชม<br><small>&nbsp;<?php echo number_format($count); ?>&nbsp; ครั้ง</small></h4> 
</div></div></div>

<div class="col-md-4">
<div class="card card-body">
<div class="d-flex align-items-center">
<i class="fa fa-shopping-cart fa-4x" aria-hidden=""></i><h4 class="pl-4"> สินค้าที่ขาย<br><small>&nbsp;0 ชิ้น</small></h4> 
</div></div></div>

<div class="col-md-4">
<div class="card card-body">
<div class="d-flex align-items-center"><i class="fa fa-user fa-4x" aria-hidden=""></i><h4 class="pl-4"> สมาชิก<br><small>&nbsp;<?php echo number_format($user); ?>&nbsp; คน</small></h4> 
</div></div></div>

</div>
</div>
</div>