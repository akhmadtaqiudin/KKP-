package com.id.ga.modul.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.id.ga.core.action.CoreAction;
import com.id.ga.modul.mapper.KaryawanMapper;
import com.id.ga.modul.model.Karyawan;

public class KaryawanAction extends CoreAction{

	private static final long serialVersionUID = 1L;
	private Karyawan karyawan;
	private String nik;
	private String namaKaryawan;
	private String section;
	private String targetProduksi;
	private List<Karyawan> listKaryawan = new ArrayList<Karyawan>();
	private KaryawanMapper karyawanMapper = (KaryawanMapper) new ClassPathXmlApplicationContext("beans-config.xml").getBean("karyawanMapper");
	
	public String selectAll(){
		System.out.println("jalankan method selectAll");
		
		/*if(karyawan.getNamaKaryawan()==null){
			karyawan.setNamaKaryawan("");
		}*/
		//karyawan.setNik(null);
		listKaryawan = karyawanMapper.selectAll(karyawan);
		return SUCCESS;
	}
	public String selectWhereNik(){
		System.out.println("jalankan method selectWhereNik");
		karyawan = karyawanMapper.selectWhereNik(karyawan);
		return SUCCESS;
	}
	public String selectListKaryawan(){
		System.out.println("jalankan method selectListKaryawan");
		listKaryawan = karyawanMapper.selectListKaryawan();
		/*System.out.println("nilai nik = "+karyawan.getNik());
		System.out.println("nilai nama = "+karyawan.getNamaKaryawan());
		System.out.println("nilai section = "+karyawan.getSection());*/
		return SUCCESS;
	}
	public String selectJson(){
		System.out.println("jalankan method selectJson "+getNik());
		karyawan = karyawanMapper.selectNikKaryawan(nik);
		System.out.println("Param Json "+karyawan.getNik());
		System.out.println("Param Json "+ karyawan.getNamaKaryawan());
		System.out.println("Param Json "+ karyawan.getSection());
		return SUCCESS;
	}
	public String insert(){
		System.out.println("jalankan method insert");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			String d[] = sdf.format(new Date()).split("/"),date="";
					date+=d[0]+d[1]+d[2];
			
			int z = karyawanMapper.selectMax(karyawan);
			z++;
				if(z <99 && z>=10){
					date+="00"+z;
				}else if(z>99 && z<1000){
					date+="0"+z;
				}else if(z>=999){
					date+=z;
				}else{
					date+="000"+z;
				}
				karyawan.setNik(date);
				karyawanMapper.insertRecordKaryawan(karyawan);
		return SUCCESS;
	}
	public String update(){
		System.out.println("jalankan method update");
		karyawanMapper.updateRecordKaryawan(karyawan);
		return SUCCESS;
	}
	public String delet(){
		System.out.println("jalankan method delet");
		karyawanMapper.deletRecordWhereNik(karyawan);
		return SUCCESS;
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
	public String getTargetProduksi() {
		return targetProduksi;
	}
	public void setTargetProduksi(String targetProduksi) {
		this.targetProduksi = targetProduksi;
	}
	public Karyawan getKaryawan() {
		return karyawan;
	}
	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}
	public List<Karyawan> getListKaryawan() {
		return listKaryawan;
	}
	public void setListKaryawan(List<Karyawan> listKaryawan) {
		this.listKaryawan = listKaryawan;
	}
	public KaryawanMapper getKaryawanMapper() {
		return karyawanMapper;
	}
	public void setKaryawanMapper(KaryawanMapper karyawanMapper) {
		this.karyawanMapper = karyawanMapper;
	}
}
