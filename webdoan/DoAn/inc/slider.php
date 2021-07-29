	<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php 
				$getLastestIphone = $product->getLastestIphone();
				if($getLastestIphone){
					while($resultiphone = $getLastestIphone->fetch_assoc()){
				?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultiphone['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Iphone</h2>
						<p><?php echo $resultiphone['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultiphone['productId']  ?>">Thêm vào</a></span></div>
				   </div>
			   </div>	
			   <?php 
				}
				}
			   ?>
			   <?php 
				$getLastestSS = $product->getLastestSamsung();
				if($getLastestSS){
					while($resultss = $getLastestSS->fetch_assoc()){
				?>		
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="details.php"><img src="admin/uploads/<?php echo $resultss['image'] ?>" alt="" / ></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>Samsung</h2>
						  <p><?php echo $resultss['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultss['productId']  ?>">Thêm vào</a></span></div>
					</div>
				</div>
				<?php 
				}
				}
			   ?>
			</div>
			<div class="section group">
				<?php 
				$getLastestSN = $product->getLastestSony();
				if($getLastestSN){
					while($resultsn = $getLastestSN->fetch_assoc()){
				?>	
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultsn['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Sony</h2>
						<p><?php echo $resultsn['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultsn['productId']  ?>">Thêm vào</a></span></div>
				   </div>
			   </div>
			   <?php 
				}
				}
			   ?>
			   <?php 
				$getLastestOP = $product->getLastestOppo();
				if($getLastestOP){
					while($resultop = $getLastestOP->fetch_assoc()){
				?>			
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="details.php"><img src="admin/uploads/<?php echo $resultop['image'] ?>" alt=""  /></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>Oppo</h2>
						 <p><?php echo $resultop['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultop['productId']  ?>">Thêm vào</a></span></div>
					</div>
				</div>
				 <?php 
				}
				}
			   ?>
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right_images">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<?php 
						$get_slider = $product->show_slider();
						if($get_slider){
							while($result_slider = $get_slider->fetch_assoc()){
						
						?>
						<li><img src="admin/uploads/<?php echo $result_slider['slider_image'] ?>" alt="<?php echo $result_slider['sliderName']?>"/></li>
						<?php
							}
						}
						?>
				    </ul>
				  </div>
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
  </div>