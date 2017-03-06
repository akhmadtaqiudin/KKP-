<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GA</title>
<jsp:include page="/pages/templates/template.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		$("#selectNik").on("change", function(){
			var varid = $("#selectNik").val();
			if(varid==""){
				$("#nama").val("");
				$("#section").val("");
				$("#target").val("");
			}
			if(varid!=""){
				var parent = "${pageContext.request.contextPath}";
				$.ajax({
				   url: parent+"/karyawan/SelectByJson.action?nik="+varid,
				   success:  function(responseDariServer){
					$("#nama").val(responseDariServer.namaKaryawan);
					$("#section").val(responseDariServer.section);
					$("#target").val(responseDariServer.targetProduksi);
				   },
				   error: function(req, status, err){
					alert("gagal melihat database")
				   }
				});
			}
		});
	
		if($("selectNik").val()==""){
			$("#nama").val("");
			$("#section").val("");
			$("#target").val("");
		}else{
			var parent = "${pageContext.request.contextPath}";
				$.ajax({
				   url: parent+"/karyawan/SelectByJson.action?nik="+varid,
				   success:  function(responseDariServer){
					$("#nama").val(responseDariServer.namaKaryawan);
					$("#section").val(responseDariServer.section);
					$("#target").val(responseDariServer.targetProduksi);
				   },
				   error: function(req, status, err){
					alert("gagal melihat database")
				   }
			});
		}
	});
</script>
</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
        	<div class="panel-heading">
              	<h2>Input Data Produksi</h2>
            </div>
			<s:action namespace="/karyawan" name="selectListKaryawan" id="slk"/>
			<div class="panel-body">
				<s:form namespace="/produksi" method="post" theme="bootstrap" cssClass="form-horizontal" id="input">
					<s:select id="selectNik" list="#slk.listKaryawan" listKey="nik" listValue="nik" name="produksi.nik" label="Nik Karyawan " labelSeparator=":" />
					<s:textfield id="nama" name="produksi.namaKaryawan" label="Nama Karyawan " labelSeparator=":"></s:textfield>
					<s:textfield id="section" name="produksi.section" label="Section" labelSeparator=":"></s:textfield>
					<s:textfield name="produksi.hasilProses" label="Hasil Proses " labelSeparator=":"></s:textfield>
					<s:textfield name="produksi.rejectProses" label="Reject Proses " labelSeparator=":" />
					<s:textfield id="target" name="produksi.targetHarian" label="Target Harian " labelSeparator=":" />			
					<div class="footer">
						<s:submit action="SaveProduksi" value="Simpan" cssClass="btn btn-primary"/>
						<s:submit action="searchProduksi" value="Batal" cssClass="btn btn-default"/>
					</div>
				</s:form>
			</div>
		</div>
	</s:div>
</body>
</html>