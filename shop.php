<?php

    $active='Categories';
	include("includes/header.php");

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
        </ul> <!-- breadcrumb Finish -->


        </div> <!-- col-md-12 Finish -->

        <div class="col-md-3"> <!-- col-md-3 Begin -->

    <?php

    include("includes/sidebar.php");

    ?>

        </div> <!-- col-md-3 Finish -->


        <div class='col-md-9'> <!-- col-md-9 Begin -->

        <?php 

            if(!isset($_GET['p_cat'])){

                if(!isset($_GET['cat'])){   

                    echo"

                    <div class='box'> <!-- box Begin -->

                        <h1>LETS PLAY SPORTS TODAY</h1>

                        <p>
                            We, Royal Sports provides you the original products for your needs. Select a category and choose the most suitable one for your needs. Happy Shopping !!
                        </p>

                    </div> <!-- box Finish -->

                    ";


                }

            }

        ?>

            <div class="row"> <!-- row Begin -->

            <?php
            
                if(!isset($_GET['p_cat'])){

                if(!isset($_GET['cat'])){  

                    $per_page=6;

                    if(isset($_GET['page'])){

                        $page = $_GET['page'];
                        
                        }else {

                            $page=1;

                        }
                        
                        $start_from = ($page-1) * $per_page;

                        $get_products = "select * from product order by 1 DESC LIMIT $start_from,$per_page";

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
                            
                                <div class='col-md-4 col-sm-6 center-responsive'>

                                    <div class='product'>

                                        <a href='details.php?pro_id=$pro_id'> 
                                        
                                            <img class='img-responsive' src='admin_area/product_images/$pro_img1'> 

                                        </a>

                                        <div class='text'>
                                        
                                            <h3>
                                            
                                                <a href='details.php?pro_id=$pro_id'> $pro_title </a>
                                            
                                            </h3>

                                            <p class='price'>
                                            
                                            $product_price &nbsp;$product_sale_price

                                            </p>

                                            <p class='button'>
                                            
                                                <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                                                    View Details

                                                </a>

                                                <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                                                    <i class='fa fa-shopping-cart'></i> Add To cart

                                                </a>
                                            
                                            </p>
                                        
                                        </div>

                                        $product_label

                                    </div>
                                
                                </div>
                            
                            ";

                        
                    }


            ?>
            
            </div> <!-- row Finish -->

            <center>
                <ul class="pagination"> <!-- pagination Begin -->

                <?php 

                $query = "select * from product";
                
                $result = mysqli_query($con,$query);

                $total_records = mysqli_num_rows($result);

                $total_pages = ceil($total_records / $per_page );

                    echo "
                    
                        <li>
                        
                        <a href='shop.php?page=1'> ".'First Page'." </a>
                        
                        </li>
                    
                    ";

                        for($i=1; $i<=$total_pages; $i++){

                            echo "
                    
                        <li>
                        
                        <a href='shop.php?page=".$i."'> ".$i." </a>
                        
                        </li>
                    
                    ";

                         };
                         

                    echo "
                    
                        <li>
                        
                        <a href='shop.php?page=$total_pages'> ".'Last Page'." </a>
                        
                        </li>
                    
                    ";

                    }
                }
                
                ?>
                    


                </ul> <!-- pagination Finish -->
            </center>

                <?php 
                
                getpcatpro(); 
                
                getcatpro();

                ?>


                
                        
                
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