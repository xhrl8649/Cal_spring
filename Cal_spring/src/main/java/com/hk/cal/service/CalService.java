package com.hk.cal.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.cal.dtos.CalDto;
import com.hk.cal.daos.ICalDao;


@Service
public class CalService implements ICalService{

	@Autowired
	private ICalDao calDao;

	@Override
	public List<CalDto> getCalList() {
		return calDao.getCalList();
	}

	@Override
	public CalDto getCalBoard(String ac_name) {
		return calDao.getCalBoard(ac_name);
	}
	
}
