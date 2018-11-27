<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
html,body{
 height: 100%;
}

.top {
	position: fixed;
	left: 0;
	right: 0;
	height: 200px;
	z-index: 2000;}
	
.main1 {
	position: absolute;
	left: 0;
	right: 0;
	top: 80px;
	bottom: 0;}
.card{
	
	position:absolute;
    left: 5%;
    border: 5px solid #ccc;
    background-color: #f3f3f3;
    z-index:20;}
    
  .card-body{
  	text-align: center;
  	}
  	body, html {
    height: 100%;
    margin: 0;
}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="top">
		 <%@ include file="header.jsp" %>
</div>
	
	<div class="main1">
	<div class="bg-image"> </div>
<div class="container">
<div class="card" style="width:350px">


<img class="card-img-top" src="<c:url value='/resources/images/${productAttr.id }.png'></c:url>" style="width:100%">

<div class="card-body">

<h2>${productAttr.productname }</h2>  <br>
<h4> ${ productAttr.category.categoryName}<br>
${productAttr.productdesc }     <br>
 ${productAttr.price }   <br>
 ${productAttr.quantity }  <br> </h4>
<c:if test="${productAttr.quantity > 0 }">
<security:authorize access="hasRole('ROLE_USER')">
<form action="<c:url value='/cart/addtocart/${productAttr.id }'></c:url>">
Enter Quantity <input type="number" name="requestedQuantity" min="1" max="${productAttr.quantity }"><br>
<button class="btn btn-lg btn-info">Add To Cart</button><br>
</form>
</security:authorize>
</c:if>
<c:if test="${productAttr.quantity==0 }">
<button class="btn btn-lg btn-info" disabled>OUT OF STOCK</button>
</c:if>
<br>
<a href="<c:url value='/all/getallproducts'></c:url>" > Back to Previous page</a>
</div>
</div>
</div>
</div>



</body>
</html>

