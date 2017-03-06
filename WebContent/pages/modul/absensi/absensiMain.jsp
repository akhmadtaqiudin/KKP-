<%@page import="com.id.ga.modul.model.Absensi"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GA</title>
<jsp:include page="/pages/templates/template.jsp"></jsp:include>
<script type="text/javascript">
$(document).ready(function(){
  $(".del").click(function(){
    if (!confirm("Apakah anda yakin ingin hapus file tersebut")){
      return false;
    }
  });
  $("#listTableAbsensi  > thead tr th").css({"text-align": "center", "vertical-align": "middle"});
  $("#listTableAbsensi  > tbody tr td").css({"text-align": "center", "vertical-align": "middle"});
  $( ".tgl" ).datepicker({
	  yearRange: "2010:2020",
      changeMonth: true,
      changeYear: true
    });
});
</script>

</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
            <div class="panel-heading">
              	<h2>Master Data Absensi</h2>
            </div>
			<c:set var="today" value="<%=new java.util.Date()%>" />
            <div class="panel-body">
               	<s:form namespace="/absensi" id="form">
					<s:textfield name="absensi.nik" placeholder="NIK Karyawan" id="nik"/>
					<s:submit value="Cari data" action="searchAbsensi" id="search" />
					<s:submit value="Tambah data" action="AddAbsensi" id="add" cssClass="btn btn-success" />
				</s:form>
				<display:table id="listTableAbsensi" name="listAbsensi" pagesize="10" export="true"
					 requestURI="/absensi/searchAbsensi.action" class="table table-bordered table-hover table-striped" >
					<display:column title="ID Absensi " property="idAbsensi" />
					<display:column title="Tanggal " property="tanggal" format="{0,date,dd/MM/yyyy hh:mm:ss}" />
					<display:column title="NIK Karyawan " property="nik" />
					<display:column title="Nama Karyawan" property="namaKaryawan" />
					<display:column title="section" property="section"  />
					<display:column title="Hadir" property="hadir" />
					<display:column title="Alpha" property="alpha" />
					<display:column title="Izin" property="izin" />
					<display:column title="Sakit" property="sakit" />
					<display:column title="ACTION" media="html">
						<a class="btn btn-warning btn-xs" href="${pageContext.request.contextPath}/absensi/selectWhereID.action?absensi.idAbsensi=<%=((Absensi) pageContext.getAttribute("listTableAbsensi")).getIdAbsensi()%>">Edit</a>
						<a class="btn btn-danger btn-xs del" href="${pageContext.request.contextPath}/absensi/DeleteAbsensi.action?absensi.idAbsensi=<%=((Absensi) pageContext.getAttribute("listTableAbsensi")).getIdAbsensi()%>">Delete</a>
					</display:column>
					<display:setProperty name="export.pdf.filename" value="ReportAbsensi.pdf"/>
					<display:setProperty name="export.excel.filename" value="ReportAbsensi.xlsx"/>
				</display:table>
            </div>
       </div>
	</s:div>
</body>
</html>