<?php
   include 'inc/header.php';
?>

 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Iphone</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
				<?php 
				$getLastestIphone = $product->getLastestIphonepro();
				if($getLastestIphone){
					while($resultiphone = $getLastestIphone->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $resultiphone["image"] ?>" alt="" /></a>
					 <h2><?php echo $resultiphone["productName"] ?></h2>
					 <!-- <p><?php echo $fm->textShorten($resultiphone["product_desc"], 350) ?></p> -->
					 <p><span class="price"><?php echo $fm->format_currency($resultiphone["price"])." "."VND" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $resultiphone['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php 
				} 
			}
				?>
			</div>
		<div class="content_bottom">
    		<div class="heading">
    		<h3>Samsung</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php 
				$getLastestSS = $product->getLastestSamsungpro();
				if($getLastestSS){
					while($resultss = $getLastestSS->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $resultss["image"] ?>" alt="" /></a>
					 <h2><?php echo $resultss["productName"] ?></h2>
					 <!-- <p><?php echo $fm->textShorten($resultss["product_desc"], 350) ?></p> -->
					 <p><span class="price"><?php echo $fm->format_currency($resultss["price"])." "."VND" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $resultss['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php 
				} 
				}
				?>
					
				
			</div>
	<div class="content_bottom">
    		<div class="heading">
    		<h3>Sony</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php 
				$getLastestSN = $product->getLastestSonypro();
				if($getLastestSN){
					while($resultsn = $getLastestSN->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $resultsn["image"] ?>" alt="" /></a>
					 <h2><?php echo $resultsn["productName"] ?></h2>
					 <!-- <p><?php echo $fm->textShorten($resultsn["product_desc"], 350) ?></p> -->
					 <p><span class="price"><?php echo $fm->format_currency($resultsn["price"])." "."VND" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $resultsn['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php 
				} 
			}
				?>
				
			</div>
    </div>
 </div>
</div>
<?php
   include 'inc/footer.php';
?>