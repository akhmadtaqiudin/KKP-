package com.id.ga.modul.mapper;

import java.util.List;

import com.id.ga.modul.model.Produksi;

public interface ProduksiMapper {

	Produksi selectWhereId(Produksi record);
	List<Produksi> selectAll(Produksi produksi);
	List<Produksi> selectToYear(Produksi produksi);
	int selectMax(Produksi record);
	int insertRecordProduksi(Produksi record);
	int updateRecordProduksi(Produksi record);
	int deletRecordProduksi(Produksi record);
}
