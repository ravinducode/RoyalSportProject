<?php 

    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }else{

?>

<?php 

    if(isset($_GET['edit_order'])){
        
        $edit_id = $_GET['edit_order'];
        
        $get_p = "select * from pending_orders where order_id='$edit_id'";
        
        $run_edit = mysqli_query($con,$get_p);
        
        $row_edit = mysqli_fetch_array($run_edit);
        
        $o_id = $row_edit['order_id'];
        
        $customer_id = $row_edit['customer_id'];

        $invoice_no = $row_edit['invoice_no'];

        $product_id = $row_edit['product_id'];
        
        $qty = $row_edit['qty'];
        
        $size = $row_edit['size'];
        
        $order_status = $row_edit['order_status'];
        
        $get_products = "select * from product where product_id='$product_id'";
                                    
        $run_products = mysqli_query($con,$get_products);
                                    
        $row_products = mysqli_fetch_array($run_products);
                                    
        $product_title = $row_products['product_title'];

        /*

        $get_payments = "select * from cod_payments ";

        $run_payments = mysqli_query($con,$get_payments);
                                    
        $row_paymentss = mysqli_fetch_array($run_payments);
        
                                    
        $invoice_no = $row_products['invoice_no'];

        $amount = $row_products['amount'];

        $payment_mode = $row_products['payment_mode'];

        $address = $row_products['address'];

        $phone_number = $row_products['phone_number'];
        */
        
    }
        
        
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Edit Products </title>
</head>
<body>
    
<div class="row"><!-- row Begin -->
    
    <div class="col-lg-12"><!-- col-lg-12 Begin -->
        
        <ol class="breadcrumb"><!-- breadcrumb Begin -->
            
            <li class="active"><!-- active Begin -->
                
                <i class="fa fa-dashboard"></i> Dashboard / Edit COD Orders
                
            </li><!-- active Finish -->
            
        </ol><!-- breadcrumb Finish -->
        
    </div><!-- col-lg-12 Finish -->
    
</div><!-- row Finish -->
       
<div class="row"><!-- row Begin -->
    
    <div class="col-lg-12"><!-- col-lg-12 Begin -->
        
        <div class="panel panel-default"><!-- panel panel-default Begin -->
            
           <div class="panel-heading"><!-- panel-heading Begin -->
               
               <h3 class="panel-title"><!-- panel-title Begin -->
                   
                   <i class="fa fa-money fa-fw"></i> Update Order
                   
               </h3><!-- panel-title Finish -->
               
           </div> <!-- panel-heading Finish -->
           
           <div class="panel-body"><!-- panel-body Begin -->
               
               <form method="post" class="form-horizontal" enctype="multipart/form-data"><!-- form-horizontal Begin -->
                   
                   
                   <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"> Invoice No </label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                      <input name="invoice_no" type="text" class="form-control" value="<?php echo $invoice_no; ?>">
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->

                   
                   <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"> Product Name: </label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                      <input name="product_title" type="text" class="form-control" value="<?php echo $product_title; ?>">
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->
                   
                   
                   <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"> Product Qty </label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                          <input name="qty" type="text" class="form-control" required value="<?php echo $qty; ?>">
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->
                   
                   <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"> Order Status </label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                          <input name="order_status" type="text" class="form-control" required value="<?php echo $order_status; ?>">
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->
                   
                   <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"></label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                          <input name="update" value="Update Status" type="submit" class="btn btn-primary form-control">
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->
                   
               </form><!-- form-horizontal Finish -->
               
           </div><!-- panel-body Finish -->
            
        </div><!-- canel panel-default Finish -->
        
    </div><!-- col-lg-12 Finish -->
    
</div><!-- row Finish -->
   
    
</body>
</html>


<?php 

if(isset($_POST['update'])){
    
    $order_status = $_POST['order_status'];  
    
    /*

    $insert_payment = "insert into cod_payments (invoice_no,amount,payment_mode,address,phone_number) values ('$invoice_no','$amount','$payment_mode','$address','$phone_number')";

    $run_payment = mysqli_query($con,$insert_payment);

    */
    
    $update_pendingorder = "update pending_orders set order_status='$order_status' where order_id='$o_id'"; 
    
    $run_order = mysqli_query($con,$update_pendingorder);

    $update_customerorder = "update customer_orders set order_status='$order_status' where order_id='$o_id'";

    $run_customerorder = mysqli_query($con,$update_customerorder);


    if($run_order && $run_customerorder){
        
       echo "<script>alert('Your Order has been updated Successfully')</script>"; 
        
       echo "<script>window.open('index.php?view_orders','_self')</script>"; 
        
    }
    
}

?>


<?php } ?>