package com.id.ga.modul.model;

import java.util.Date;

public class Karyawan {

	private String nik;
	private String namaKaryawan;
	private String tempatLahir;
	private Date tanggalLahir;
	private String jenisKelamin;
	private String status;
	private String agama;
	private String alamat;
	private String kontak;
	private String section;
	private String tanggalString;
	private String targetProduksi;
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
	public String getTempatLahir() {
		return tempatLahir;
	}
	public void setTempatLahir(String tempatLahir) {
		this.tempatLahir = tempatLahir;
	}
	public Date getTanggalLahir() {
		return tanggalLahir;
	}
	public void setTanggalLahir(Date tanggalLahir) {
		this.tanggalLahir = tanggalLahir;
	}
	public String getJenisKelamin() {
		return jenisKelamin;
	}
	public void setJenisKelamin(String jenisKelamin) {
		this.jenisKelamin = jenisKelamin;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAgama() {
		return agama;
	}
	public void setAgama(String agama) {
		this.agama = agama;
	}
	public String getAlamat() {
		return alamat;
	}
	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	public String getKontak() {
		return kontak;
	}
	public void setKontak(String kontak) {
		this.kontak = kontak;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getTanggalString() {
		return tanggalString;
	}
	public void setTanggalString(String tanggalString) {
		this.tanggalString = tanggalString;
	}
	public String getTargetProduksi() {
		return targetProduksi;
	}
	public void setTargetProduksi(String targetProduksi) {
		this.targetProduksi = targetProduksi;
	}
}
