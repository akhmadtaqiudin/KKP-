<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
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
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/conten/css/bootstrap-old.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/jquery-3.1.0.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/jquery-ui.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/conten/js/jquery-number.js" ></script>
	</head>
	<body>
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
	          	<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Absensi<b class="caret"></b></a>
	          		<ul class="dropdown-menu">
				        <li><a href="${pageContext.request.contextPath}/absensi/searchAbsensi.action">Master Absensi</a></li>
				        <li><a href="${pageContext.request.contextPath}/absensi/searchToYearAbsensi.action">Rekap Tahun Absensi</a></li>
				    </ul>
	          	</li>
	            <li class="dropdown">
	            	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Produksi<b class="caret"></b></a>
	            	<ul class="dropdown-menu">
				        <li><a href="${pageContext.request.contextPath}/produksi/searchProduksi.action">Master Produksi</a></li>
				        <li><a href="${pageContext.request.contextPath}/produksi/searchToYearProduksi.action">Rekap Tahun Produksi</a></li>
				    </ul>
	            </li>
	          	<li><a href="${pageContext.request.contextPath}/karyawan/searchKaryawan.action">Karyawan </a></li>
	          	<li><a href="${pageContext.request.contextPath}/authentication/logout.action">Logout <s:property value="#session['userName'].userName" /></a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </s:div>
	</body>
</html>