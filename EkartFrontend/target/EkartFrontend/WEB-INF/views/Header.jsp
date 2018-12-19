<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HemoDEcor </title>
  <body bgcolor="brown">
<meta name="viewport" content="width=device-width,initial-scale=1"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#"><img src="facebook.png" width="25" height="25"></a>

 <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      
      <a class="nav-link" href="#">
	<font color="white"><span class="glyphicon glyphicon-home"></span></font>Home
      </a>
    </li>
    <c:if test="${!sessionScope.loggedIn}">
    <li class="nav-item">
      <a class="nav-link" href="login">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="register">Register</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="aboutus">About Us</a>
    </li>
    </c:if>
    	    <c:if test="${!sessionScope.loggedIn}">
       	    <c:if test="${sessionScope.role=='ROLE_ADMIN'}">
    <li class="nav-item">
      <a class="nav-link" href="category">Category</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="product">Product</a>
    </li>
    </c:if>
        <c:if test="${sessionScope.role=='ROLE_USER'}">
    
    <li class="nav-item">
      <a class="nav-link" href="productDisplay">ProductDisplay</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="cart">Cart</a>
    </li>
    </c:if>
    </c:if>
    
  </ul>
  </div>

</nav>
  
</body>
</head>

</html>