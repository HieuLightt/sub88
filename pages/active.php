<?php
  $status_site=$NTD->get_row(" SELECT * FROM `setting` WHERE `url_config` = '".$url_site_name."'
");  
if($status_site['status']!=="wait"){
    header('Location: /');exit;
}


?>
<!doctype html>
<html lang="vi">
<head>
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
<title>Kích Hoạt</title>
  <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="MobileOptimized" content="320">
        <meta http-equiv="content-language" content="vi" />
<meta name="copyright" content="Nguyễn Tiến Đạt" />
<meta name="author" content="Nguyễn Tiến Đạt" />
<meta name="keyword" content="<?=$NTD->site('tu_khoa');?>" />
<meta name="robots" content="index, follow" />
<meta name="revisit-after" content="1 days" />
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
<meta http-equiv="content-language" content="vi" />
<meta property="og:url" content="https://<?=$_SERVER['SERVER_NAME']?>" />
<meta property="og:type" content="website" />
<meta property="og:domain" content="<?=$_SERVER['SERVER_NAME']?>" />
<meta property="og:title" content="Hệ thống dịch vụ mạng xã hội Facebook | Instagram | Youtube | Tiktok | <?=$NTD->site('ten_website');?>" />
<meta property="og:description" content="Hệ thống dịch vụ mạng xã hội Facebook | Instagram | Youtube | Tiktok | <?=$NTD->site('ten_website');?>" />
<meta property="og:image" content="<?=BASE_URL('assets/img/home-banner.jpg');?>" />
<meta property="fb:app_id" content="" />
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
<meta name="twitter:title" content="Hệ thống dịch vụ mạng xã hội Facebook | Instagram | Youtube | Tiktok | <?=$NTD->site('ten_website');?>">
<meta name="twitter:description" content="Hệ thống dịch vụ mạng xã hội Facebook | Instagram | Youtube | Tiktok | <?=$NTD->site('ten_website');?>">
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
    <meta name="csrf-token" content="EAAGNO4a7r2wBAD30V2NTzCNJA8nYn1UAwrCOS4AgxuxMhA3pVyLidPSTUyJfWzE6obIXeYQP7P334AMOph07HWePcAZAc6whr01CTyigjbvFR1KVExDfftRuyPZBfNPg9NvkZA5b1TRHb3BobZCbVvkTcFgAXYeljXTHHddzZCalAmor">
      <script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="b9e3e84309a92aaf852234bf-|49" defer=""></script>
      <link rel="preconnect" href="https://fonts.googleapis.com">
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
      	<link rel="icon" type="image/png" href="<?=$NTD->site('favicon');?>"/>
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet">
<link rel="stylesheet" href="/assets/themes/login-v4/css/style.css?<?=rand(1,999999);?>">
<link rel="stylesheet" href="/assets/themes/login-v4/css/main.css?<?=rand(1,999999);?>">
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
<link rel="stylesheet" href="/assets/themes/login-v4/css/app.css?<?=rand(1,999999);?>">
<link rel="stylesheet" href="/assets/themes/login-v4/css/bootstrap.css?<?=rand(1,999999);?>">
</head>
<div class="wrapper">
<section class="login-content">
<div class="container h-100">
<div class="row justify-content-center align-items-center height-self-center">
<div class="col-md-5 col-sm-12 col-12 align-self-center">
<div class="sign-user_card">


<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
 <h4 class="title">
Site Activation</h4>
<br>
<form submit-ajax="NTD" method="post"  action="<?=BASE_URL('api/active');?>"  >
           <o id="callback"></o>
                            <input type="hidden" name="_token" value="EAAGNO4a7r2wBAD30V2NTzCNJA8nYn1UAwrCOS4AgxuxMhA3pVyLidPSTUyJfWzE6obIXeYQP7P334AMOph07HWePcAZAc6whr01CTyigjbvFR1KVExDfftRuyPZBfNPg9NvkZA5b1TRHb3BobZCbVvkTcFgAXYeljXTHHddzZCalAmor">
<div class="row">

<div class="col-lg-12">
<div class="floating-label form-group">
<input class="floating-input form-control" type="text" name="key_active" placeholder="Nhập token kích hoạt site">
</div>
</div>
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 

</div> 
<button type="submit" class="btn btn-info-but btn-block btn-lg"><h5 class="text-button">Kích hoạt</h5></button>

</form>


</div>
</div>
</div>
</div>
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
</section>
</div>
 <script src="<?=BASE_URL('assets/js/backend-bundle.min.js');?>" type="b9e3e84309a92aaf852234bf-text/javascript"></script>
    <script src="<?=BASE_URL('assets/js/all.min.js?'.time());?>" type="b9e3e84309a92aaf852234bf-text/javascript"></script>
    
    <script type="b9e3e84309a92aaf852234bf-text/javascript">
        const pusher = new Pusher('668e4c588c763d16fcc4', {
            cluster: 'ap1'
        });
    </script>
    
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
    <script src="<?=BASE_URL('assets/js/function.vendors3243242.js?'.time());?>" type="b9e3e84309a92aaf852234bf-text/javascript"></script>
    <script type="b9e3e84309a92aaf852234bf-text/javascript">
        $(document).ready(function() {
            if (!getCookie('modalSystem')) {
                $('#modalSystem').modal('show');
            }
        });

        function closeModalSystem() {
            setCookie('modalSystem', true, 1);
            $('#modalSystem').modal('hide');
        }
    </script>
    
<!-- Dev By PQNIT.ASIA | FB.COM/PQNIT.ASIA | ZALO.ME/0375343460 | MMO Solution --> 
    <script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="b9e3e84309a92aaf852234bf-|49" defer=""></script>

</body>
</html>