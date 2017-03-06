<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/conten/css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/conten/css/css-style.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/jquery-3.1.0.min.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/bootstrap.min.js" ></script>
<title>NGK</title>
<style type="text/css">
body{
    position: relative;
    height: 100%;
    background-color: #eee;
}

.login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

#output{
    position: absolute;
    width: 300px;
    top: -75px;
    left: 0;
    color: #fff;
}
.login-container::before,.login-container::after{
    content: "";
    position: absolute;
    width: 100%;height: 100%;
    top: 3.5px;left: 0;
    background: #fff;
    z-index: -1;
    -webkit-transform: rotateZ(4deg);
    -moz-transform: rotateZ(4deg);
    -ms-transform: rotateZ(4deg);
    border: 1px solid #ccc;

}

.login-container::after{
    top: 5px;
    z-index: -2;
    -webkit-transform: rotateZ(-2deg);
     -moz-transform: rotateZ(-2deg);
      -ms-transform: rotateZ(-2deg);

}

/* .avatar{
    width: 100px;height: 100px;
    margin: 10px auto 30px;
    border-radius: 100%;
    border: 2px solid #aaa;
    background-size: cover;
} */

.form-box input{
    width: 112%;
    padding: 10px;
    text-align: center;
    height:40px;
    border: 1px solid #ccc;
    transition:0.2s ease-in-out;

}

.form-box input:focus{
    outline: 0;
    background: #eee;
}

.form-box input[type="text"]{
    border-radius: 5px 5px 0 0;
    text-transform: lowercase;
}

.form-box input[type="password"]{
    border-radius: 0 0 5px 5px;
    border-top: 0;
    margin-bottom: 15px;
}

.form-box button.login{
    margin-top:15px;
    padding: 10px 20px;
}

.animated {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    -ms-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}

.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
}
.lp{
	text-align: center;
	margin: 34px 0px -71px 462px;
	width: 209px;
	height: 113px;
}
.user{
	margin: 3px 0px 23px 8px;
	width: 120px;
	height: 76px; 
}

.errors {
	
}
.errors li{
	list-style: none;
	margin-left: -40px;
	font-size: 12px;
	background-color:#FFCCCC;
	border:1px solid #CC0000;
	width:215px;
	margin-top: 13px;
	border-radius: 7px;
}

</style>
</head>
<body>
	<s:div cssClass="container">
		<img class="lp" alt="Loading" src="${pageContext.request.contextPath}/conten/images/icon.png">
		<div class="login-container">
            <div id="output"></div>
            <div><img class="user" alt="Loading" src="${pageContext.request.contextPath}/conten/images/user.png"></div>
            <div class="form-box">
                <s:form namespace="/authentication" action="auth" validate="true" method="post">
                    <s:textfield name="userName" required="true" placeholder="username"></s:textfield>
					<s:password name="password" required="true" placeholder="password"/>
					<s:submit cssClass="btn btn-info " value="Login"/>
                </s:form>
                <div class="errors">
                	<s:fielderror name="invalid"/>
                </div>
            </div>
        </div>  
	</s:div>
</body>
</html>  