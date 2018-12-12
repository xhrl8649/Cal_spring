package com.hk.cal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.cal.daos.ICalDao;
import com.hk.cal.dtos.CalDto;

@Service
public class CalService implements ICalService{

	@Autowired
	private ICalDao calDao;
	
    @Override
    public List<CalDto> getCalList(String m_id, String yyyyMMdd){
    	return calDao.getCalList(m_id, yyyyMMdd);
    }
    
	public CalDto getCalBoard(int ac_seq) {
		return calDao.getCalBoard(ac_seq);
	}
	public List<CalDto> getCalViewList(String ac_name, String yyyyMMdd){
		return calDao.getCalViewList(ac_name, yyyyMMdd);
	}
	
	
}
