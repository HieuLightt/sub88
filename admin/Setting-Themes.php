<?php
require('head.php'); 
require('nav.php'); 
?>

<?php if($NTD->getUsers('capbac') !== '99'){
                      header('Location: /404');exit;
                        }?>
                         <?php
                $total_money = $NTD->get_row("SELECT SUM(`money`) FROM `users` WHERE `money` >= 0  AND  `url_config` = '".$url_site_name."' ") ['SUM(`money`)']; 
                
                $total_thanhvien = $NTD->get_row("SELECT COUNT(*) FROM `users`  WHERE  `url_config` = '".$url_site_name."'") ['COUNT(*)'];
                
                
                $total_nap = $NTD->get_row("SELECT SUM(`tongnap`) FROM `users` WHERE `tongnap` >= 0 AND  `url_config` = '".$url_site_name."' ") ['SUM(`tongnap`)']; 
                
                
                $total_tru = $NTD->get_row("SELECT SUM(`tongtru`) FROM `users` WHERE `tongtru` >= 0  AND  `url_config` = '".$url_site_name."'  ") ['SUM(`tongtru`)']; 
                
                
                 $total_card = $NTD->get_row("SELECT COUNT(*) FROM `history_naptien` WHERE  `url_config` = '".$url_site_name."' ") ['COUNT(*)'];
                
                 $total_don = $NTD->get_row("SELECT COUNT(*) FROM `history_buy`  WHERE  `url_config` = '".$url_site_name."'") ['COUNT(*)'];
                
                ?>
  <!-- Content Wrapper. Contains page content -->
 
 <div class="row">
                   <style>
                       .text-ntd{
                           color:#695e5d;
                       }
                   </style>
                    <div class="col-md-12 card mb-3">
                      
                      
                        
                            <div class="card-body">
                                
                               <form submit-ajax="NTD" action="<?=BASE_URL('api/admin/setting/website');?>" method="post" api_token="<?=$NTD->getUsers('token');?>">
            <input type="hidden" name="action" value="set_themes">
                                  <div class="col-md-12 row">   
                                 
                                                  
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Themes Login <i class="fa fa-sign-in" ></i></label>
                                                 <select class="form-control show-tick" name="theme_login" required="">

<option value="<?=$NTD->site('theme_login');?>">Giao Diện Số <?=$NTD->site('theme_login');?></option>

<option value="1">Themes Login 1</option>
<option value="2">Themes Login 2</option>
<option value="3">Themes Login 3</option>
<option value="4">Themes Login 4</option>
<option value="rand">Random Themes</option>

</select>
                                               
                                            </div>
                                        </div>  
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Themes Landing <i class="fa fa-newspaper-o" ></i></label>
                                                 <select class="form-control show-tick" name="theme_landing" required="">

<option value="<?=$NTD->site('theme_landing');?>">Giao Diện Số <?=$NTD->site('theme_landing');?></option>

<option value="1">Themes Landing 1</option>
<option value="2">Themes Landing 2</option>
<option value="3">Themes Landing 3</option>
<option value="4">Themes Landing 4</option>
<option value="5">Themes Landing 5</option>
<option value="rand">Random Themes</option>
</select>
                                               
                                            </div>
                                        </div>  
                                        
                                          <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-label" for="">Màu Header</label>
                                               <input name="bg_header_site" class="form-control" type="color" value="<?=$NTD->site('bg_header_site');?>">
                                               
                                            </div>
                                        </div>  
                                          <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-label" for="">Màu Navbar</label>
                                               <input name="bg_navbar_site" class="form-control" type="color" value="<?=$NTD->site('bg_navbar_site');?>">
                                               
                                            </div>
                                        </div>  
                                          <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-label" for="">Màu Icon Header</label>
                                               <input name="icon_color_site" class="form-control" type="color" value="<?=$NTD->site('icon_color_site');?>">
                                               
                                            </div>
                                        </div>  
                                          <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-label" for="">Màu Text</label>
                                               <input name="text_color_site" class="form-control" type="color" value="<?=$NTD->site('text_color_site');?>">
                                               
                                            </div>
                                        </div>  
                                          
                                        </div>
                                        
                        
                                        
                                             
                                        
                                        
                                        
                                        
                                     
                               
                             
                                        

                                        <div class="col-md-12 mr-auto ml-auto pt-3">
                                            <button type="submit" class="btn btn-primary btn-block"><em class="fa fa-paper-plane"></em> Cập nhật</button>
                                        </div>
                                        
                                    </div>
                                </form>
                            </div>
                        
                    </div>
                </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php
require('foot.php'); 

?>