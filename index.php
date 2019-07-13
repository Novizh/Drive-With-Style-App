<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/1.jpg" alt="Image">
        
      </div>

      <div class="item">
        <img src="images/3.jpg" alt="Image">      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-8">
      <?php
		       			
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("
						    	SELECT p.name AS pname, c.name AS cname, p.photo AS pphoto, p.price AS pprice, p.slug AS pslug
						    	FROM products AS p INNER JOIN category AS c ON c.id = p.category_id ORDER BY RAND() LIMIT 3;");
						    $stmt->execute();
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['pphoto'])) ? 'images/'.$row['pphoto'] : 'images/noimage.jpg';
						    	$category_id = $row['cname'];
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<h5 class='page-header'>".$category_id."</h5>
			       									<img src='".$image."' width='100%' height='180px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['pslug']."'>".$row['pname']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['pprice'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		?> 
	        	</div>
    <div class="col-sm-4">
      <?php include 'includes/sidebar.php'; ?>
    </div>
    <div class="row" id="aboutus">
    <div class="col-sm-12">
    		<div class="box box-solid">
    			<h1 class="page-header"><b> ABOUT US </b></h1>
    			<h4>Drive with Style Auto Workshop adalah sebuah startup digital dimana kami akan menjalankan bisnis bengkel custom terintegrasi internet yang berperan sebagai platform untuk menjembatani dua pihak, yaitu: <br> 1. Peminat modifikasi mobil, <br> 2. Penjual barang dan jasa modifikasi mobil</h4>
    			<br>
    		</div>
    </div>
    </div>
    <div class="row" id="contactus">
    <div class="col-sm-12">
    		<div class="box box-solid">
    			<h1 class="page-header"><b> CONTACT US </b></h1>
    			<h2><i class="fa fa-phone-square"></i> 021-943-5442</h2>
    			<h2><i class="fa fa-envelope-o"></i> drivewithstyle100@gmail.com</h2><br>
    		</div>
    </div>
    </div>
    
  </div>
</div>    
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>