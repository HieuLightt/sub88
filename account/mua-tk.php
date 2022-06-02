<?php require('../config/function.php');?><?php require('../config/head.php'); if(empty($_SESSION['username'])){header('Location: /auth/login');exit;}?>
<title>Mua Tài Khoản</title>
<script type="b9e3e84309a92aaf852234bf-text/javascript">
    const profile = {
        "id": "<?=$NTD->getUsers('id');?>",
        "fullname": "<?=$NTD->getUsers('name');?>",
        "email": "<?=$NTD->getUsers('email');?>",
        "username": "<?=$NTD->getUsers('username');?>",
        "đ": "<?=$NTD->getUsers('money');?>",
        "level": "<?php if($NTD->getUsers('level') == NULL){echo 'member';}else{echo $NTD->getUsers('level');}?>",
        "blocked": "<?php if($NTD->getUsers('banned') == 0){echo 'false';}else{echo 'true';}?>",
        "detail_blocked": "<?php if($NTD->getUsers('banned') == 0){echo 'Active';}else{echo 'Block';}?>",
        "api_token": "<?=$NTD->getUsers('token');?>",
        "created_at": "<?=$NTD->getUsers('date');?>",
        "updated_at": "<?=$NTD->getUsers('lastdate');?>",
        "website": [],
        "avatar": "<?=$NTD->site('logo_user');?><?=$NTD->getUsers('username');?>",
        "isAdmin": "<?php if($NTD->getUsers('capbac') == 99){echo 'true';}else{echo 'false';}?>",
        "position": "<?=levelmem($NTD->getUsers('capbac'));?>",
        "levelMember": "<?=levelmem($NTD->getUsers('capbac'));?>",
        "codeRecharge": "<?=$NTD->getUsers('cuphap');?>",
        "loaded": "<?=$NTD->getUsers('tongnap');?>",
        "pepper": "<?=$NTD->getUsers('tongtru');?>",
        "statusAccount": "<?php if($NTD->getUsers('banned') == 0){echo 'Active';}else{echo 'Block';}?>"
    };
    const setting = {
        "title": "Hệ thống dịch vụ mạng xã hội Facebook | Instagram | Youtube | Tiktok | <?=$NTD->site('ten_website');?>",
        "domain": "<?=$NTD->site('ten_website');?>",
        "keyword": "like, sub, share, vip like, buff m\u1eaft, t\u0103ng follow, mua like, mua sub, sub r\u1ebb, hack like, hack sub, hack follow, t\u0103ng like, t\u0103ng follow, t\u0103ng share, t\u0103ng comment, ch\u00e9o like, ch\u00e9o sub, shop sub",
        "fullname_admin": "<?=$NTD->site('full_name_admin');?>",
        "fb_admin": "<?=$NTD->site('facebook');?>",
        "zalo_admin": "https:\/\/zalo.me\/<?=$NTD->site('phone_zalo');?>",
        "modal_system": "H\u1ec7 th\u1ed1ng ho\u00e0n to\u00e0n t\u1ef1 \u0111\u1ed9ng h\u00f3a 100%, t\u1ef1 \u0111\u1ed9ng n\u1ea1p ti\u1ec1n (n\u1ea1p \u00edt nh\u1ea5t 10k, n\u1ea1p sai n\u1ed9i dung tr\u1eeb 10% ph\u00ed). Ch\u00fac b\u1ea1n s\u1eed d\u1ee5ng d\u1ecbch v\u1ee5 vui v\u1ebb nh\u00e9."
    };
</script>
        <?php require('../config/nav.php');?>
       <?php 
if($url_site_name==$URL_ADMIN){ ?>       
         <div class="layout-wrapper">
<div class="header">
<div class="menu-toggle-btn">
<a href="#">
<i class="bi bi-list"></i>
</a>
</div>
<a href="/" class="logo">
<img width="130" src="<?=$NTD->site('logo');?>" alt="logo">
</a>
<div class="page-title">Mua Tài Khoản</div>
<form class="search-form">
<div class="input-group">
<span class="input-group-text">
<i class="bi bi-search"></i>
</span>
<input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm...">
<a href="#" class="btn btn-outline-light close-header-search-bar">
<i class="bi bi-x"></i>
</a>
</div>
</form>
<div class="header-bar ms-auto">
<ul class="navbar-nav justify-content-end gap-3">
<li class="nav-item">
<a href="#" class="nav-link nav-link-notify" data-count="2" data-sidebar-target="#notifications">
<i class="bi bi-bell icon-lg"></i>
</a>
</li>
<li>
<a href="#" data-bs-toggle="dropdown" class="btn btn-white py-1 px-2 dropdown-toggle custom-shadow">
<span class="avatar avatar-sm me-2">
<img src="https://ui-avatars.com/api/?background=random&amp;name=<?=$NTD->getUsers('name');?>" class="rounded-circle" alt="avatar">
</span>
<span class="d-none d-md-inline"><?=$NTD->getUsers('name');?></span>
</a>
<ul class="dropdown-menu">
<li><a class="dropdown-item" href="/Profile">Tài khoản của tôi</a>
</li>
<li>
<hr class="dropdown-divider">
</li>
<li><a class="dropdown-item" href="/Logout">Đăng xuất</a></li>
</ul>
</li>
</ul>
</div>
<div class="header-mobile-buttons">
<a href="#" class="search-bar-btn">
<i class="bi bi-search"></i>
</a>
<a href="#" class="actions-btn">
<i class="bi bi-three-dots"></i>
</a>
</div>
</div>
<div class="content">
<div class="row">
<div class="col-md-12">
<div class="card mb-4">
<div class="card-body">
<div class="ribbon-title ribbon-primary">Dịch vụ Clone việt</div>
<div class="mt-4">
<div class="table-responsive" tabindex="1" style="overflow: hidden; outline: none;">
<table class="table table-striped table-bordered table-hover">
<thead>
<tr role="row" class="bg-primary">
<th class="text-center text-white">Sản phẩm</th>
<th class="text-center text-white">Hiện còn</th>
<th class="text-center text-white">Đã bán</th>
<th class="text-center text-white">Giá</th>
<th class="text-center text-white">Hành động</th>
</tr>
</thead>
<tbody role="alert" aria-live="polite" aria-relevant="all" class="">
<tr>
<td class="py-8 text-center">
<div class="d-flex align-items-center">
<div>
<a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">
<p>Clone IP Viẹt, Name Việt, 2FA+AVT , 0-5FR, 50% Gợi ý Bạn Bè Việt, Very HOTMAIL</p>
</a>
<span class="text-muted font-weight-bold d-block">UID|PASS|2FA|COOKIE|TOKEN|MAIL|PASS_MAIL</span>
</div>
 </div>
</td>
<td class="text-center"> <span class="badge bg-success">0
tài
khoản</span>
</td>
<td class="text-center"> <span class="badge bg-info">88
tài
khoản</span>
</td>
<td class="text-center"><b class="text-danger">1,300</b>
<sup>coin</sup>
</td>
<td class="text-center">
<div class="flex align-items-center">
<button class="btn btn-danger  btn-block" disabled=""><i class="fa fa-shopping-cart"></i> Hết hàng</button>
</div>
</td>
</tr>
<tr>
<td class="py-8 text-center">
<div class="d-flex align-items-center">
<div>
<a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">
<p>Clone IP Viẹt, Name Việt, 2FA+AVT , 0-5FR, 50% Gợi ý Bạn Bè Việt</p>
</a>
<span class="text-muted font-weight-bold d-block">UID|PASS|2FA|COOKIE|TOKEN</span>
</div>
</div>
</td>
<td class="text-center"> <span class="badge bg-success">0
tài
khoản</span>
</td>
<td class="text-center"> <span class="badge bg-info">206
tài
khoản</span>
</td>
<td class="text-center"><b class="text-danger">1,000</b>
<sup>coin</sup>
</td>
<td class="text-center">
<div class="flex align-items-center">
<button class="btn btn-danger  btn-block" disabled=""><i class="fa fa-shopping-cart"></i> Hết hàng</button>
</div>
</td>
</tr>
<tr>
<td class="py-8 text-center">
<div class="d-flex align-items-center">
<div>
<a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">
 <p>Clone IP Viẹt, Name Việt 2FA , 20-50FR, 90% Gợi ý Bạn Bè Việt</p>
</a>
<span class="text-muted font-weight-bold d-block">Chuyên Share, Spam Group &gt;&gt;&gt; UID|PASS|2FA|COOKIE|TOKEN</span>
</div>
</div>
</td>
<td class="text-center"> <span class="badge bg-success">0
tài
khoản</span>
</td>
<td class="text-center"> <span class="badge bg-info">321
tài
khoản</span>
</td>
<td class="text-center"><b class="text-danger">1,400</b>
<sup>coin</sup>
</td>
<td class="text-center">
<div class="flex align-items-center">
<button class="btn btn-danger  btn-block" disabled=""><i class="fa fa-shopping-cart"></i> Hết hàng</button>
</div>
</td>
</tr>
<tr>
<td class="py-8 text-center">
<div class="d-flex align-items-center">
<div>
<a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">
<p>Clone Việt 2FA, AVT Trên 10 Ngày , 50-100 Bạn bè , 90% gợi ý Full HOTMAIL</p>
</a>
<span class="text-muted font-weight-bold d-block">UID|PASS|2FA|COOKIE|TOKEN|MAIL|PASS_MAIL</span>
</div>
</div>
</td>
<td class="text-center"> <span class="badge bg-success">0
tài
khoản</span>
</td>
<td class="text-center"> <span class="badge bg-info">276
tài
khoản</span>
</td>
<td class="text-center"><b class="text-danger">2,200</b>
<sup>coin</sup>
</td>
<td class="text-center">
<div class="flex align-items-center">
<button class="btn btn-danger  btn-block" disabled=""><i class="fa fa-shopping-cart"></i> Hết hàng</button>
 </div>
</td>
</tr>
<tr>
<td class="py-8 text-center">
<div class="d-flex align-items-center">
<div>
<a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">
<p>Clone IP Viẹt, Name Việt 2FA , 20-50FR, 90% Gợi ý Bạn Bè Việt , VERY HOTMAIL</p>
</a>
<span class="text-muted font-weight-bold d-block">UID|PASS|2FA|COOKIE|TOKEN|MAIL|PASS_MAIL</span>
</div>
</div>
</td>
<td class="text-center"> <span class="badge bg-success">0
tài
khoản</span>
</td>
<td class="text-center"> <span class="badge bg-info">204
tài
khoản</span>
</td>
<td class="text-center"><b class="text-danger">1,600</b>
<sup>coin</sup>
</td>
<td class="text-center">
<div class="flex align-items-center">
<button class="btn btn-danger  btn-block" disabled=""><i class="fa fa-shopping-cart"></i> Hết hàng</button>
</div>
</td>
</tr>
<tr>
<td class="py-8 text-center">
<div class="d-flex align-items-center">
<div>
<a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">
<p>Clone IP Viẹt, Name Việt, 2FA+AVT , 0-5FR, 90% Gợi ý Bạn Bè Việt, Very HOTMAIL</p>
</a>
<span class="text-muted font-weight-bold d-block">UID|PASS|2FA|COOKIE|TOKEN|MAIL|PASS_MAIL</span>
</div>
</div>
</td>
<td class="text-center"> <span class="badge bg-success">0
tài
khoản</span>
</td>
<td class="text-center"> <span class="badge bg-info">50
tài
khoản</span>
</td>
<td class="text-center"><b class="text-danger">1,100</b>
<sup>coin</sup>
 </td>
<td class="text-center">
<div class="flex align-items-center">
<button class="btn btn-danger  btn-block" disabled=""><i class="fa fa-shopping-cart"></i> Hết hàng</button>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div> </div>
</div>
<div class="row">
<div class="col-md-12">
<div class="card mb-4">
<div class="card-body">
<div class="ribbon-title ribbon-primary">Dịch vụ Clone ngoại</div>
<div class="mt-4">
<div class="table-responsive" tabindex="2" style="overflow: hidden; outline: none;">
<table class="table table-striped table-bordered table-hover">
<thead>
<tr role="row" class="bg-primary">
<th class="text-center text-white">Sản phẩm</th>
<th class="text-center text-white">Hiện còn</th>
<th class="text-center text-white">Đã bán</th>
<th class="text-center text-white">Giá</th>
<th class="text-center text-white">Hành động</th>
</tr>
</thead>
<tbody role="alert" aria-live="polite" aria-relevant="all" class="">
<tr class="odd">
<td valign="top" colspan="100%">
<center>
<img src="/img-pqn/nodata.svg" alt="" width="80" height="80" class="pt-3">
<p class="pt-3">Không có dữ liệu để hiển thị</p>
</center>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div> </div>
</div>
<div class="modal fade" id="showBuy" tabindex="-1" role="dialog" aria-labelledby="showBuyTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="showBuyTitle">Mua dịch vụ</h5>
<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
<form submit-ajax="hvl" action="#" method="post" api_token="eyJpdiI6IlRhcFZsMnJzMTV5dG1HVTBHM08rY1E9PSIsInZhbHVlIjoiSVg5OG5VdlR2VjRtUkNRVnFJQUhvOUhueXJDOGJpVXVKYWhBNFlRM2JzMnhxaUJ5bVFpTnBNbzVWL1JibFMxOSIsIm1hYyI6ImUyOWNiYTU1NjNjMmM3YjViYWQ0ZmJkYmUyYjZlZDU4ZTFlMzRlMjNlN2UzYzFlMjk2YWM2ODVjYWNkZTFlYmUiLCJ0YWciOiIifQ==">
<input type="hidden" name="id">
<div class="form-group row  mb-3">
<label for="" class="col-md-3">Tên dịch vụ</label>
<div class="col-md-9">
<input type="text" class="form-control" name="name" readonly="">
</div>
</div>
<div class="form-group row mb-3">
<label for="" class="col-md-3">Số lượng</label>
<div class="col-md-9">
<input type="number" class="form-control" name="amount" onkeyup="if (!window.__cfRLUnblockHandlers) return false; bill();" placeholder="Nhập số lượng cần mua">
</div>
</div>
<div class="form-group row">
 <div class="col-sm-12 text-center">
<div class="alert text-white bg-success " role="alert">
<h5 class="font-bold">Tổng thanh toán: <span class="bold green"><span id="total_payment" class="text-danger">0</span> coin</span></h5>
</div>
</div>
</div>
<div class="d-grid gap-2">
<button type="submit" class="btn btn-primary" id="buy" order="Bạn có muốn thanh toán đơn hàng?, chúng tôi sẽ không hoàn tiền với đơn đã thanh toán."><img src="/img-pqn/nodata.svg" alt="" width="30" height="30"> Thanh
toán</button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
   <?php }?>
<?php require('../config/end.php');?>