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
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="card-header">
                            </div>
                            <div class="card-body">
                              <form submit-ajax="NTD" action="<?=BASE_URL('api/admin/setting/website');?>" method="post" api_token="<?=$NTD->getUsers('token');?>">
                                    <input type="hidden" name="action" value="set_add_bank">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <center><label class="form-label" for="">T??n ch??? t??i kho???n</label></center>
                                                <input  type="text" rows="5" cols="50" class="form-control" name="tentaikhoan" placeholder=" Nh???p t??n ch??? t??i kho???n"></input>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <center><label class="form-label" for="">S??? t??i kho???n</label></center>
                                                <input  type="text" rows="5" cols="50" class="form-control" name="sotaikhoan" placeholder=" Nh???p s??? t??i kho???n"></input>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <center><label class="form-label" for="">N???p t???i thi???u</label></center>
                                                <input  type="text" rows="5" cols="50" class="form-control" name="naptoithieu" placeholder=" Nh???p s??? ti???n n???p t???i thi???u"></input>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <center><label class="form-label" for="">Logo ng??n h??ng</label></center>
                                                <input  type="text" rows="5" cols="50" class="form-control" name="logobank" placeholder=" Nh???p link logo ng??n h??ng"></input>
                                            </div>
                                        </div>
                                        <div class="col-md-4 mr-auto ml-auto pt-3">
                                            <button type="submit" class="btn btn-primary btn-block">Th??m ngay <em class="fa fa-paper-plane"></em></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
  <div class="row">
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="card-header">
                            </div>
                            <div class="card-body">
                                
                                 <form submit-ajax="NTD" action="<?=BASE_URL('api/admin/setting/website');?>" method="post" api_token="<?=$NTD->getUsers('token');?>">
                                    <input type="hidden" name="action" value="set_napthe">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Site n???p th???</label>
                                                <select class="form-control" name="sitenapthe">
                                                    <option value="<?=$NTD->site('site_napthe');?>"><?=sitenapthe($NTD->site('site_napthe'));?></option>
                                                     <option value="gachthe1s">GACHTHE1S</option>
                                                     <option value="trumgachthe">TRUMGACHTHE</option>
                                                     <option value="theviet">THEVIET</option>
                                                    <option value="thesieure">THESIEURE</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">C?? ph??p n???p ti???n:</label>
                                                <input type="text" class="form-control" value="<?=$NTD->site('cuphap');?>" name="cuphapnap" placeholder="Nh???p c?? ph??p n???p ti???n">
                                            </div>
                                        </div>
                                      
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Partner KEY:</label>
                                                <input type="text" class="form-control" name="PartnerKEY" value="<?=$NTD->site('partner_key');?>" require>
                                            </div>
                                        </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Partner ID (n???u c??):</label>
                                                <input type="text" class="form-control" name="PartnerID" value="<?=$NTD->site('partner_id');?>" require>
                                            </div>
                                        </div>
                                         <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-label" for="">Link CallBack:</label>
                                                <input type="text" class="form-control"  value="https://<?=$_SERVER['SERVER_NAME']?>/callback/callback_<?=$NTD->site('site_napthe');?>.php" require>
                                            </div>
                                        </div>
                                        <div class="col-md-4 mr-auto ml-auto pt-3">
                                            <button type="submit" class="btn btn-primary btn-block"><em class="fa fa-paper-plane"></em> C???p nh???t</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="card-body">
                                   <h6 class="card-title mb-3">Auto n???p bank qua <a href="https://botsms.net/"> botsms.net</a></h6>
                            </div>
                            <div class="card-body">
                                
                                <form submit-ajax="NTD" action="<?=BASE_URL('api/admin/setting/website');?>" method="post" api_token="<?=$NTD->getUsers('token');?>">
                                    <input type="hidden" name="action" value="set_auto_bank">
                                    <div class="row">
                                           <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">N???p Khuy???n M???i %:</label>
                                                <input type="text" class="form-control" name="nap_km_bank" value="<?=$NTD->site('nap_km_bank');?>" require>
                                            </div>
                                        </div>
                                    
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">M?? B???o M???t:</label>
                                                <input type="text" class="form-control" name="api_automm" value="<?=$NTD->site('api_automm');?>" require>
                                            </div>
                                        </div>
                                            <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-label" for="">Link CallBack:</label>
                                                <input type="text" class="form-control" name="callback_momo" value="https://<?=$_SERVER['SERVER_NAME']?>/callback/callback_bank.php" require>
                                            </div>
                                        </div>
                                        <div class="col-md-4 mr-auto ml-auto pt-3">
                                            <button type="submit" class="btn btn-primary btn-block"><em class="fa fa-paper-plane"></em> C???p nh???t</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h6 class="card-title mb-3">Danh s??ch bank</h6>
                                <div class="table-responsive scrollbar">
                                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper no-footer">
                                        <table class="table table-bordered table-striped fs--1 mb-3 dataTables-NTD dataTable no-footer" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
                                            <thead class="bg-200 text-900">
                                                <tr role="row">
                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="#: activate to sort column ascending" style="width: 58.8438px;">#</th>
                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="T??n ch??? t??i kho???n: activate to sort column ascending" style="width: 162.031px;">T??n ch??? t??i kho???n</th>
                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="S??? t??i kho???n: activate to sort column ascending" style="width: 193.031px;">S??? t??i kho???n</th>
                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="???nh demo: activate to sort column ascending" style="width: 96.0781px;">???nh demo</th>
                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Thao t??c: activate to sort column ascending" style="width: 148.969px;">Thao t??c</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $getlistcard = $NTD->get_list("SELECT * FROM `bank` WHERE `status` = '1'  AND  `url_config` = '".$url_site_name."' ORDER BY `id` DESC "); if($getlistcard){ foreach($getlistcard as $rowucard){?>
                                                <tr class="odd">
                                                    <td><?=$rowucard['id']?></td>
                                                    <td><?=$rowucard['namectk']?></td>
                                                    <td><?=$rowucard['namestk']?></td>
                                                    <td><img src="<?=$rowucard['img']?>" height="45px"></td>
                                                    <td>
                                                         <form submit-ajax="NTD" action="<?=BASE_URL('api/admin/setting/website');?>" method="post" api_token="<?=$NTD->getUsers('token');?>">
                                    <input type="hidden" name="action" value="set_xoa_bank">
                                    <input type="hidden" name="idbank" value="<?=$rowucard['id']?>">
                                                        <button type="submit" class="btn btn-danger btn-sm">X??a</button>
                                                        </form>
                                                        
                                                        </td>
                                                </tr>
                                                <?php }}else{?>
                                                <tr class="odd">
                                                    <td valign="top" colspan="6" class="dataTables_empty">
                                                        <center>Kh??ng c?? d??? li???u ????? hi???n th???</center>
                                                    </td>
                                                </tr>
                                                <?php }?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php
require('foot.php'); 

?>