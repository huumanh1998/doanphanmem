<?php
   include 'inc/header.php';
?>

 <div class="main">
    <div class="content">
    	<div class="section group">
				<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<img src="images/note10.jpg" alt="" />
					</div>
				<div class="desc span_3_of_2">
					<h2>Samsung Galaxy S20 </h2>
					 <h2>Samsung Galaxy Note 10 Lite </h2>
					 <p>Màn hình:6.7", Super AMOLED Full HD+, Chip Exynos 9810 8 nhân, Ram:8GB & Rom:128GB, Camera sau:3 Camera 12MP, Camera trước:32MP, Pin:4500 mAh có sạc nhanh.</p>	
					<div class="price">
						<p>Giá bán: <span>14.490.000đ</span></p>
						<p>Thương hiệu:<span>Samsnumg</span></p>
					</div>
				<div class="add-cart">
					<form action="cart.php" method="post">
						<input type="number" class="buyfield" name="" value="1"/>
						<input type="submit" class="buysubmit" name="submit" value="Đặt ngay"/>
					</form>				
				</div>
			</div>
			<div class="product-desc">
			<h2>Thông tin chi tiết sản phẩm</h2>
			<p>Màn hình:Chính: Supper AMOLED 2X, 6,7", Full HD+</p>
			<p>Hệ điều hành: Android 10</p>
			<p>Camera sau: 3 Camera 12MP </p>
			<p>Camera trước: 32MP</p>
			<p>CPU:Exynos 990 8 nhân</p>
			<p>Ram: 8GB</p>
			<p>Bộ nhớ trong: 128GB</p>
			<p>Thẻ nhớ: MicroSD, hỗ trợ tối đa 512TB</p>
			<p>Thẻ sim: 2 Nano Sim (Sim 2 chung khe cắm thẻ nhớ), hỗ trợ 4G</p>
			<p>Dung lượng pin: 4500 mAh, có sạc nhanh</p>
	    </div>
				
	</div>
				<div class="rightsidebar span_3_of_1">
					<h2>Lựa chọn</h2>
					<ul>
				      <li><a href="productbycat.php">Điện thoại Iphone</a></li>
				      <li><a href="productbycat2.php">Điện thoại Samsung</a></li>
				      <li><a href="productbycat3.php">Điện thoại Sony</a></li>
				      <li><a href="productbycat4.php">Điện thoại Oppo</a></li>
    				</ul>
    	
 				</div>
 		</div>
 	</div>
</div>
  
<?php
   include 'inc/footer.php';
?>