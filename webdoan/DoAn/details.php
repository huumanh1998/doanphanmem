<?php
   include 'inc/header.php';
?>
<?php
	if(!isset($_GET['proid']) || $_GET['proid']==NULL){
       echo "<script>window.location ='404.php'</script>";
    }else{
         $id = $_GET['proid']; 
    }

 	$customer_id = Session::get('customer_id');
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['compare'])) {
       
       	$productid = $_POST['productid'];
        $insertCompare = $product->insertCompare($productid,$customer_id);
        
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wishlist'])) {
       
       	$productid = $_POST['productid'];
        $insertWishlist = $product->insertWishlist($productid,$customer_id);
        
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {

        $quantity = $_POST['quantity'];
        $insertCart = $ct->add_to_cart($quantity, $id);
        
    }
    if (isset($_POST['binhluan_submit'])){
    	$binhluan_insert =$cs->insert_binhluan();
    }

 ?>
 <div class="main">
    <div class="content">
    	<div class="section group">
    		<?php 
    		$get_product_details = $product->get_details($id);
    		if($get_product_details){
    			while($result_details = $get_product_details->fetch_assoc()){

    		?>
				<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<img src="admin/uploads/<?php echo $result_details['image'] ?>" alt="" />
					</div>
				<div class="desc span_3_of_2">
					<h2><?php echo $result_details['productName'] ?></h2>			
					<div class="price">
						<p>Giá bán: <span><?php echo $fm->format_currency($result_details['price'])." "."VNĐ" ?></span></p>
						<p>Danh mục:<span><?php echo $result_details['catName'] ?></span></p>
						<p>Thương hiệu:<span><?php echo $result_details['brandName'] ?></span></p>
					</div>
				<div class="add-cart">
					<form action="" method="post">
						<input type="number" class="buyfield" name="quantity" value="1" min="1"/>
						<input type="submit" class="buysubmit" name="submit" value="Đặt ngay"/>
						<?php 
							if(isset($insertCart)){
							echo $insertCart;
						}
						?>
					</form>	
					<div class="add-cart">
					<div class="button_details">
					<form action="" method="POST">
					
					<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>"/>
					<?php
					$login_check = Session::get('customer_login'); 
						if($login_check){
							echo '<input type="submit" class="buysubmit" name="compare" value="Thêm vào so sánh"/>'.'  ';
							
						}else{
							echo '';
						}	
					?>
					</form>
					<form action="" method="POST">
					<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>"/>
					<?php
					$login_check = Session::get('customer_login'); 
						if($login_check){
							
							echo '<input type="submit" class="buysubmit" name="wishlist" value="Thêm vào yêu thích">';
						}else{
							echo '';
						}	
					?>
					</form>
					</div>
					<div class="clear"></div>
					<p>
					<?php
					if(isset($insertCompare)){
						echo $insertCompare;
					}
					?>
					<?php
					if(isset($insertWishlist)){
						echo $insertWishlist;
					}
					?>
				</p>
				</div>
				</div>
			</div>
			<div class="product-desc">
			<h2>Thông tin chi tiết sản phẩm</h2>
			<p><?php echo $fm->textShorten($result_details['product_desc'],500) ?></p>
	    </div>
				
	</div>
			<?php 
			}
		}
			?>
				<div class="rightsidebar span_3_of_1">
					<h2>Lựa chọn</h2>
					<ul>
					<?php 
					$getall_category = $cat->show_category_fontend();
						if($getall_category){
							while($result_allcat = $getall_category->fetch_assoc()){
					?>
				     	 <li><a href="productbycat.php?catid=<?php echo $result_allcat['catId'] ?>"><?php echo $result_allcat['catName'] ?></a></li>
				    <?php
				    	}
					}
				    ?>
    				</ul>

    	
 				</div>
 		</div>
 	</div>
 	<div class="binhluan">
		<div class="row">

			<div class="col-md-8">
				<h2>Bình luận sản phẩm:</h2>
				<?php
				$id = Session::get('product_id');
				$get_comment = $cs->show_comment($id);
				if($get_comment){
					while($result = $get_comment->fetch_assoc()){
				?>
			<div class="showbinhluan">
			<h5><?php echo 'Tên:'.' '.' '.$result['tenbinhluan'] ?></h5>
			<h5><?php echo 'Tên sản phẩm:'.' '.' '.$result['tensanpham'] ?></h5>
			<h5><?php echo 'Bình luận:'.' '.' '.$result['binhluan'] ?></h5>
				<?php
					}
				}
				?>


			<?php
			if(isset($binhluan_insert)){
				echo $binhluan_insert;
			} 
			?>
			<form action="" method="POST">
				<p><input type="hidden" value="<?php echo $id ?>" name="product_id_binhluan"></p>
	 			<p><input type="text" placeholder="Điền tên" class="form-control" name="tennguoibinhluan"></p>
	 			<p><input type="text" placeholder="Điền tên sản phẩm" class="form-control" name="tencuasanpham"></p>
	 			<p><textarea rows="5" style="resize: none;" placeholder="Bình luận...." class="form-control" name="binhluan"></textarea></p>
	 			<p><input type="submit" name="binhluan_submit" class="btn btn-success" value="Gửi bình luận"></p>
 			</form>
 			</div>
 			</div>		
 		</div>

</div>
 
<?php
   include 'inc/footer.php';
?>