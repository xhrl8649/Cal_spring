package com.hk.cal.service;

import java.util.List;

import com.hk.cal.dtos.CalDto;

public interface ICalService {
	
	public List<CalDto> getCalList();
	public CalDto getCalBoard(String ac_name);

}
