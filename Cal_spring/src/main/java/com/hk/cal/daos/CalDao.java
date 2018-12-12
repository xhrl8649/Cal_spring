package com.hk.cal.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.cal.dtos.CalDto;

@Repository
public class CalDao implements ICalDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace="com.hk.cal.";
	

	//일정목록조회: select문: 반환타입 List<CalDto> : 파라미터 ID, yyyyMMdd
	@Override
	public List<CalDto> getCalList(String m_id, String yyyyMMdd){
		return sqlSession.selectList(namespace+"getAllContent");
	/*	Map<String, String>map = new HashMap<String, String>();
		map.put("m_id", m_id);
		map.put("yyyyMMdd", yyyyMMdd);*/
	}
	//일정 상세조회
	@Override
	public CalDto getCalBoard(int ac_seq) {
		return sqlSession.selectOne(namespace+"getCalBoard", ac_seq);
		/*CalDto dto=null;
		Map<String, Integer>map=new HashMap<String, Integer>();
		map.put("ac_seq", ac_seq);*/
	}
	//달력에 해당 일의 학원명을 3개까지 출력하기
	@Override
	public List<CalDto> getCalViewList(String ac_name, String yyyyMMdd){
		return sqlSession.selectList(namespace+"getCalViewList");
	/*	Map<String, String>map = new HashMap<String, String>();
		map.put("ac_name", ac_name);
		map.put("yyyyMMdd", yyyyMMdd);*/
	}

}
