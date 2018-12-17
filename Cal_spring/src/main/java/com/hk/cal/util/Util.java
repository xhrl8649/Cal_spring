package com.hk.cal.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.util.List;

import com.hk.cal.dtos.CalDto;

public class Util {
	
	//action 태그에 usebean태그는 객체를 담고 가져오는 기능을 구현--> dto객체
	private String toDates;
	
	public static String getCalViewList(int i, List<CalDto> clist) {
		String day=(i+"").substring(8, 10);
		String calList=""; 
		for(CalDto calDto : clist) {
			if(calDto.getAc_cre_date().subSequence(6, 8).equals(day)) {
				calList+="<p>"
						+(calDto.getAc_name().length()>6?calDto.getAc_name()
								.substring(0, 5)+"..":calDto.getAc_name())
							+"</p>";
			}	
		}
		return calList;
	}
	
	
/*	public void setToDates(String mDate, String m) {
		//날짜형식: yyyy-MM-dd
		//Date타입으로 변환하려면 해당 문자열을 Date형식으로 만들어야한다
		String year=mDate.substring(0, 4);
		String month=mDate.substring(6, 7);
		String day=mDate.substring(8, 9);
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy년MM월dd일 ");
		Timestamp tm=Timestamp.valueOf(m);//문자열을 Date타입으로 변환
		this.toDates=sdf.format(tm);
	}*/
	
	public String getToDates() {
		return toDates;
	}
	
	//토, 일 폰트색상 지정
	public static String fontColor(int date, int dayOfWeek) {
		// 해당일과 공백수 합친 다음 % 7 ==0 -> 토 , ==1 -> 일
		String color = "";
		if((dayOfWeek-1+date)%7==0)
			color = "blue";
		else if((dayOfWeek-1+date)%7==1)
			color = "red";
		else
			color="black";
		return color;
	}
}
