package com.id.ga.modul.model;

import java.math.BigDecimal;
import java.util.Date;

public class Produksi {

	private String idProduksi;
	private String nik;
	private String namaKaryawan;
	private String section;
	private String hasilProses;
	private String rejectProses;
	private String targetHarian;
	private BigDecimal persenPencapaian;
	private Date tanggal;
	public String getIdProduksi() {
		return idProduksi;
	}
	public void setIdProduksi(String idProduksi) {
		this.idProduksi = idProduksi;
	}
	public String getNik() {
		return nik;
	}
	public void setNik(String nik) {
		this.nik = nik;
	}
	public String getNamaKaryawan() {
		return namaKaryawan;
	}
	public void setNamaKaryawan(String namaKaryawan) {
		this.namaKaryawan = namaKaryawan;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getHasilProses() {
		return hasilProses;
	}
	public void setHasilProses(String hasilProses) {
		this.hasilProses = hasilProses;
	}
	public String getRejectProses() {
		return rejectProses;
	}
	public void setRejectProses(String rejectProses) {
		this.rejectProses = rejectProses;
	}
	public String getTargetHarian() {
		return targetHarian;
	}
	public void setTargetHarian(String targetHarian) {
		this.targetHarian = targetHarian;
	}
	public BigDecimal getPersenPencapaian() {
		return persenPencapaian;
	}
	public void setPersenPencapaian(BigDecimal persenPencapaian) {
		this.persenPencapaian = persenPencapaian;
	}
	public Date getTanggal() {
		return tanggal;
	}
	public void setTanggal(Date tanggal) {
		this.tanggal = tanggal;
	}
}
