<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WHEELIE</title>
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
	
	body {
  background: #2d343d;
}

.login {
  margin: 20px auto;
  width: 300px;
  padding: 30px 25px;
  background: white;
  border: 1px solid #c4c4c4;
}

h1.login-title {
  margin: -28px -25px 25px;
  padding: 15px 25px;
  line-height: 30px;
  font-size: 25px;
  font-weight: 300;
  color: #ADADAD;
  text-align:center;
  background: #f7f7f7;
 
}

.login-input {
  width: 250px;
  height: 50px;
  margin-bottom: 25px;
  padding-left:20px;
  font-size: 15px;
  background: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.login-input:focus {
    border-color:#6e8095;
    outline: none;
  }
.login-button {
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

.login-lost
{
  text-align:center;
  margin-bottom:0px;
}

.login-lost a
{
  color:#666;
  text-decoration:none;
  font-size:13px;
}


	

</style>
</head>
<body style ="background-color:sandal;">
<div class="top">
		 <%@ include file="header.jsp" %>
</div>
<div class="main1">
	<c:url value='/j_spring_security_check' var="log"></c:url>
	<form class="login" action="${log}" method="post">
			
				<h1 class="login-title">WHEELIE LOGIN</h1>
				<input type="text" class="login-input" required="true" name="j_username" placeholder="Email Address" autofocus> 
					<input type="password" class="login-input" required="true" id="j_password" name="j_password"  placeholder="Password"> 
					<input type="submit" value="Lets Go" class="login-button">
				<p class="login-lost">
					<a href="">Forgot Password?</a>
				</p>
			</form>
	<span style="color: red">${error}</span>
	</div>
</body>
</html>