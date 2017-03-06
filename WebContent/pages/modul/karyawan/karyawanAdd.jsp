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
    $( "#tgl" ).datepicker({
      yearRange: "1980:2000",
      changeMonth: true,
      changeYear: true
    });
    $("#tlp").numeric();
  });
</script>
</head>
<body>
	<s:div cssClass="container">
		<div class="panel with-nav-tabs panel-success" >
        	<div class="panel-heading">
              	<h2>Input Data Karyawan</h2>
            </div>
			<div class="panel-body">
				<s:form namespace="/karyawan" method="post" theme="bootstrap" cssClass="form-horizontal" id="input">
					<s:textfield name="karyawan.namaKaryawan" label="Nama Karyawan " labelSeparator=":"></s:textfield>
					<s:select list="#{'':'Ambon','Bali':'Bali','Balikpapan':'Balikpapan','Bandung':'Bandung',
							'Banjarmasin':'Banjarmasin','Banyuwangi':'Banyuwangi','Batang':'Batang','Bengkulu':'Bengkulu',
							'Bima':'Bima','Binjai':'Binjai','Bogor':'Bogor','Cikampek':'Cikampek','Cilacap':'Cilacap',
							'Cirebon':'Cirebon','Denpasar':'Denpasar','Gorontalo':'Gorontalo','Gresik':'Gresik',
							'Indramayu':'Indramayu','Jakarta Barat':'Jakarta Barat','Jakarta Selatan':'Jakarta Selatan',
							'Jakarta Timur':'Jakarta Timur','Jakarta Utara':'Jakarta Utara','Jayapura':'Jayapura',
							'Jepara':'Jepara','Karawang':'Karawang','Klaten':'Klaten','Kotabaru':'Kotabaru','Kupang':'Kupang',
							'Manado':'Manado','Mataram':'Mataram','Medan':'Medan','Makasar':'Makasar','Padang':'Padang'}" 
							name="karyawan.tempatLahir" label="Tempat Lahir " labelSeparator=":" />
					<s:textfield name="karyawan.tanggalLahir" label="Tanggal Lahir " labelSeparator=":" id="tgl" ></s:textfield>
					<s:select name="karyawan.jenisKelamin" label="Jenis Kelamin " labelSeparator=":" list="#{'Laki-laki':'Laki-laki','Wanita':'Wanita' }" />
					<s:select list="#{'Menikah':'Menikah','Belum Menikah':'Belum Menikah'}" name="karyawan.status" label="Status " labelSeparator=":" />
					<s:select list="#{'Islam':'Islam','Kristen':'Kristen','Katolik':'Katolik','Budha':'Budha' }" name="karyawan.agama" label="Agama " labelSeparator=":"></s:select>
					<s:textarea name="karyawan.alamat" label="Alamat " labelSeparator=":" />
					<s:textfield name="karyawan.kontak" label="No.Telephon " labelSeparator=":" id="tlp"/>
					<s:select list="#{'Cutting':'Cutting','Finishing':'Finishing','Packing':'Packing','Sewing':'Sewing','Washing':'Washing'}" name="karyawan.section" label="Section " labelSeparator=":" />
					<div class="footer">
					<s:submit action="SaveKaryawan" value="Simpan" cssClass="btn btn-primary"/>
					<s:submit action="searchKaryawan" value="Batal" cssClass="btn btn-default"/>
					</div>
				</s:form>
			</div>
		</div>
	</s:div>
</body>
</html>
