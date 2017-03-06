<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@ page import="java.io.*,java.util.*" %>
	<%@ page import="javax.servlet.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>GA</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/conten/css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/conten/css/jquery-ui.min.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/conten/css/css-style.css"/>
		<script type="text/javascript">
		window.onload = setInterval(clock,1000);

	    function clock()
	    {
		  var d = new Date();
		  
		  var date = d.getDate();
		  
		  var month = d.getMonth();
		  var montharr =["Jan","Feb","Mar","April","May","June","July","Aug","Sep","Oct","Nov","Dec"];
		  month=montharr[month];
		  
		  var year = d.getFullYear();
		  
		  var day = d.getDay();
		  var dayarr =["Sun","Mon","Tues","Wed","Thurs","Fri","Sat"];
		  day=dayarr[day];
		  
		  var hour =d.getHours();
	      var min = d.getMinutes();
		  var sec = d.getSeconds();
		
		  document.getElementById("date").innerHTML=day+" "+date+" "+month+" "+year;
		  document.getElementById("time").innerHTML=hour+":"+min+":"+sec;
	    }
		</script>
		<style type="text/css">			
			.e li{
				list-style: none;
				margin-top: 7px;
				margin-left: -40px;
				background-color:#FFCCCC;
				border:1px solid #009900;
				width:230px;
				border-radius: 9px;
			}
			.s li{
				list-style: none;
				margin-top: 7px;
				margin-left: -40px;
				background-color:#DDFFDD;
				border:1px solid #009900;
				width:230px;
				border-radius: 9px;
			}					
		</style>
	</head>
	<body onload="display_ct();">
		<s:div cssClass="navbar navbar-fixed-top" id="nav">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#"><img id="logo" alt="Loading" src="${pageContext.request.contextPath}/conten/images/icon.png"></a>
	        </div>
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	          	<li class="active"><a href="${pageContext.request.contextPath}/login.action">Login</a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </s:div>
	    <div class="container" style="margin-top: 135px;">
	    	<center class="jumbotron">
	    		<div class="s">
	    			<s:actionmessage/>
	    		</div>
	    		<div class="e">
	    			<s:actionerror/>
	    		</div>
				<h1><b>Selamat Datang, Selamat Bekerja</b></h1>
				<div class='time-frame'>
				    <p id="date"></p>
  					<p id="time"></p>
				</div>
				
    		<div class="control-group">		
    			<s:form namespace="/" action="Save" method="post" theme="bootstrap" cssClass="form-horizontal" >
    				<div class="controls ui-widget">
    					<label class="control-label">Nik Karyawan : </label>
	    				<s:textfield name="absensi.nik" theme="simple" cssClass="an"/>
	    				<s:submit value="Submit" theme="simple" cssClass="btn btn-success" />
	    				<s:a theme="simple" cssClass="btn btn-default" href="/SPK/">Reset</s:a>
	    			</div>
    			</s:form>
    		</div>
			</center>
	    </div>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/jquery-3.1.0.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/jquery-ui.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/bootstrap.min.js" ></script>
	</body>
</html>