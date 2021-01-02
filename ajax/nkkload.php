<?php 
require_once '../connection.php';
// var_dump($_POST);
 $id = getListQuery("SELECT Id_kk,no_kk FROM kk ");
 				?>
									 <option value="">-- Pilih KK --</option>
									<?php
                                         # code...
                                        foreach ($id as $val):
                                    //         $pilih = '';
                                    // if (!isset($_POST['aksi'])) {
                                    //         if ($val['Id_kk']==$_POST['id']) {
                                    //             $pilih = 'selected';
                                    //         }
                                    //  } 
                                     ?>
                                      <option  value="<?=$val['Id_kk']?>"><?=$val['no_kk']."-"?><?=getListQuery("SELECT * FROM penduduk WHERE id_kk='".$val['Id_kk']."'")[0]['nama']?></option>
                                        <?php 
                                        endforeach; 

?>