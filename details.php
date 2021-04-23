<?php

    $active='Cart';
	include("includes/header.php");

?>

<?php 

if(isset($_GET['pro_id'])){
    
    $product_id = $_GET['pro_id'];
    
    $get_product = "select * from product where product_id='$product_id'";
    
    $run_product = mysqli_query($con,$get_product);
    
    $row_products = mysqli_fetch_array($run_product);
    
    $p_cat_id = $row_products['p_cat_id'];
    
    $pro_title = $row_products['product_title'];
    
    $pro_price = $row_products['product_price'];

    $pro_sale_price = $row_products['product_sale'];
    
    $pro_desc = $row_products['product_desc'];
    
    $pro_img1 = $row_products['product_img1'];
    
    $pro_img2 = $row_products['product_img2'];
    
    $pro_img3 = $row_products['product_img3'];
    
    $get_p_cat = "select * from product_categories where p_cat_id='$p_cat_id'";
    
    $run_p_cat = mysqli_query($con,$get_p_cat);
    
    $row_p_cat = mysqli_fetch_array($run_p_cat);
    
    $p_cat_title = $row_p_cat['p_cat_title'];

    $pro_label = $row_products['product_label'];
       

        if($pro_label == ""){

        } else {

            $product_label = "
            
                <a href='#' class='label $pro_label' >

                    <div class='theLabel'> $pro_label </div>
                    <div class='labelBackground'> </div>
            
                </a>
            
            
            ";

        }

    
}




?>

<div id="content"> <!-- content Begin -->
    <div class="container"> <!-- container Begin -->
        <div class="col-md-12"> <!-- col-md-12 Begin -->

        <ul class="breadcrumb"> <!-- breadcrumb Begin -->
            <li>
                <a href="index.php">Home </a>
            </li>
            <li>
                Categories
            </li>

            <li>
                <a href="shop.php?p_cat=<?php echo $p_cat_id; ?>"><?php echo $p_cat_title; ?></a>
            </li>

            <li> <?php echo $pro_title; ?> </li>

        </ul> <!-- breadcrumb Finish -->


        </div> <!-- col-md-12 Finish -->

        <div class="col-md-3"> <!-- col-md-3 Begin -->
        

    

        </div> <!-- col-md-3 Finish -->

        <div class="col-md-12"> <!-- col-md-9 Begin -->
            <div id="productMain" class="row"> <!-- row Begin -->
                <div class="col-sm-6"> <!-- col-sm-6 Begin -->
                    <div id="mainImage"> <!-- mainImage Begin -->
                        <div id="myCarousel" class="carousel slide" data-ride="carousel"> <!-- carousel slide Begin -->
                            <ol class="carousel-indicators"> <!-- carousel-indicators Begin -->
                                <li data-target="#myCarousel" data-slide-to="0"class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol> <!-- carousel-indicators Finish -->

                            <div class="carousel-inner">
                                <div class="item active">
                                    <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="image 1">
                                </center>
                                </div>
                                <div class="item">
                                    <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img2; ?>" alt="image 2">
                                </center>
                                </div>
                                <div class="item">
                                    <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img3; ?>" alt="image 3">
                                </center>
                                </div>
                            </div>

                            <a href="#myCarousel" class="left carousel-control" data-slide="prev"> <!-- left carousel-control Begin -->
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                            </a> <!-- left carousel-control Finish -->
                        

                            <a href="#myCarousel" class="right carousel-control" data-slide="next"> <!-- right carousel-control Begin -->
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                <span class="sr-only">Next</span>
                            </a> <!-- right carousel-control Finish -->

                        </div> <!-- carousel slide Finish -->
                    </div> <!-- mainImage Finish -->

                        <?php echo $product_label; ?>

                </div> <!-- col-sm-6 Finish -->

                <div class="col-sm-6"> <!-- col-sm-6 Begin -->
                    <div class="box"> <!-- box Begin -->
                        <h1 class="text-center"><?php echo $pro_title; ?></h1>

                        <?php add_cart(); ?>

                            <form action="details.php?add_cart=<?php echo $product_id; ?>" class="form-horizontal" method="post"> <!-- form-horizontal Begin -->
                                <div class="form-group"> <!-- form-group Begin -->
                                    <label for="" class="col-md-5 control-label">Products Quantity</label>

                                    <div class="col-md-7"> <!-- col-md-7 Begin -->
                                        <select name="product_qty" id="" class="form-control"> <!-- select Begin -->
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select> <!-- select Finish -->
                                    </div> <!-- col-md-7 Finish -->

                                </div> <!-- form-group Finish -->

                                <div class="form-group"><!-- form-group Begin -->
                                   <label class="col-md-5 control-label">Product Size</label>
                                   
                                   <div class="col-md-7"><!-- col-md-7 Begin -->
                                       
                                   <select name="product_size" class="form-control" required><!-- form-control Begin -->
                                          
                                           <option value="">Select a Size</option>
                                           <option value ="Small">Small</option>
                                           <option value ="Medium">Medium</option>
                                           <option value ="Large">Large</option>
                                           
                                       </select><!-- form-control Finish -->
                                       
                                   </div><!-- col-md-7 Finish -->
                               </div><!-- form-group Finish -->

                                <?php 

                                    if($pro_label == "sale"){

                                        echo "

                                            <p class='price'>

                                                PRICE: <del> Rs.$pro_price </del>

                                                SALE:  Rs.$pro_sale_price 

                                            </p>

                                    ";

                                    } else {

                                        echo "

                                            <p class='price'>

                                                PRICE: Rs.$pro_price 


                                            </p>

                                            ";

                                    }

                                ?>

                                

                                <p class="text-center buttons"><button class="btn btn-primary i fa fa-shopping-cart"> Add to cart</button></p>

                            </form> <!-- form-horizontal Finish -->

                    </div> <!-- box Finish -->

                    <!-- Small Size images --> 

                    <div class="row" id="thumbs"> <!-- row Begin -->

                        <div class="col-xs-4"> <!-- col-xs-4 Begin -->
                            <a data-target="#myCarousel" data-slide-to="0" href="#" class="thumb"> <!-- thumb Begin -->
                                <img src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="" class="img-responsive">
                            </a> <!-- thumb Finish -->
                        </div> <!-- col-xs-4 Finish -->

                        <div class="col-xs-4"> <!-- col-xs-4 Begin -->
                            <a data-target="#myCarousel" data-slide-to="1" href="#" class="thumb"> <!-- thumb Begin -->
                                <img src="admin_area/product_images/<?php echo $pro_img2; ?>" alt="" class="img-responsive">
                            </a> <!-- thumb Finish -->
                        </div> <!-- col-xs-4 Finish -->

                        <div class="col-xs-4"> <!-- col-xs-4 Begin -->
                            <a data-target="#myCarousel" data-slide-to="2" href="#" class="thumb"> <!-- thumb Begin -->
                                <img src="admin_area/product_images/<?php echo $pro_img3; ?>" alt="" class="img-responsive">
                            </a> <!-- thumb Finish -->
                        </div> <!-- col-xs-4 Finish -->


                    </div> <!-- row Finish -->


                </div> <!-- col-sm-6 Finish -->

            </div> <!-- row Finish -->

                <div class="box" id="details"> <!-- box Begin -->

                    <h4>Product Details</h4>
                <p>

                <?php echo $pro_desc; ?>

                </p>

                    <h4>Size</h4>

                    <ul>
                        <li>Small</li>
                        <li>Medium</li>
                        <li>Large</li>
                    </ul>

                    <hr>

                </div> <!-- box Finish -->

                <!-- Products You Maybe Like -->

                <div id="row same-heigh-row"> <!-- row same-heigh-row Begin -->
                    <div class="col-md-3 col-sm-6"> <!-- col-md-3 col-sm-6 Begin -->
                        <div class="box same-height headline"> <!-- box same-height headline Begin -->
                            <h3 class="text-center">Products You Maybe Like</h3>
                        </div> <!-- box same-height headline Finish -->
                    </div> <!-- col-md-3 col-sm-6 Finish -->

                    <?php 
                    
                    $get_products = "select * from product order by rand() LIMIT 0,3";
                    
                    $run_products = mysqli_query($con,$get_products);

                    while($row_products=mysqli_fetch_array($run_products)){

                        $pro_id = $row_products['product_id'];
                
                        $pro_title = $row_products['product_title'];
                
                        $pro_price = $row_products['product_price'];
                
                        $pro_sale_price = $row_products['product_sale'];
                
                        $pro_img1 = $row_products['product_img1'];
                
                        $pro_label = $row_products['product_label'];
                
                
                        if($pro_label == "sale"){
                
                            $product_price = "<del> Rs $pro_price </del>";
                
                            $product_sale_price = " | Rs $pro_sale_price";
                
                        } else {
                
                            $product_price = " Rs $pro_price ";
                
                            $product_sale_price = "";
                
                        }
                       
                
                        if($pro_label == ""){
                
                        } else {
                
                            $product_label = "
                            
                                <a href='#' class='label $pro_label' >
                
                                    <div class='theLabel'> $pro_label </div>
                                    <div class='labelBackground'> </div>
                            
                                </a>
                            
                            
                            ";
                
                        }
                
                        echo "
                        
                        <div class='col-md-3 col-sm-6 center-responsive'>
                        
                            <div class='product'>
                            
                                <a href='details.php?pro_id=$pro_id'>
                                
                                    <img  class='img-responsive' src='admin_area/product_images/$pro_img1'>
                                
                                </a>
                
                                <div class='text'>
                                
                                    <h3>
                            
                                        <a href='details.php?pro_id=$pro_id'>
                                    
                                            $pro_title
                                    
                                        </a>
                
                                    </h3>
                
                                    <p class='price'>
                
                                        $product_price &nbsp;$product_sale_price
                
                                    </p>
                
                                    <p class='button'>
                
                                        <a class= 'btn btn-default' href='details.php?pro_id=$pro_id'>
                                    
                                            View Details
                            
                                        </a>
                                        <a class= 'btn btn-primary' href='details.php?pro_id=$pro_id'>
                                    
                                            <i class='fa fa-shopping-cart'></i> Add to Cart
                            
                                        </a>
                
                                    </p>
                                
                                </div>
                
                                $product_label
                            
                            </div>
                        
                        </div>
                        
                        ";
                
                    }
                    ?>
                
                </div> <!-- row same-heigh-row Finish -->

        </div> <!-- col-md-9 Finish -->

    </div> <!-- container Finish -->
</div> <!-- content Finish -->



<?php

include("includes/footer.php");

?>


<script src="js/jquery-331.min.js"></script>
<script src="js/bootstrap-337.min.js"></script>


</body>	
</html>