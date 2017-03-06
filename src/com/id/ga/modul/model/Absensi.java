package com.id.ga.modul.model;

import java.util.Date;

public class Absensi {

	private String idAbsensi;
	private Date tanggal;
	private String nik;
	private String namaKaryawan;
	private String section;
	private int hadir;
	private int alpha;
	private int izin;
	private int sakit;
	private int persenPencapaian;
	private Date tanggalAwal;
	private Date tanggalAkhir;
	public String getIdAbsensi() {
		return idAbsensi;
	}
	public void setIdAbsensi(String idAbsensi) {
		this.idAbsensi = idAbsensi;
	}
	public Date getTanggal() {
		return tanggal;
	}
	public void setTanggal(Date tanggal) {
		this.tanggal = tanggal;
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
	public int getHadir() {
		return hadir;
	}
	public void setHadir(int hadir) {
		this.hadir = hadir;
	}
	public int getAlpha() {
		return alpha;
	}
	public void setAlpha(int alpha) {
		this.alpha = alpha;
	}
	public int getIzin() {
		return izin;
	}
	public void setIzin(int izin) {
		this.izin = izin;
	}
	public int getSakit() {
		return sakit;
	}
	public void setSakit(int sakit) {
		this.sakit = sakit;
	}
	public int getPersenPencapaian() {
		return persenPencapaian;
	}
	public void setPersenPencapaian(int persenPencapaian) {
		this.persenPencapaian = persenPencapaian;
	}
	public Date getTanggalAwal() {
		return tanggalAwal;
	}
	public void setTanggalAwal(Date tanggalAwal) {
		this.tanggalAwal = tanggalAwal;
	}
	public Date getTanggalAkhir() {
		return tanggalAkhir;
	}
	public void setTanggalAkhir(Date tanggalAkhir) {
		this.tanggalAkhir = tanggalAkhir;
	}
}
