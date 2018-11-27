<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">

function fillShippingAddress(form){
	if(form.shippingaddressform.checked==true){
		//shippingaddress is same as billingaddress
		form["shippingaddress.apartmentnumber"].value=form["billingaddress.apartmentnumber"].value;
		form["shippingaddress.streetname"].value=form["billingaddress.streetname"].value;
		form["shippingaddress.city"].value=form["billingaddress.city"].value;
		form["shippingaddress.state"].value=form["billingaddress.state"].value;
		form["shippingaddress.country"].value=form["billingaddress.country"].value;
		form["shippingaddress.zipcode"].value=form["billingaddress.zipcode"].value;
	}
	if(form.shippingaddressform.checked==false){
		form["shippingaddress.apartmentnumber"].value=""
		form["shippingaddress.streetname"].value=""
		form["shippingaddress.city"].value=""
		form["shippingaddress.state"].value=""
		form["shippingaddress.country"].value=""
		form["shippingaddress.zipcode"].value=""
	}
}




$(document).ready(function(){
	$('#form').validate({
		rules:{
			firstname:{required:true},
			lastname:{required:true},
			phonenumber:{required:true,number:true,minlength:10,maxlength:10},
			"user.email":{required:true,email:true},
			"user.password":{required:true,minlength:5,maxlength:10},
			"billingaddress.apartmentnumber":{required:true},
			"billingaddress.streetname":{required:true},
			"billingaddress.state":{required:true},
			"billingaddress.city":{required:true},
			"billingaddress.country":{required:true},
			"billingaddress.zipcode":{required:true,number:true}
		},
		messages:{
			firstname:{required:"Firstname is mandatory"},
			phonenumber:{required:"Phonenumber is required"},
			"user.email":{required:"Email is required",email:"Please enter valid email address"}
		}
	})
})

</script>
<style>



form {
  padding: 20px;
  background: none;
  color: green;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
}
form label,
form input,
form button {
  border: 0;
  margin-bottom: 3px;
  display: block;
  width: 100%;
}
form input {
  height: 25px;
  line-height: 25px;
  background: #fff;
  color: #000;
  padding: 0 6px;
  border: 2px solid black;
  border-radius: 4px;
  
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

form button {
  height: 30px;
  line-height: 30px;
  background: #e67e22;
  color: #fff;
  margin-top: 10px;
  cursor: pointer;
}
form .error {
  color: #ff0000;
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
	top: 100px;
	bottom: 0;}
	
		.add {
  margin: 40px auto;
  width: 350px;
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
  color: black;
  text-align:center;
  background: #f7f7f7;
 
}
.container
{
background: black;
 border: 2px solid grey;
  border-radius: 10px;
  
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  padding: 15px 25px;}
.add-button {
  width: 100%;
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
	<c:url value="/all/registercustomer" var="url"></c:url>
	<form:form modelAttribute="customer" action="${url }" id="form">
	
	<form:hidden path="customerId"/>
	<div class="col-sm-4">
	<div class="add">
	<h1 class="add-title">PERSONAL DETAILS</h1>
	<form:label path="firstname">Enter Firstname</form:label>
	<form:input path="firstname" id="firstname"/>
	
	
	<form:label path="lastname">Enter Lastname</form:label>
	<form:input path="lastname" id="lastname"/>
	
	
	<form:label path="phonenumber">Enter Phonenumber</form:label>
	<form:input path="phonenumber" id="phonenumber"/> <br>
	<hr>
	
	<h1 class="add-title">LOGIN CREDENTIALS</h1>
	<form:label path="user.email">Enter Email</form:label>
	<form:input path="user.email" id="user.email" type="email"/>
	<span style="color:red">${errorMessage }</span>
	<form:label path="user.password">Enter password</form:label>
	<form:input path="user.password" id="user.password" type="password"  />
	<form:hidden path="user.enabled" value="true"/>
	<form:hidden path="user.authorities.role" value="ROLE_USER"/>
	</div>
	</div>
	<div class="col-sm-4">
	<div class="add">
	<h1 class="add-title">BILLING ADDRESS</h1><br> 
	
	<form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
	<form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber"/>
	
	<form:label path="billingaddress.streetname">Enter streetname</form:label>
	<form:input path="billingaddress.streetname" id="billingaddress.streetname"/>
	
	<form:label path="billingaddress.city">Enter city</form:label>
	<form:input path="billingaddress.city" id="billingaddress.city"/>
	
	<form:label path="billingaddress.state">Enter state</form:label>
	<form:input path="billingaddress.state" id="billingaddress.state"/>
	
	<form:label path="billingaddress.country">Enter country</form:label>
	<form:input path="billingaddress.country" id="billingaddress.country"/>
	
	<form:label path="billingaddress.zipcode">Enter Zipcode</form:label>
	<form:input path="billingaddress.zipcode" id="billingaddress.zipcode"/> <br> <br> 
	</div> </div>
	<div class="col-sm-4">
	<div class="add">
	<h1 class="add-title">SHIPPING ADDRESS</h1>
Check this if shipping address is same as billing address
<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
	
	<form:label path="shippingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
	<form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber"/>
	
	<form:label path="shippingaddress.streetname">Enter streetname</form:label>
	<form:input path="shippingaddress.streetname" id="shippingaddress.streetname"/>
	
	<form:label path="shippingaddress.city">Enter city</form:label>
	<form:input path="shippingaddress.city" id="shippingaddress.city"/>
	
	<form:label path="shippingaddress.state">Enter state</form:label>
	<form:input path="shippingaddress.state" id="shippingaddress.state"/>
	
	<form:label path="shippingaddress.country">Enter country</form:label>
	<form:input path="shippingaddress.country" id="shippingaddress.country"/>
	
	<form:label path="shippingaddress.zipcode">Enter zipcode</form:label>
	<form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode"/>
	</div> </div>
	<input type="submit" value="Register" class="add-button">
	
	</form:form>
	</div>
</div>
</body>
</html>
