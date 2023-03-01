<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/admin.css">
  <title>Login</title>
</head>
<body>
    <form action="Admin.php" method="post">
  <div class="login">
  <label for="username">Log In</label><br>
  <input type="text" name="email" id="username" placeholder="Email" ><br>
  <input type="password" name="password" id="password" placeholder="Password"><br>
  <button type="submit" name="submit">Log In</button>
  </form>
  </div>
</body>
</html>