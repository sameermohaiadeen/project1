<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
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
    border: 3px solid #ccc;
    background-color: #f3f3f3;}
    
  .card-body{
  	text-align: center;
  	}


</style>
</head>
<body>
<body>
<div class="top">
		 <%@ include file="header.jsp" %>
</div>

<div class="main1">
	<div class="container">
	
			<c:forEach items="${product}" var="p">
			<c:if test="${p.category.categoryId == =request.getParameter("Id") }">
			
			
			<div class="card" style="width: 280px; display:inline-block;">
				<a href="<c:url value='/all/getproduct?id=${p.id }'></c:url>"><img class="card-img-top" src="<c:url value='/resources/images/${p.id }.jpg'></c:url>" style="width:100%"></a> <!-- p.getId() -->
					<div class="card-body">
					
					<h4><b>${p.productname }</b></h4> <!-- p.getProductname() -->
					<h6>${p.category.categoryName }<br>${p.price }  <!-- p.getPrice() -->
					</h6> 
					
					
					<a href="<c:url value='/all/getproduct?id=${p.id }'></c:url>" class="btn btn-info" role="button"><span class="glyphicon glyphicon-info-sign"></span>View Details</a><br>
					<!-- call the handler method getProduct(@RequestParam int id) 
					in the ProductController -->
					<a href="<c:url value='/admin/deleteproduct?id=${p.id }'></c:url>"class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span>Delete Product</a><br>
					<a href="<c:url value='/admin/getupdateproductform?id=${p.id }'></c:url>"class="btn btn-warning" role="button"><span class="glyphicon glyphicon-pencil"></span>Update Product</a>
					</div>
					
					</div>
					
				 
		 
				</c:if>
			</c:forEach>
			
	</div>
	
</div>	
	
</body>
</html>
