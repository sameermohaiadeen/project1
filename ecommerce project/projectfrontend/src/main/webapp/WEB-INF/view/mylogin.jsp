<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
feather.replace()
</script>
<style>
body{
  background-color: #f2f5f8;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: calc(100vh - 20px);
  font-family: 'Mukta', sans-serif;
}
a{
  text-decoration: none;
  color: #444;
}
.title {
  text-align: center;
  margin-top: 15px;
  margin-bottom: 25px;
}
.subtitle{
  font-weight: 300;
  color: #444;
}
.brand{
  color: #1d5cf9;
  letter-spacing: 10px;
  font-size: 22px;
  font-weight: 700;
  padding-left: 8px;
}
.container{
  width: 320px;
  background-color: #fff;
  padding: 25px;
  border-radius: 12px;
  position: relative;
}

.container::after{
  content: '';
  width: 90%;
  left: 5%;
  bottom: 0px;
  height: 25px;
  z-index: -1;
  background-color: transparent;
  position: absolute;
  box-shadow: 0 10px 90px #add6f9;
}

form{
  margin-top: 60px;
}

.row{
  width: 100%;
}

.input-group{
  display: flex; 
}
.input-group svg{
  font-size: 18px;
  border: 1px solid #eee;
  border-right: none;
  padding: 10px;
  color: #ddd;
  background-color: #fff;
}

.row input{
  width: 100%;
  font-size: 14px;
  border: 1px solid #eee;
  border-left: none;
  color: #000;
}


.row input:focus{
  outline: none;
}

#username svg, #username input{
  border-bottom: none;
}
button{
  width: 50%;
  background-color: #1d5cf9;
  color: #fff;
  padding: 13px;
  font-size: 14px;
  border-radius: 100px;
  border: none;
  position: relative;
  left: 25%;
  box-shadow: 0 15px 40px #add6f9;
  margin: 35px 0;
  cursor: pointer;
  font-weight: 300;
}
button:focus{
   outline: none;
}

button svg{
  position: absolute;
  top: 24%;
  width: 15px;
  margin-left: 10px;
}

.forgotpassword{
  text-align: center;
  margin-top: 35px;
}
.singup{
  margin-top: 50px;
  text-align: center;
  color: #444;
  font-size: 14px;
}
.singup a{
  color: #1d5cf9;
  font-weight: 600;
}
</style>
</head>
<body>
<div class="container">
  <div class="title">
    <div class="brand">
      M.SENG
    </div>
    <div class="subtitle">
      Please! login for continue
    </div>
  </div>
    
    <form>
      <div class="row">
      <div class="input-group" id="username">
         <i data-feather="user"></i>
        <input type="text" placeholder="Username">
      </div>
    </div>
    <div class="row">
      <div class="input-group">
        <i data-feather="lock"></i>
        <input type="password" placeholder="Password">
      </div>
    </div>
    <div class="row">
      <div class="forgotpassword">
        <a href="#">I forgot password?</a>
      </div>
    </div>
    <div class="row">
      <button>LOGIN <i data-feather="chevron-right"></i></button>
    </div>
  </form>
    <div class="row">
      <div class="singup">
        Don't have an account? <a target="_blank" href="https://codepen.io/mengsengoeng/pen/GwjOQE?editors=1100">Signup</a>
      </div>
  </div>
</div>
</body>
</html>