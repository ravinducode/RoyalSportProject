<div id="footer"> <!-- Footer Begin -->
     <div class="container"> <!-- Container Begin -->
            <div class="row" > <!-- row Begin -->
                <div class="col-sm-6 col-md-3"> <!-- col-sm-6 col-md-3 Begin -->

                <h4>Pages</h4>

                    <ul> <!-- ul Begin -->
                        <li><a href="cart.php">Shopping Cart</a></li>
                        <li><a href="contact.php">Contact Us</a></li>
                        <li><a href="shop.php">Categories</a></li>
                        <li><a href="customer/my_account.php">My Account</a></li>
                    </ul><!-- ul End -->

                    <hr>

                    <h4> User Section </h4>

                    <ul>  <!-- ul Begin -->

                           <?php 
                           
                           if(!isset($_SESSION['customer_email'])){
                                echo "<a href='checkout.php'> Login </a>";

                            }else{

                                echo "<a href='customer/my_account.php?my_orders'>My Account</a>";

                            }
                           
                           ?>

                        <li><a href="customer_register.php">Register</a></li>
                        
                    </ul>  <!-- ul End -->

                    <hr class="hidden-md hidden-lg hidden-sm">


                </div> <!-- col-sm-6 col-md-3 End -->
                <div class="com-sm-6 col-md-3"> <!-- col-sm-6 col-md-3 Begin -->
                
                <h4>Top Products Categories</h4>

                <ul> <!-- ul Begin -->
                   
                    <?php 
                    
                    $get_p_cats = "select * from product_categories";

                    $run_p_cats = mysqli_query($con,$get_p_cats);

                    while($row_p_cats=mysqli_fetch_array($run_p_cats)){

                        $p_cat_id = $row_p_cats['p_cat_id'];

                        $p_cat_title = $row_p_cats['p_cat_title'];

                        echo "
                        
                            <li>
                            
                                <a href='shop.php?p_cat=$p_cat_id'>
                                
                                $p_cat_title

                                </a>
                            
                            </li>
                        
                        
                        ";

                    }
                    
                    ?>


                </ul> <!-- ul End -->

                <hr class="hidden-md hidden-lg">

                </div> <!-- col-sm-6 col-md-3 Finish -->

                <div class="col-sm-6 col-md-3"> <!-- col-sm-6 col-md-3 Begin -->

                    <h4>Find Us </h4>

                    <p> <!--P Begin -->

                        <strong> Royal Sports </strong>
                        <br/> 9 Upatissa Rd,
                        <br/> Colombo 05.
                        <br/> 077 736 6848
                        

                    </p> <!--P End -->

                    <a href="https://goo.gl/maps/afXo4HWw136bk5Eb6"> Open in Google Maps </a>
                    

                    <hr class="hidden-md hidden-lg">

                </div> <!-- col-sm-6 col-md-3 Finish -->

                <div class="col-sm-6 col-md-3">
                
                <h4>Get The News</h4>
                
                <p class="text-muted">
                    Dont miss our latest update products.
                </p>
                
                <form action="" method="post"><!-- form begin -->
                    <div class="input-group"><!-- input-group begin -->
                        
                        <input type="text" name="email" style="display: inline-block; padding: 8px 10px; font-size: 12px; border-radius: 0; -webkit-appearance: none;border: 1px solid lightgray;">
                        
                        <span class="input-group-btn"><!-- input-group-btn begin -->
                            
                            <input type="submit" value="subscribe" style="display: inline-block; padding: 8px 10px; font-size: 12px; border-radius: 0; -webkit-appearance: none;border: 1px solid lightgray; border: 1px solid transparent;background-color: #555555; color: white;">
                            
                        </span><!-- input-group-btn Finish -->
                        
                    </div><!-- input-group Finish -->
                </form><!-- form Finish -->
                
                    <hr>

                    <h4> Keep In Touch </h4>

                    <p class="social">
                        <a href="#" class="fa fa-facebook"> </a>
                        <a href="#" class="fa fa-twitter"> </a>
                        <a href="#" class="fa fa-instagram"> </a>
                    </p>

                </div> <!-- col-sm-6 col-md-3 Finish -->
        </div> <!-- row End -->
    </div> <!-- Container End -->
</div> <!-- Footer End -->


<div id="copyright"> <!-- copyright Begin -->
    <div class="container"> <!-- container Begin -->
        <div class="col-md-6"> <!-- col-md-6 Begin -->

            <p class="pull-left">&copy; 2021 Royal Sports -All Rights Reserved</p>

        </div> <!-- col-md-6 End -->
        <div class="col-md-6"> <!-- col-md-6 Begin -->

            <p class="pull-right">Developed By Sakuni Hegodage</p>

        </div> <!-- col-md-6 End -->
    </div> <!-- container End -->
</div> <!-- copyright End -->
