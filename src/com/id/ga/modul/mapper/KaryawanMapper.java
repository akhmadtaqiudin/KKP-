package com.id.ga.modul.mapper;

import java.util.List;

import com.id.ga.modul.model.Karyawan;

public interface KaryawanMapper {

	Karyawan selectWhereNik(Karyawan nik);
	Karyawan selectNikKaryawan(String nik);
	List<Karyawan> selectAll(Karyawan karyawan);
	List<Karyawan> selectListKaryawan();
	int selectMax(Karyawan karyawan);
	int insertRecordKaryawan(Karyawan record);
	int updateRecordKaryawan(Karyawan record);
	int deletRecordWhereNik(Karyawan record);
}
