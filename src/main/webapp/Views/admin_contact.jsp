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

<section class="messages">

   <h1 class="title">messages</h1>

   <div class="box-container">
      <div class="box">
         <p>user id : <span><?php echo $fetch_message['user_id']; ?></span> </p>
         <p>name : <span><?php echo $fetch_message['name']; ?></span> </p>
         <p>number : <span><?php echo $fetch_message['number']; ?></span> </p>
         <p>email : <span><?php echo $fetch_message['email']; ?></span> </p>
         <p>message : <span><?php echo $fetch_message['message']; ?></span> </p>
         <a href="admin_contacts.php?delete=<?php echo $fetch_message['id']; ?>" onclick="return confirm('delete this message?');" class="delete-btn">delete</a>
      </div>
     
   </div>

</section>

<script src="../js/admin_script.js"></script>


</body>
</html>