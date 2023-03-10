<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>dashboard</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<%@include file="admin_header.jsp"%>

<section class="dashboard">

   <h1 class="title">dashboard</h1>

   <div class="box-container">

      <div class="box">
        
         <h3><?php echo $total_pendings; ?></h3>
         <p>total pendings</p>
      </div>

      <div class="box">
         
         <h3><?php echo $total_completes; ?></h3>
         <p>completed paymets</p>
      </div>

      <div class="box">
        
         <h3><?php echo $number_of_orders; ?></h3>
         <p>orders placed</p>
      </div>

      <div class="box">
        
         <h3><?php echo $number_of_products; ?></h3>
         <p>products added</p>
      </div>

      <div class="box">
        
         <h3><?php echo $number_of_users; ?></h3>
         <p>normal users</p>
      </div>

      <div class="box">
         
         <h3><?php echo $number_of_admin; ?></h3>
         <p>admin users</p>
      </div>

      <div class="box">
         <h3><?php echo $number_of_account; ?></h3>
         <p>total accounts</p>
      </div>

      <div class="box">

         <h3><?php echo $number_of_messages; ?></h3>
         <p>new messages</p>
      </div>

   </div>

</section>

<script src="../js/admin_script.js"></script>

</body>
</html>