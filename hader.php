<?php	
$config_q = $connect->query("SELECT * FROM config");
 $config = $config_q->fetch_assoc();
 ?>

<meta name="description" content="<?php echo $config['description']; ?>">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title><?php echo $config['title']; ?></title>
<link rel="icon" href="<?php echo $config['icon']; ?>" type="image/x-icon">
<link rel="shortcut icon" href="<?php echo $config['icon']; ?>" type="image/x-icon">
<meta property="og:type" content="article" />
<meta property="og:description" content="<?php echo $config['description']; ?>" />
  <link href="https://fonts.googleapis.com/css?family=Fredoka+One|Kanit&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <link rel="stylesheet" href="css/Mshop.css">
  <script src="_dist/js/jquery.min.js"></script>
  <script src="_dist/js/bootstrap.min.js"></script>
  <script src="_dist/js/sweetalert.min.js"></script>
  <script src="_dist/js/datatables.min.js"></script>
  <script src="assets/js/i.js"></script>
  
		
	<meta property="og:title" content="GShops เว็บไชต์จำหน่ายสคริป">
    <meta property="og:description" content="เริ่มต้นเพียง 150 บาท/ถาวร #คุ้มสุดคุ้ม!">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.gshops.ml/">
    <meta property="og:image" content="https://www.gshops.ml/WEBSHOP/img/1.png">

		<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
		<link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
		<link rel="stylesheet" href="assets/fonts/ionicons.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/js/bs-animation.js"></script>
		<script src="assets/js/theme.js"></script>
		<script src="assets/js/jquery.ddslick.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<script type="text/javascript" src="assets/js/particles.js"></script>
		<link rel="stylesheet" href="assets/css/bng.css">
    <script type="text/javascript" src="assets/bng.js"></script>	
<script type="text/javascript" src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script> 

  <style type="text/css">
body {
  background-image: url(<?php echo $config['background']; ?>);
  background-size: 100% 100%;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>

<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v3.3'
    });
  };

  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/th_TH/sdk/xfbml.customerchat.js';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-customerchat"
 page_id="<?php echo $config['page_id']; ?>" 
 theme_color="#0084FF" 
 logged_in_greeting="<?php echo $config['logged']; ?>" 
 logged_out_greeting="<?php echo $config['logged']; ?>">
</div> 