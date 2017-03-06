package com.id.ga.modul.mapper;

import java.util.List;

import com.id.ga.modul.model.Absensi;

public interface AbsensiMapper {

	Absensi selectWhereID(Absensi recordAbsensi);
	List<Absensi> selectAll(Absensi recordAbsensi);
	List<Absensi> selectToYear(Absensi recordYear);
	int maxId(Absensi id);
	int countAbsensi(Absensi hadir);
	int insertRecordAbsensi(Absensi record);
	int insertRecordBySystem(Absensi record);
	int updateRecordAbsensi(Absensi record);
	int deletRecordAbsensi(Absensi record);
}
