<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<style>
.top {
	position: fixed;
	left: 0;
	right: 0;
	height: 100px;
	z-index: 2000;}
	
.main1 {
	position: absolute;
	left: 0;
	right: 0;
	top: 100px;
	bottom: 0;}

</style>
</head>
<body>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="top">
		 <%@ include file="header.jsp" %>
</div>
<div class="main1">
<h3 align="center">Category Page</h3>

<div class="container">
    <form class="form-inline" action="InsertCategory" method="post">
    <div class="form-group">
      <label for="text">Category Name:</label>
      <input type="text" class="form-control" id="catname" placeholder="Enter category name" name="catname">
    </div>
    <div class="form-group">
      <label for="text">Category Desc:</label>
      <input type="text" class="form-control" id="catdesc" placeholder="Enter category description" name="catdesc">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>&nbsp
    <button type="reset" class="btn btn-default">Reset</button>
  </form>
</div>

<br><br>
<div class="container">
	   <table class="table table-bordered">
	   <thead>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
       </thead>
	<c:forEach items="${listCategories}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDesc}</td>
			<td><a
				href="<c:url value="/updateCategory/${category.categoryId}"/>">Update</a>/
				<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
			</td>
		</tr>
	</c:forEach>

</table>
</div>

</div>
</body>
</html>