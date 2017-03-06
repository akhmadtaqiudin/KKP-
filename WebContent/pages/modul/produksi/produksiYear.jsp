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
  $("#listTableProduksi  > thead tr th").css({"text-align": "center", "vertical-align": "middle"});
  $("#listTableProduksi  > tbody tr td").css({"text-align": "center", "vertical-align": "middle"});
});
</script>
<style type="text/css">
	#an{
		width: 13%;
		height: 29px;
		margin-left: 836px;
		margin-top: 17px;
		margin-bottom: -31px;
	}
	#s{
		float: left;
		width: 10%;
		margin-top: 1px;
		margin-left: 967px;
		margin-bottom: -32px;
	}
</style>
</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
            <div class="panel-heading">
            	<h2>Rekap Tahun Produksi</h2>
            </div>
            
            <div class="panel-body">
               	<s:form namespace="/produksi" id="form">
					<s:textfield name="produksi.nik" placeholder="NIK Karyawan" id="an"/>
					<s:submit value="Cari data" action="searchToYearProduksi" id="s" />
				</s:form>
				<display:table id="listTableProduksi" name="listProduksi" pagesize="10" export="true"
					 requestURI="/produksi/searchToYearProduksi.action" class="table table-bordered table-hover table-striped" >
					<display:column title="Nik Karyawan " property="nik" />
					<display:column title="Hasil Proses" property="hasilProses" />
					<display:column title="Reject Proses" property="rejectProses"  />
					<display:column title="Target Harian" property="targetHarian" />
					<display:column title="Persentase Pencapaian" property="persenPencapaian" format="{0,number,00.00} %"/>
					<display:setProperty name="export.pdf.filename" value="ReportProduksi.pdf"/>
					<display:setProperty name="export.excel.filename" value="ReportProduksi.xlsx"/>			
				</display:table>
            </div>
       </div>
	</s:div>
</body>
</html>