<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NGK</title>
<jsp:include page="/pages/templates/template.jsp"></jsp:include>
<script>
  $( function() {
    $("#selectNik").on("change", function(){
		var varnik = $("#selectNik").val();	
		if(varnik==""){
			$("#nama").val("");
			$("#section").val("");
		}
		if(varnik!=""){
			var parent = "${pageContext.request.contextPath}";
			$.ajax({
			   url: parent+"/karyawan/SelectByJson.action?nik="+varnik,
			   success:  function(modelKaryawan){
				$("#nama").val(modelKaryawan.namaKaryawan);
				$("#section").val(modelKaryawan.section);
			   },
			   error: function(req, status, err){
				alert("gagal melihat database")
			   }
			});
		}
	});

	if($("#selectNik").val()==""){
		$("#nama").val("");
		$("#section").val("");
	}else{
		var parent = "${pageContext.request.contextPath}";
			$.ajax({
			   url: parent+"/karyawan/SelectByJson.action?nik="+varnik,
			   success:  function(modelKaryawan){
				$("#nama").val(modelKaryawan.namaKaryawan);
				$("#section").val(modelKaryawan.section);
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
<s:action namespace="/karyawan" name="selectListKaryawan" id="slk"/>
	<s:div cssClass="container">
	<s:div cssClass="header">
		<h2>Tambah Data Produksi</h2>
	</s:div>
		<div class="col-md-6">
		<s:form namespace="/produksi" method="post" theme="bootstrap" cssClass="form-horizontal" id="input">
			<s:select id="selectNik" list="#slk.listKaryawan" listKey="nik" listValue="nik" name="produksi.nik" label="Nik Karyawan " labelSeparator=":" />
			<s:textfield id="nama" name="produksi.namaKaryawan" label="Nama Karyawan " labelSeparator=":"></s:textfield>
			<s:textfield id="section" name="produksi.section" label="Section" labelSeparator=":"></s:textfield>
			<s:textfield name="produksi.hasilProses" label="Hasil Proses " labelSeparator=":"></s:textfield>
			<s:textfield name="produksi.rejectProses" label="Reject Proses " labelSeparator=":" />
			<s:textfield name="produksi.targetHarian" label="Target Harian " labelSeparator=":" />			
			<div class="footer">
				<s:submit action="EditeProduksi" value="Simpan" cssClass="btn btn-primary"/>
				<s:submit action="searchProduksi" value="Batal" cssClass="btn btn-default"/>
			</div>
		</s:form>
		</div>
		<div class="col-md-6"></div>
	</s:div>
</body>
</html>