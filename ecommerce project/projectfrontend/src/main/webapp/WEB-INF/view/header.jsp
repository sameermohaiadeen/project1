<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'></c:url>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>

.nav.navbar-nav li a {
    color: white;
    padding-right:20px;
    
}
.nav.navbar-nav > li > a:hover, .nav.navbar-nav > li > a:focus {
    background-color: #337ab7;
    color: yellow;
}
.nav.navbar-nav > li > .dropdown-menu { background-color: #4271FF; }

</style>
</head>
<body>

<nav class="navbar sticky-top navbar-dark bg-primary navbar-fixed-top" >
<div class="navbar-header">
				<a href="<c:url value='/'></c:url> " class="navbar-brand"><img src="<c:url value='/resources/images/wheelie1.png'></c:url>" height="20px" width="80px" padding-top="20px"></a>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbardemo" >
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
</div>
<div class="collapse navbar-collapse" id="navbardemo">
<ul class="nav navbar-nav ">

<li class="right"><a href="<c:url value='/home'></c:url>"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="<c:url value='/about'></c:url>"><span class="glyphicon glyphicon-heart"></span>AboutUs</a></li>
<li><a href="<c:url value='/admin/getproductform'></c:url>"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
<li><a href="<c:url value='/all/getallproducts'></c:url>"><span class="glyphicon glyphicon-search"></span>Browse all products</a></li>
<li><a href="<c:url value='/all/viewcategory'></c:url>"><span class="glyphicon glyphicon-search"></span>Select By Category</a></li>
<li><a href="<c:url value='/mam'></c:url>"><span class="glyphicon glyphicon-search"></span>view</a></li>
<%-- <li class="dropdown"><a href="<c:url value='/all/getallproducts'></c:url>" class="dropdown-toggle"
					data-toggle="dropdown">Select By Category<span class="caret"></span></a>					
				<ul class="dropdown-menu">
				<li><a href="#">Kitchen and Dining</a></li>
				<li><a href="#">Furniture</a><li>
				<li><a href="#">All</a></li>
				</ul>
</li> --%>
				<c:if test="${pageContext.request.userPrincipal.name ==null}">
					<!-- check if principal object is null -->
					<li><a href="<c:url value='all/getregistrationform'></c:url>"><span class="glyphicon glyphicon-registration-mark"></span>SignUp</a></li>
					<li><a href="<c:url value='/login'></c:url>"><span class="glyphicon glyphicon-log-in"> </span>  Sign In</a></li>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
				
					<li><a href="<c:url value='/orderdetails'></c:url>"><span class="glyphicon glyphicon-user"></span>Welcome ${pageContext.request.remoteUser}</a></li>
					
						<li><a href="<c:url value='/cart/getcart'></c:url>"><span
								class="glyphicon glyphicon-shopping-cart"></span>Cart(${sessionScope.cartSize })</a></li>
								
					<li><a href="<c:url value='/j_spring_security_logout'></c:url>"><span class="glyphicon glyphicon-log-out"></span>Log
							out</a></li>
				</c:if>
</ul>
</div>
</nav>
</body>
</html>