package com.hk.cal.daos;

import java.util.List;


import com.hk.cal.dtos.CalDto;

public interface ICalDao {
	public List<CalDto> getCalList();
	public CalDto getCalBoard(String ac_name);
	
}
