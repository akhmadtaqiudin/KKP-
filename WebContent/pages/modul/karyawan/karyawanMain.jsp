<%@page import="com.id.ga.modul.model.Karyawan"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
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
  $("#listTableKaryawan  > thead tr th").css({"text-align": "center", "vertical-align": "middle"});
  $("#listTableKaryawan  > tbody tr td").css({"text-align": "center", "vertical-align": "middle"});
});
</script>
</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
            <div class="panel-heading">
              	<h2>Master Data Karyawan</h2>
            </div>
            
            <div class="panel-body">
               	<s:form namespace="/karyawan" id="form">
					<s:textfield name="karyawan.namaKaryawan" placeholder="Nama Karyawan" id="nik"/>
					<s:submit value="Cari data" action="searchKaryawan" id="search" />
					<s:submit value="Tambah data" action="AddKaryawan" id="add" cssClass="btn btn-success" />
				</s:form>
				<display:table id="listTableKaryawan" name="listKaryawan" pagesize="10" export="true" 
					 requestURI="/karyawan/searchKaryawan.action" class="table table-bordered table-hover table-striped" >
					<display:column title="NIK Karyawan " property="nik" />
					<display:column title="Nama Karyawan " property="namaKaryawan" />
					<display:column title="Tempat Tanggal Lahir">
						${listTableKaryawan.tempatLahir},<fmt:formatDate value="${listTableKaryawan.tanggalLahir}" type="date" />
					</display:column>
					<display:column title="Jenis Kelmain " property="jenisKelamin"  />
					<display:column title="Status " property="status" />
					<display:column title="Agama " property="agama" />
					<display:column title="Alamat " property="alamat" />
					<display:column title="Kontak " property="kontak" />
					<display:column title="Section " property="section" />
					<display:column title="Action" media="html">
						<a class="btn btn-warning btn-xs" href="${pageContext.request.contextPath}/karyawan/selectWhereNik.action?karyawan.nik=<%=((Karyawan) pageContext.getAttribute("listTableKaryawan")).getNik()%>">Edit</a>
						<a class="btn btn-danger btn-xs del" href="${pageContext.request.contextPath}/karyawan/DeleteKaryawan.action?karyawan.nik=<%=((Karyawan) pageContext.getAttribute("listTableKaryawan")).getNik()%>">Delete</a>
					</display:column>
					<display:setProperty name="export.pdf.filename" value="ReportKaryawan.pdf"/>
					<display:setProperty name="export.excel.filename" value="ReportKaryawan.xlsx"/>		
				</display:table>
            </div>
       </div>
	</s:div>
</body>
</html>