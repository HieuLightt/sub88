<?php
$so_don=$NTD->get_row("SELECT COUNT(*) FROM `history_buy`  WHERE  `url_config` = '".$url_site_name."' AND `username` = '".$my_user."'") ['COUNT(*)'];

?>
  
      <?php 
if($url_site_name==$URL_ADMIN){ ?>

<body class="dark">
<style>.menu{background: <?=$NTD->site('bg_navbar_site');?>;}.header{background-color: <?=$NTD->site('bg_header_site');?>;}.menu-body ul li>a{color: <?=$NTD->site('text_color_site');?>;}.header ul.navbar-nav li a:not(.btn-primary):not(.dropdown-item){color: <?=$NTD->site('icon_color_site');?>;}.input-group-text{color: <?=$NTD->site('icon_color_site');?>;}</style>

<div class="preloader">
<div class="preloader-icon"></div>
</div>
<div class="sidebar" id="notifications">
<div class="sidebar-header d-block align-items-end">
<div class="align-items-center d-flex justify-content-between py-4">
Notifications
<button data-sidebar-close class="ltr">
<i class="bi bi-arrow-right"></i>
 </button>
<button data-sidebar-close class="rtl">
<i class="bi bi-arrow-left"></i>
</button>
</div>
<ul class="nav nav-pills">
<li class="nav-item">
<a class="nav-link active nav-link-notify" data-bs-toggle="tab" href="#activities">Activities</a>
</li>
<li class="nav-item">
<a class="nav-link" data-bs-toggle="tab" href="#alerts">Alerts</a>
</li>
</ul>
</div>
<div class="sidebar-content">
<div class="tab-content">
<div class="tab-pane active" id="activities">
<div class="tab-pane-body">
<ul class="list-group list-group-flush">
<li class="px-0 list-group-item">
<a href="#" class="d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-info me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-person"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 fw-bold d-flex justify-content-between">
You joined a group
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Today
</span>
</div>
</a>
</li>
<li class="px-0 list-group-item">
<a href="#" class="d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-warning me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-hdd"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 fw-bold d-flex justify-content-between">
Storage is running low!
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Today
</span>
</div>
</a>
</li>
<li class="px-0 list-group-item">
<a href="#" class="d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-secondary me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-file-text"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 d-flex justify-content-between">
1 person sent a file
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Yesterday
</span>
</div>
</a>
</li>
<li class="px-0 list-group-item">
<a href="#" class="d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-success me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-download"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 d-flex justify-content-between">
Reports ready to download
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Yesterday
</span>
</div>
</a>
</li>
<li class="px-0 list-group-item">
<a href="#" class="d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-info me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-lock"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 d-flex justify-content-between">
2 steps verification
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> 20 min ago
</span>
</div>
</a>
</li>
</ul>
</div>
<div class="tab-pane-footer">
<a href="#" class="btn btn-success">
<i class="bi bi-check2 me-2"></i> Make All Read
</a>
<a href="#" class="btn btn-danger ms-2">
<i class="bi bi-trash me-2"></i> Delete all
</a>
</div>
</div>
<div class="tab-pane" id="alerts">
<div class="tab-pane-body">
<ul class="list-group list-group-flush">
<li class="px-0 list-group-item d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-warning me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-lock"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 fw-bold d-flex justify-content-between">
Signed in with a different device.
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Yesterday
 </span>
</div>
</li>
<li class="px-0 list-group-item d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-warning me-3">
<span class="avatar-text fw-bold rounded-circle">
<i class="bi bi-file-text"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 fw-bold d-flex justify-content-between">
Your billing information is not active.
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Yesterday
</span>
</div>
</li>
<li class="px-0 list-group-item d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-warning me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-person"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 d-flex justify-content-between">
Your subscription has expired.
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Today
</span>
</div>
</li>
<li class="px-0 list-group-item d-flex">
<div class="flex-shrink-0">
<figure class="avatar avatar-warning me-3">
<span class="avatar-text rounded-circle">
<i class="bi bi-hdd"></i>
</span>
</figure>
</div>
<div class="flex-grow-1">
<p class="mb-0 d-flex justify-content-between">
Your storage space is running low
</p>
<span class="text-muted small">
<i class="bi bi-clock me-1"></i> Today
</span>
</div>
</li>
</ul>
</div>
<div class="tab-pane-footer">
<a href="#" class="btn btn-success">
<i class="bi bi-check2 me-2"></i> Make All Read
</a>
<a href="#" class="btn btn-danger ms-2">
<i class="bi bi-trash me-2"></i> Delete all
</a>
</div>
</div>
</div>
</div>
</div>
<div class="menu">
<div class="menu-header">
<a href="/home" class="menu-header-logo">
<img src="<?=$NTD->site('logo');?>" alt="logo">
</a>
<a href="/home" class="btn btn-sm menu-close-btn">
<i class="bi bi-x"></i>
 </a>
</div>
<div class="menu-body">
<ul id="sidebar">
<li>
<a href="/home">
<span class="menu-icon">
<img src="/assets/images2/svg/home.svg" alt="">
</span> <span>Trang ch???</span>
</a>
</li>
<li>
<a href="/Profile">
<span class="menu-icon">
<img src="/assets/images2/svg/account.svg" alt="">
</span> <span>T??i kho???n c???a t??i</span>
</a>
</li>
<li>
<a href="/Nap-Tien">
<span class="menu-icon">
<img src="/assets/images2/svg/credit-card.svg" alt="">
</span> <span>N???p ti???n t??i kho???n</span>
</a>
</li>

<li>
<a href="/history">
<span class="menu-icon">
<img src="/img-pqn/business-man.svg" alt="">
</span> <span>L???ch S??? T??i Kho???n</span>
</a>
</li>

<li>
<a href="/Nang-Cap">
<span class="menu-icon">
<img src="/assets/images2/svg/vip.svg" alt="">
</span> <span>C???p b???c t??i kho???n</span>
</a>
</li>
<li>
<a href="/Tao-Site-Con">
<span class="menu-icon">
<img src="/assets/images2/svg/web-design.svg" alt="">
</span> <span>T???o website ri??ng</span>
</a>
</li>
<li>
<a href="/Thong-Ke">
<span class="menu-icon">
<img src="/assets/images2/svg/analytics.svg" alt="">
</span> <span>Th???ng k?? d??ng ti???n</span>
</a>
</li>

<li>
<a href="/">
<span class="menu-icon">
<img src="/img-pqn/account2.svg" alt="">
</span> <span>D???ch V??? T??i Kho???n</span>
</a>
<ul>
<li>
<a href="/mua-tai-khoan" target="_blank">
<span class="menu-icon">
<img src="/img-pqn/buy2.svg" alt="">
</span>Mua T??i Kho???n
</a>
</li>
<li>
<a href="/lich-su-mua-tai-khoan" target="_blank">
<span class="menu-icon">
<img src="/img-pqn/history.svg" alt="">
</span>T??i Kho???n ???? Mua
</a>
</li>
</ul>
</li>

<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/facebook.svg" alt="">
</span> <span>D???ch v??? Facebook</span>
</a>
<ul>
    
<li c>
<a href="/dich-vu/facebook/like-post-sale">
<span class="menu-icon">
<img src="/assets/images/like.svg" alt="">
</span>T??ng like b??i vi???t (sale)
</a>
</li>

<li c>
<a href="/dich-vu/facebook/like-post">
<span class="menu-icon">
<img src="/assets/images/like1.svg" alt="">
</span>T??ng like b??i vi???t (speed)
</a>
</li>
<li c>
<a href="/dich-vu/facebook/cmt-sale">
<span class="menu-icon">
<img src="/assets/images/comment.svg" alt="">
</span>T??ng b??nh lu???n
</a>
</li>
    <li  c>
<a href="/dich-vu/facebook/sub-speed">
<span class="menu-icon">
<img src="/assets/images/follow3.svg" alt="">
</span>T??ng sub/follow (speed)
</a>
</li>
<li  c>
<a href="/dich-vu/facebook/sub-vip">
<span class="menu-icon">
<img src="/assets/images/follow.svg" alt="">
</span>T??ng sub/follow (vip)
</a>
<li  c>
<a href="/dich-vu/facebook/sub-quality">
<span class="menu-icon">
<img src="/assets/images/follow4.svg" alt="">
</span>T??ng sub/follow (quality)
</a>
</li>
<li  c>
<a href="/dich-vu/facebook/sub-sale">
<span class="menu-icon">
<img src="/assets/images/follow2.svg" alt="">
</span>T??ng sub/follow (sale)
</a>
</li>
<li  c>
<a href="/dich-vu/facebook/like-page-sale">
<span class="menu-icon">
<img src="/assets/images/page1.svg" alt="">
</span>T??ng like/follow page (sale)
</a>
</li>
<li c>
<a href="/dich-vu/facebook/like-page-speed">
<span class="menu-icon">
<img src="/assets/images/page2.svg" alt="">
</span>T??ng like/follow page (speed)
</a>
</li>
<li c>
<a href="/dich-vu/facebook/like-page-quality">
<span class="menu-icon">
<img src="/assets/images/page.svg" alt="">
</span>T??ng like/follow page (quality)
</a>
</li>
<li c>
<a href="/dich-vu/facebook/mat-live">
<span class="menu-icon">
<img src="/assets/images/live-streaming.svg" alt="">
</span>T??ng m???t livestream
</a>
</li>
<li>
<a href="/dich-vu/facebook/view-video">
<span class="menu-icon">
<img src="/assets/images/film.svg" alt="">
</span>T??ng view video
</a>
</li>
<li>
<a href="/dich-vu/facebook/view-story">
<span class="menu-icon">
<img src="/assets/images/story.svg" alt="">
</span>T??ng view story
</a>
</li>
<li>
<a href="/dich-vu/facebook/share-sale">
<span class="menu-icon">
<img src="/assets/images/share.svg" alt="">
</span>T??ng chia s???
</a>
</li>
<li>
<a href="/dich-vu/facebook/mem-group">
<span class="menu-icon">
<img src="/assets/images/people.svg" alt="">
</span>T??ng th??nh vi??n nh??m
</a>
</li>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/update.svg" alt="">
</span>??ang c???p nh???t
</a>
</li>
</ul>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/svg/intas.png" alt="">
</span> <span>D???ch v??? Instagram</span>
</a>
 <ul>
<li>
<a href="/dich-vu/instagram/like">
<span class="menu-icon">
<img src="/assets/images/like1.svg" alt="">
</span>T??ng like b??i vi???t
</a>
</li>
<li>
<a href="/dich-vu/instagram/follow">
<span class="menu-icon">
<img src="/assets/images/follow4.svg" alt="">
</span>T??ng sub/follow
</a>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/update.svg" alt="">
</span>??ang c???p nh???t
</a>
</ul>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/svg/tiktok-logo.png" alt="">
</span> <span>D???ch v??? Tiktok</span>
</a>
<ul>
<li>
<a href="/dich-vu/tiktok/like">
<span class="menu-icon">
<img src="/assets/images/love.svg" alt="">
</span>T??ng like 
</a>
</li>

<li>
<a href="/dich-vu/tiktok/follow">
<span class="menu-icon">
<img src="/assets/images/follow4.svg" alt="">
</span>T??ng sub/follow
</a>
</li>
<li>
<a href="/dich-vu/tiktok/view">
<span class="menu-icon">
<img src="/assets/images/play.svg" alt="">
</span>T??ng view
</a>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/update.svg" alt="">
</span>??ang c???p nh???t
</a>
</ul>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/svg/youtube-play--v2.png" alt="">
</span> <span>D???ch v??? Youtube</span>
</a>
<ul>
<li>
<a href="/dich-vu/youtube/like">
<span class="menu-icon">
<img src="/assets/images/like.svg" alt="">
</span>T??ng like video
</a>
</li>
<li>
<a href="/dich-vu/youtube/sub">
<span class="menu-icon">
<img src="/assets/images/follow1.svg" alt="">
</span>T??ng ????ng k?? k??nh
</a>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/update.svg" alt="">
</span>??ang c???p nh???t
</a>
</ul>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/twitter.svg" alt="">
</span> <span>D???ch v??? twitter</span>
</a>
<ul>
<li>
<a href="/dich-vu/twitter/like">
<span class="menu-icon">
<img src="/assets/images/love.svg" alt="">
</span>T??ng like (th??? tim)
</a>
</li>
<li>
<a href="/dich-vu/twitter/sub">
<span class="menu-icon">
<img src="/assets/images/follow1.svg" alt="">
</span>T??ng sub/follow
</a>
</li>
<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/update.svg" alt="">
</span>??ang c???p nh???t
</a>
</ul>
<li>
<a href="/">
<span class="menu-icon">
<img src="/img-pqn/telegram.svg" alt="">
</span> <span>D???ch V??? Telegram</span>
</a>
<ul>
<li>
<a href="/#">
<span class="menu-icon">
<img src="/assets/images/update.svg" alt="">
</span>??ang C???p Nh???t
</a>
</li>
<li>
</ul>
</li>

<li>
<a href="/">
<span class="menu-icon">
<img src="/assets/images/support.svg" alt="">
</span> <span>Li??n h??? & h??? tr???</span>
</a>
<ul>
<li>
<a href="<?=$NTD->site('facebook');?>" target="_blank">
<span class="menu-icon">
<img src="/assets/images/facebook.svg" alt="">
</span>Facebook
</a>
</li>
<li>
<a href="https://zalo.me/<?=$NTD->site('phone_zalo');?>" target="_blank">
<span class="menu-icon">
<img src="/assets/images/zalo.svg" alt="">
</span>Zalo
</a>
</li>
<li>
<a href="/Tao-Ho-Tro" target="_blank">
<span class="menu-icon">
<img src="/assets/images/mail.png" alt="">
</span>G???i H??? Tr???
</a>
</li>
</ul>
</li>

<li>
<a href="/Api-DichVu">
<span class="menu-icon">
<img src="/img-pqn/code.svg" alt="">
</span> <span>T??i li???u t??ch h???p Api</span>
</a>
</li>

 <?php if($NTD->getUsers('capbac') == 99){?>
                       
          <li>
<a href="/Admin-Website">
<span class="menu-icon">
<img src="https://img.icons8.com/external-xnimrodx-blue-xnimrodx/64/000000/external-cog-encryption-xnimrodx-blue-xnimrodx.png" alt="">
</span> <span>Trang Qu???n Tr???</span>
</a>
</li>
                        <?php }?>
</ul>
</div>
<div class="menu-footer border-top d-flex flex-column gap-2">
<div class="text-center">
<h5><?=$NTD->getUsers('username');?></h5>
<div>S??? d??: <b class="text-danger"><?=format_money($NTD->getUsers('money'));?></b> coin</div>
</div>
</div>
</div>






<?php }?>