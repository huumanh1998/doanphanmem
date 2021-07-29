<?php
   include 'inc/header.php';
?>
<?php
if (isset($_POST['contact_submit'])){
    	$contact_insert =$cs->insert_contact();
    }

 ?>
 <div class="main">
    <div class="content">
    	<div class="support">
  			<div class="support_desc">
  				<h3>Hỗ trợ trực tiếp</h3>
  				<p><span>24 giờ | 7 ngày trên tuần | 365 ngày trong năm &nbsp;&nbsp; Hỗ trợ kỹ thuật trực tiếp</span></p>
  				<p>Chúng tôi không chỉ mang đến những sản phẩm có chất lượng tốt, mà còn mang đến cho người dùng những trải nghiệm tốt nhất về sản phẩm. Với những chính sách hỗ trợ sản phẩm cũng như hỗ trợ kỹ thuật 24/7 cho khách hàng. Hãy đến với đội ngũ hỗ trợ kỹ thuật chu đáo và trách nhiệm của K Store. </p>
  			</div>
  				<img src="web/images/contact.png" alt="" />
  			<div class="clear"></div>
  		</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
					<h2>Liên hệ</h2>
					<?php
					if(isset($contact_insert)){
						echo $contact_insert;
					} 
					?>
					<form action="" method="POST">
						<p><input type="hidden" value="<?php echo $id ?>" name="contact_id"></p>
						<span><label>TÊN</label></span>
						<span><p><input type="text" placeholder="Điền tên" class="form-control" name="contact_name"></p></span>
			 			<span><label>E-MAIL</label></span>
						<span><p><input type="text" placeholder="Điền email" class="form-control" name="contact_email"></p></span>
						<span><label>SĐT</label></span>
						<span><p><input type="text" placeholder="Điền số điện thoại" class="form-control" name="contact_phone"></p></span>
						<span><label>Ý KIẾN</label></span>
						<span><p><input type="text" placeholder="Điền ý kiến" class="form-control" name="contact_desc"></p></span>
			 			<p><input type="submit" name="contact_submit" class="btn btn-success" value="Gửi"></p>
		 			</form>
				  </div>
  				</div>
				<div class="col span_1_of_3">
      			<div class="company_address">
				     	<h2>Thông tin cửa hàng :</h2>
						    	<p>233 Phạm Văn Đồng,</p>
						   		<p>Phường Lê Lợi, Kon Tum,</p>
						   		<p>Việt Nam</p>
				   		<p>Phone:(+84) 397 052 760</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span>huumanh.edu@gmail.com</span></p>
				   		<p>Follow on: <span>Facebook </span>, <span>Twitter</span></p>
				   </div>
				 </div>
			  </div>    	
    </div>
 </div>
<?php
   include 'inc/footer.php';
?>