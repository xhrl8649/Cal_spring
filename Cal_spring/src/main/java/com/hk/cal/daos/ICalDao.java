package com.hk.cal.daos;

import java.util.List;

import com.hk.cal.dtos.CalDto;

public interface ICalDao {
	public List<CalDto> getCalList(String m_id, String yyyyMMdd);
	public CalDto getCalBoard(int ac_seq);
	public List<CalDto> getCalViewList(String ac_name, String yyyyMMdd);
}
