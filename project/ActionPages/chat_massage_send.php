                          <?php
                          session_start();
                            include('backend.php');
                            $id=$_POST['id'];
                            $fri_de=fri_id($id);
                            $user=fri_detalis($email);
                            $fri_email=$fri_de['email'];
                            if(isset($_SESSION['time']))
                            {
                                 $sql="select  * from chat_data WHERE from_user in('$email','$fri_email') and to_fri in('$fri_email','$email') ORDER BY id DESC LIMIT 1";
                                 $s=mysqli_query($con,$sql);
                                 $t=mysqli_fetch_array($s);
                                 $time=$t['time'];
                                 if($_SESSION['time']==$time)
                                 {
                                    echo "1";
                                 }
                                 else
                                 {
                                    goto a;
                                 }
                             }
                            else
                             {
                                a:
                                   $sql="select  * from chat_data WHERE from_user in('$email','$fri_email') and to_fri in('$fri_email','$email') ORDER BY id DESC LIMIT 1";
                                     $s=mysqli_query($con,$sql);
                                     $t=mysqli_fetch_array($s);
                                    $time=$t['time'];
                                  $_SESSION['time']=$time; 
                                // $sql="update chat_with set time='$time' where user='$email' and friend='$fri_email'";
                                // mysqli_query($con,$sql);

                            $sql="select * from chat_data where from_user in('$email','$fri_email') and to_fri in('$fri_email','$email')";
                            if(mysqli_query($con,$sql))
                            {
                                $d=mysqli_query($con,$sql);
                            while($c=mysqli_fetch_array($d))
                            {
                            if($c['to_fri']!=$fri_email)
                            {
                                if($c['fri_status']==0)
                                {
                          ?>
                            <div class="del">
                                
                                     <input type="checkbox" >
                                </div>
                            <div class="d-flex justify-content-start mb-4">
                                 
                                <div class="img_cont_msg">
                                    <img src="../upload/user_pic/<?=$fri_de['user_pic']?>" class="rounded-circle user_img_msg">
                                </div>
                                <div class="msg_cotainer">
                                  <span onclick="document.getElementById('<?=$c['msg']?>').style.display='block'">
                                   <?php
                                    if($c['fri_delete_me']==$email)
                                    {
                                        
                                            echo "<i class='fa fa-trash'></i>".$c['fri_delete_val'];
                                    }
                                    else
                                    {   
                                       // echo "1".$c['msg'];
                                                 if($c['img']=='0')
                                                    {
                                                        echo $c['msg'];
                                                    }
                                                 else
                                                    {
                                                     $imageFileType = strtolower(pathinfo($c['img'],PATHINFO_EXTENSION)); 
                                                     if($imageFileType=='png'||$imageFileType=='jpg'||$imageFileType=='jpeg')
                                                        {
                                                            ?>
                                                            <div class="img_cont_msg1" id="upload">
                                                                 <img src="../upload/user_document/images/<?=$c['img']?>" class="img_cont_msg1">
                                                            </div>
                                                        <?php
                                                        }  
                                                    if($imageFileType=='mp4')
                                                        {
                                                         ?>
                                                            <div class="img_cont_msg1" id="upload">
                                                            <video  style="width: 100%;height: 100%;" controls>
                                                              <source src="../upload/user_document/videos/<?=$c['img']?>" type="video/mp4">
                                                              <source src="movie.ogg" type="video/ogg">
                                                              Your browser does not support the video tag.
                                                            </video>
                                                        </div>
                                                         <?php 
                                                           }
                                                    if($imageFileType=='pdf')
                                                            {
                                                            ?>
                                                        <div class="img_cont_msg1" id="upload">
                                                        <iframe src="../upload/user_document/pdf/<?=$c['img']?>" style="width: 100%;height: 100%;border: none;"></iframe>
                                                            </div>   
                                                        <?php
                                                         }
                                                    }
                                       

                                    }
                                  ?>
                                       </span>
                                    <span class="msg_time"><?=$c['time']?></span>
                                </div>
                            </div>
                            <div id="<?=$c['msg']?>" class="w3-modal" style="padding-top:230px;">
                                <div class="w3-modal-content w3-animate-left" style="width:300px;">
                                   <header class="w3-container w3-teal"> 
                                   <!-- <span onclick="document.getElementById('<?=$c['msg']?>').style.display='none'"   class="w3-button w3-display-topright">&times;</span>-->
                                    <h2>Delet Massage?</h2>
                                    </header>
                                    <div class="w3-container">
                                        <p align="center" onclick="delete_me('<?=$c['id']?>','<?=$c['from_user']?>');">  Delete for me</p>
                                        <p align="center" onclick="document.getElementById('<?=$c['msg']?>').style.display='none'">CANCEL</p>
                                     </div>
                                        <footer class="w3-container w3-teal">
                                        </footer>
                                </div>
                            </div>
                         </div>
                            <?php
                            }
                                }
                                else
                                {
                                     if($c['status']=='0')
                                        {
                            ?>

                                             <div class="del">
                                                
                                                     <input type="checkbox" >
                                                </div>
                                            <div class="d-flex justify-content-end mb-4">
                                               
                                                <div class="msg_cotainer_send">

                                                     <span  onclick="document.getElementById('<?=$c['msg']?>').style.display='block'"> 
                                                        <?php
                                                    if($c['delete_me']==$email)
                                                    {
                                                        echo "<i class='fa fa-trash'></i>".$c['delete_me_val'];
                                                    }
                                                    else
                                                    {
                                                      //  echo $c['msg'];
                                                     if($c['img']=='0')
                                                    {
                                                        echo $c['msg'];
                                                    }
                                                    else
                                                    {
                                                     $imageFileType = strtolower(pathinfo($c['img'],PATHINFO_EXTENSION)); 
                                                     if($imageFileType=='png'||$imageFileType=='jpg'||$imageFileType=='jpeg')
                                                        {
                                                            ?>
                                                            <div class="img_cont_msg1" id="upload">
                                                                 <img src="../upload/user_document/images/<?=$c['img']?>" class="img_cont_msg1">
                                                            </div>
                                                        <?php
                                                        }  
                                                    if($imageFileType=='mp4')
                                                        {
                                                         ?>
                                                            <div class="img_cont_msg1" id="upload">
                                                            <video  style="width: 100%;height: 100%;" controls>
                                                              <source src="../upload/user_document/videos/<?=$c['img']?>" type="video/mp4">
                                                              <source src="movie.ogg" type="video/ogg">
                                                              Your browser does not support the video tag.
                                                            </video>
                                                        </div>
                                                         <?php 
                                                           }
                                                    if($imageFileType=='pdf')
                                                            {
                                                            ?>
                                                        <div class="img_cont_msg1" id="upload">
                                                        <embed src="../upload/user_document/pdf/<?=$c['img']?>" style="width: 100%;height: 100%;border: none;" class="img_cont_msg1" ></embed>
                                                            </div>   
                                                        <?php
                                                         }
                                                    }
                                                    }
                                                  ?></span>
                                                    <span class="msg_time_send"> <?php
                                                    echo substr($c['time'],0,5).substr($c['time'],8,7);
                                                    ?></span>
                                                </div>
                                            
                                                    <img src="../upload/user_pic/<?=$user['user_pic']?>" class="rounded-circle user_img_msg">
                                                
                                            </div> 
                                            <div id="<?=$c['msg']?>" class="w3-modal" style="padding-top:230px;">
                                               <div class="w3-modal-content w3-animate-right" style="width:300px; ">
                                                   <header class="w3-container w3-teal">
                                                    <span onclick="document.getElementById('<?=$c['msg']?>').style.display='none'"   class="w3-button w3-display-topright">&times;</span>
                                                     <h2>Delete Massage?</h2>
                                                    </header>
                                                    <div class="w3-container">
                                                        <p align="center" onclick="delete_me('<?=$c['id']?>','<?=$c['from_user']?>');">Delete for me</p>
                                                        <p align="center" onclick="document.getElementById('<?=$c['msg']?>').style.display='none'">Cancel</p>
                                                        <?php
                                                            if($c['delete_me_val']=='0')
                                                            {
                                                        ?>
                                                        <p align="center" onclick="delete_ev('<?=$c['id']?>','<?=$c['from_user']?>','<?=$c['to_fri']?>');">Delete for everyone</p>
                                                        <?php
                                                    }?>
                                                    </div>
                                                        <footer class="w3-container w3-teal">
                                                            
                                                        </footer>
                                                </div>
                                            </div>
                                            <div id="<?=$c['msg']?>" class="w3-modal" style="padding-top:230px;">
                                <div class="w3-modal-content w3-animate-left" style="width:300px;">
                                   <header class="w3-container w3-teal"> 
                                   <!-- <span onclick="document.getElementById('<?=$c['msg']?>').style.display='none'"   class="w3-button w3-display-topright">&times;</span>-->
                                    <h2>Delet Massage?</h2>
                                    </header>
                                    <div class="w3-container">
                                        <p align="center" onclick="delete_me('<?=$c['id']?>','<?=$c['from_user']?>');">  Delete for me</p>
                                        <p align="center" onclick="document.getElementById('<?=$c['msg']?>').style.display='none'">CANCEL</p>
                                     </div>
                                        <footer class="w3-container w3-teal">
                                        </footer>
                                </div>
                            </div>
                                         </div>
                            <?php
                                        }
                            }
                             }
                         }
                     
                     else
                     {
                        echo "1";
                    }
                }
                            ?>

                                

