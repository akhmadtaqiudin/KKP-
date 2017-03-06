<%@page import="com.id.ga.modul.model.Produksi"%>
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
  $("#listTableProduksi  > thead tr th").css({"text-align": "center", "vertical-align": "middle"});
  $("#listTableProduksi  > tbody tr td").css({"text-align": "center", "vertical-align": "middle"});
});
</script>
</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
            <div class="panel-heading">
              	<h2>Master Data Produksi</h2>
            </div>
            
            <div class="panel-body">
               	<s:form namespace="/produksi" id="form">
					<s:textfield name="produksi.nik" placeholder="Hasil Proses " id="nik"/>
					<s:submit value="Cari data" action="searchProduksi" id="search" />
					<s:submit value="Tambah data" action="AddProduksi" id="add" cssClass="btn btn-success" />
				</s:form>
				<display:table id="listTableProduksi" name="listProduksi" pagesize="10" export="true"
					 requestURI="/produksi/searchProduksi.action" class="table table-bordered table-hover table-striped" >
					<display:column title="ID Produksi " property="idProduksi" />
					<display:column title="Tanggal " property="tanggal" format="{0,date,dd/MM/yyyy}" />
					<display:column title="Nik Karyawan " property="nik" />
					<display:column title="Nama Karyawan " property="namaKaryawan" />
					<display:column title="Section " property="section" />
					<display:column title="Hasil Proses" property="hasilProses" />
					<display:column title="Reject Proses" property="rejectProses"  />
					<display:column title="Target Harian" property="targetHarian" />
					<display:column title="Persentase Pencapaian" property="persenPencapaian" />
					<display:column title="ACTION" media="html">
						<a class="btn btn-warning btn-xs" href="${pageContext.request.contextPath}/produksi/SearchWhereId.action?produksi.idProduksi=<%=((Produksi) pageContext.getAttribute("listTableProduksi")).getIdProduksi()%>">Edit</a>
						<a class="btn btn-danger btn-xs del" href="${pageContext.request.contextPath}/produksi/DeleteProduksi.action?produksi.idProduksi=<%=((Produksi) pageContext.getAttribute("listTableProduksi")).getIdProduksi()%>">Delete</a>
					</display:column>
					<display:setProperty name="export.pdf.filename" value="ReportProduksi.pdf"/>
					<display:setProperty name="export.excel.filename" value="ReportProduksi.xlsx"/>			
				</display:table>
            </div>
        </div>
	</s:div>
</body>
</html>