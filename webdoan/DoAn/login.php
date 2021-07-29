<?php
   include 'inc/header.php';
?>
<?php
		   	$login_check = Session::get('customer_login');
		   	if($login_check){
		   		header('Location:order.php');
		   	}	   	
?>
<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
       
       
        $insertCustomers = $cs->insert_customers($_POST);
        
    }
?>
<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
       
       
        $login_Customers = $cs->login_customers($_POST);
        
    }
?>
 <div class="main">
    <div class="content">
    	 <div class="login_panel">
        	<h3>Khách hàng</h3>
        	<p>Đăng nhập bằng biểu mẫu bên dưới.</p>
        	<?php
			if(isset($login_Customers)){
    			echo $login_Customers;
    		}
        	 ?>
        	<form action="" method="POST">
                	<input  type="text" name="email" class="field" placeholder="Nhập email...">
                    <input  type="password" name="password" class="field" placeholder="Nhập mật khẩu...">
                
                 <p class="note">Nếu bạn quên mật khẩu,nhấp vào <a href="#">đây</a></p>
                    <div class="buttons"><div><input type="submit" name="login" class="grey" value="Đăng nhập"></div></div>
                    </div>
             </form>
    	<div class="register_account">
    		<h3>Đăng ký tài khoản mới</h3>
    		<?php 
    		if(isset($insertCustomers)){
    			echo $insertCustomers;
    		}
    		?>
    		<form action=""method="POST">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Nhập Tên...">
							</div>
							
							<div>
							   <input type="text" name="city" placeholder="Nhập Thành phố..." >
							</div>
							
							<div>
								<input type="text" name="zipcode" placeholder="Nhập Zip-Code..." >
							</div>
							<div>
								<input type="text" name="email" placeholder="Nhập E-Mail...">
							</div>
		    			 </td>
		    			<td>
						<div>
							<input type="text" name="address" placeholder="Nhập Địa chỉ...">
						</div>
		    		<div>
						<select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Chọn Quốc gia</option>         
							<option value="VN">Việt Nam</option>
							<option value="HQ">Hàn Quốc</option>
							<option value="MY">Mỹ</option>
							<option value="TQ">Trung Quốc</option>
							

		         </select>
				 </div>		        
	
		           <div>
		          <input type="text" name="phone" placeholder="Nhập số điện thoại...">
		          </div>
				  
				  <div>
					<input type="text" name="password" placeholder="Nhập mật khẩu...">
				</div>
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search">
		   	
		   	<div><input type="submit" name="submit" class="grey" value="Đăng ký"></div>

		   </div>
		    <p class="terms">Bạn đồng ý với <a href="#">Điều khoản &amp; Điều kiện</a>.</p>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php
   include 'inc/footer.php';
?>
