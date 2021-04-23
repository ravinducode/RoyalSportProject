<?php 
    
    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }else{

?>

<?php 

    if(isset($_GET['delete_cod_payment'])){
        
        $delete_cod_payment_id = $_GET['delete_cod_payment'];
        
        $delete_cod_payment = "delete from cod_payments where payment_id='$delete_cod_payment_id'";
        
        $run_delete = mysqli_query($con,$delete_cod_payment);
        
        if($run_delete){
            
            echo "<script>alert('One of Your Payments Has Been Deleted')</script>";
            
            echo "<script>window.open('index.php?view_cod_payments','_self')</script>";
            
        }
        
    }

?>




<?php } ?>