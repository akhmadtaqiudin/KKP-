package com.id.ga.modul.action;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.id.ga.core.action.CoreAction;
import com.id.ga.modul.mapper.ProduksiMapper;
import com.id.ga.modul.model.Produksi;

public class ProduksiAction extends CoreAction{
	
	private static final long serialVersionUID = 1L;
	private Produksi produksi;
	private List<Produksi> listProduksi = new ArrayList<Produksi>();
	private ProduksiMapper produksiMapper = (ProduksiMapper) new ClassPathXmlApplicationContext("beans-config.xml").getBean("produksiMapper");
	
	public String selectAll(){
		System.out.println("jalankan method selectAll");
		listProduksi = produksiMapper.selectAll(produksi);
		return SUCCESS;
	}
	public String selectWhereId(){
		System.out.println("jalankan method selectWhereId");
		produksi = produksiMapper.selectWhereId(produksi);
		return SUCCESS;
	}
	public String selectToYear(){
		System.out.println("jalankan method selectToYear");
		listProduksi = produksiMapper.selectToYear(produksi);
		return SUCCESS;
	}
	public String insertProduksi(){
		System.out.println("jalankan method insert produksi");

		int hp = Integer.parseInt(produksi.getHasilProses());
		int th = Integer.parseInt(produksi.getTargetHarian());
		
		BigDecimal persen = new BigDecimal(hp/th*100);
		produksi.setPersenPencapaian(persen);
		produksiMapper.insertRecordProduksi(produksi);
		return SUCCESS;
	}
	public String updateProduksi(){
		System.out.println("jalankan method update produksi");
		produksiMapper.updateRecordProduksi(produksi);
		return SUCCESS;
	}
	public String deleteProduksi(){
		System.out.println("jalankan method delete produksi");
		produksiMapper.deletRecordProduksi(produksi);
		return SUCCESS;
	}
	public Produksi getProduksi() {
		return produksi;
	}
	public void setProduksi(Produksi produksi) {
		this.produksi = produksi;
	}
	public List<Produksi> getListProduksi() {
		return listProduksi;
	}
	public void setListProduksi(List<Produksi> listProduksi) {
		this.listProduksi = listProduksi;
	}
	public ProduksiMapper getProduksiMapper() {
		return produksiMapper;
	}
	public void setProduksiMapper(ProduksiMapper produksiMapper) {
		this.produksiMapper = produksiMapper;
	}
}
