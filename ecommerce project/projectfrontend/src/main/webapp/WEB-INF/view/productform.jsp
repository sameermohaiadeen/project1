<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	top: 100px;
	bottom: 0;}
	
.add {
  margin: 40px auto;
  width: 500px;
  padding: 30px 25px;
  background: white;
  border: 3px solid #c4c4c4;
}

h1.add-title {
  margin: -28px -25px 25px;
  padding: 15px 25px;
  line-height: 30px;
  font-size: 25px;
  font-weight: 300;
  color: #ADADAD;
  text-align:center;
  background: #f7f7f7;
 
}
.add-input {
  width: 250px;
  height: 50px;
  margin-bottom: 25px;
  padding-left:20px;
  font-size: 15px;
  background: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.add-input:focus {
    border-color:#6e8095;
    outline: none;
  }
  
  .add-button {
  width: 250%;
  height: 50px;
  padding: 0;
  font-size: 20px;
  color: #fff;
  text-align: center;
  background: #f0776c;
  border: 0;
  border-radius: 5px;
  cursor: pointer; 
  outline:0;
}



</style>
</head>
<body>
<div class="top">
		 <%@ include file="header.jsp" %>
</div>
<div class="main1">
<div class="container">
<c:url value='/admin/addproduct' var="url"></c:url>
<div class="add">
<form:form action="${url }" method="post" modelAttribute="product" enctype="multipart/form-data"><!-- newly created product object -->
	<h1 class="add-title">ADD PRODUCT</h1>
	<table>
		<tr>
			<td>Enter Product Name</td>
			<td>
			<form:input class="add-input" path="productname"/>
			<form:errors path="productname" cssStyle="color:red"></form:errors>
			</td>
		</tr>
        <tr>
			<td>Enter Product Description</td>
			<td>
			<form:input class="add-input" path="productdesc"/>
			<form:errors path="productdesc" cssStyle="color:red"></form:errors>
			</td>
		</tr>
        <tr>
			<td>Enter Product Price</td>
			<td>
			<form:input class="add-input" path="price"/>
			<form:errors path="price" cssStyle="color:red"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>Enter Product Quantity</td>
			<td>
			<form:input class="add-input" path="quantity"/>
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
			</td>
		</tr>
		
		<tr>
		<td>Select Category</td>
		<td><form:select class="add-input" path="category.categoryId"><!-- product.category.id=6 -->
		<c:forEach items="${categories}" var="c"><!-- c is an Object of Type Category -->
		<form:option value="${c.categoryId }"> ${c.categoryName }</form:option>
		
		</c:forEach>
	
		</form:select>
		<form:errors path="category" cssStyle="color:red"></form:errors>
		</td>
		</tr>
		<tr>
		<td>Upload an image</td>
		<td><form:input class="add-input" type="file" path="image" ></form:input></td>
		</tr>
		<tr><td>
		<input class="add-button" type="submit" value="Add Product">  </td>
		<td></td>
		</tr>
	</table>
	</form:form>
	</div></div>
	</div>
</body>
</html>