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
    $( "#tanggal" ).datepicker();
  });
</script>
</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
        	<div class="panel-heading">
              	<h2>Update Data Absensi</h2>
            </div>
            <s:action namespace="/karyawan" name="selectListKaryawan" id="slk" />
			<div class="panel-body">
				<s:form namespace="/absensi" action="EditeAbsensi" method="post" theme="bootstrap" cssClass="form-horizontal" id="input">
					<s:textfield name="absensi.tanggal" label="Tanggal " labelSeparator=":" id="tanggal"></s:textfield>
					<s:select list="#slk.listKaryawan" name="absensi.nik" listKey="nik" listValue="nik" label="NIK Karyawan " labelSeparator=":"></s:select>
					<s:textfield name="absensi.hadir" label="Hadir " labelSeparator=":"/>
					<s:textfield name="absensi.alpha" label="Alpha " labelSeparator=":"/>
					<s:textfield name="absensi.izin" label="Izin " labelSeparator=":"/>
					<s:textfield name="absensi.sakit" label="Sakit " labelSeparator=":"/>
					<s:submit value="Save" cssClass="btn btn-primary"></s:submit>
					<s:a id="c" cssClass="btn btn-default" href="/SPK/absensi/searchAbsensi.action">Cansel</s:a>
				</s:form>
			</div>
		</div>
	</s:div>
</body>
</html>