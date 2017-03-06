package com.id.ga.modul.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.id.ga.core.action.CoreAction;
import com.id.ga.modul.mapper.AbsensiMapper;
import com.id.ga.modul.model.Absensi;

public class AbsensiAction extends CoreAction {
	
	private static final long serialVersionUID = 1L;
	private Absensi absensi;
	private List<Absensi> listAbsensi = new ArrayList<Absensi>();
	private AbsensiMapper absensiMapper = (AbsensiMapper) new ClassPathXmlApplicationContext("beans-config.xml").getBean("absensiMapper");
	
	public String selectAll(){
		System.out.println("jalankan method selectAll");

		listAbsensi = absensiMapper.selectAll(absensi);
		return SUCCESS;
	}
	public String selectWhereID(){
		System.out.println("jalankan method selectWhereID");
		absensi = absensiMapper.selectWhereID(absensi);
		return SUCCESS;
	}
	public String selectToYear(){
		System.out.println("Jalankan Method selectToYear");
		
		listAbsensi = absensiMapper.selectToYear(absensi);
		return SUCCESS;
	}
	public String insertAbsensi(){
		System.out.println("jalankan method insertAbsensi");
		String id="";
		id += "AK";

		int x = 0;
		x = absensiMapper.maxId(absensi);
		x++;
			if(x <99 && x>=10){
				id+="00"+x;
			}else if(x>99 && x<1000){
				id+="0"+x;
			}else if(x>=999){
				id+=x;
			}else{
				id+="000"+x;
			}
			absensi.setIdAbsensi(id);
			absensiMapper.insertRecordAbsensi(absensi);
			return SUCCESS;	
	}
	public String insertBySystem(){
		System.out.println("jalankan method insertBySystem");
		String id="";
		int y=0;
		
		id += "AK";
		int x = absensiMapper.maxId(absensi);
		x++;
		
		if(x <99 && x>=10){
			id+="00"+x;
		}else if(x>99 && x<1000){
			id+="0"+x;
		}else if(x>=999){
			id+=x;
		}else{
			id+="000"+x;
		}
		absensi.setIdAbsensi(id);
		absensi.setHadir(1);
		y = absensiMapper.countAbsensi(absensi);
		if(y>0){
			addActionError("Data dengan NIK "+absensi.getNik()+" pada Tanggal "+absensi.getTanggal()+" sudah terdaftar pada database");
			return ERROR;
		}else{
			absensiMapper.insertRecordBySystem(absensi);
			addActionMessage("Absen berhasil, Selamat bekerja");
			return SUCCESS;	
		}
	}
	public String updateAbsensi(){
		System.out.println("jalankan method update absensi");
		absensiMapper.updateRecordAbsensi(absensi);
		return SUCCESS;
	}
	public String deleteAbsensi(){
		System.out.println("jalankan method delete absensi");
		absensiMapper.deletRecordAbsensi(absensi);
		return SUCCESS;
	}	
	public Absensi getAbsensi() {
		return absensi;
	}
	public void setAbsensi(Absensi absensi) {
		this.absensi = absensi;
	}
	public List<Absensi> getListAbsensi() {
		return listAbsensi;
	}
	public void setListAbsensi(List<Absensi> listAbsensi) {
		this.listAbsensi = listAbsensi;
	}
	public AbsensiMapper getAbsensiMapper() {
		return absensiMapper;
	}
	public void setAbsensiMapper(AbsensiMapper absensiMapper) {
		this.absensiMapper = absensiMapper;
	}
}
