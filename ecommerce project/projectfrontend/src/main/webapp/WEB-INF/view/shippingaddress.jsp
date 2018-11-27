<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
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
	top: 50px;
	bottom: 0;}
	
	.update {
  margin: 40px auto;
  width: 350px;
  padding: 30px 25px;
  background: white;
  border: 4px solid #c4c4c4;
}

h1.update-title {
  margin: -28px -25px 25px;
  padding: 15px 25px;
  line-height: 30px;
  font-size: 25px;
  font-weight: 300;
  color: #ADADAD;
  text-align:center;
  background: #f7f7f7;
 
}
.update-input {
  width: 200px;
  height: 50px;
  margin-bottom: 25px;
  padding-left:20px;
  font-size: 15px;
  background: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.update-input:focus {
    border-color:#6e8095;
    outline: none;
  }
  
  .update-button {
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
<c:url value='/cart/createorder' var="url"></c:url>
<div class="update">
<form:form modelAttribute="shippingaddress" method="post"  action="${url }" >
<h1 class="update-title">SHIPPING ADDRESS</h1>
<table>
 <tr>
	   <td></td>
	   <td><form:hidden path="shippingId"></form:hidden></td>
	   </tr>
	  
		<tr>
			<td>Apartment No.</td>
			<td>
			<form:input class="update-input" path="apartmentnumber"/>
			<form:errors path="apartmentnumber" cssStyle="color:red"></form:errors>

			</td>
		</tr>
        <tr>
			<td>Street Name</td>
			<td>
			<form:input class="update-input" path="streetname"/>
			<form:errors path="streetname" cssStyle="color:red"></form:errors>
			</td>
		</tr>
        <tr>
			<td>City</td>
			<td>
			<form:input class="update-input" path="city"/>
			<form:errors path="city" cssStyle="color:red"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>State</td>
			<td>
			<form:input class="update-input" path="state"/>
			<form:errors path="state" cssStyle="color:red"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>Country</td>
			<td>
			<form:input class="update-input" path="country"/>
			<form:errors path="country" cssStyle="color:red"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>Zipcode</td>
			<td>
			<form:input class="update-input" path="zipcode"/>
			<form:errors path="zipcode" cssStyle="color:red"></form:errors>
			</td>
		</tr>
	
		<tr><td>
		<input class="update-button" type="submit" value="CONFIRM">  </td>
		<td></td>
		</tr>
		
		
	</table>



</form:form>
</div>
</div>
</div>
</body>
</html>
    