package com.hk.update;
import java.io.IOException;


import org.jsoup.Jsoup;
import org.jsoup.select.Elements;

public class xmlUpdate {
	
		public static void main(String[] args) throws IOException {
		org.jsoup.nodes.Document doc=
				Jsoup.connect("http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA10/HRDPOA10_1.jsp?authKey=AUH4A14dZOUPfSzwB1njsyBwRBT1Hd1H&returnType=XML&outType=1&pageNum=1&pageSize=100&srchTraStDt=20180101&srchTraEndDt=20190228&srchKeco1=20&sort=ASC&sortCol=TR_STT_DT").get();
		Elements datas = doc.select("scn_list");
		for(int i = 0; i < datas.size(); i++){
			/*검색 조건분류*/
			System.out.println(String.valueOf(datas.get(i).select("title"))); //과정명
			System.out.println(String.valueOf(datas.get(i).select("subTitle"))); //학원명
			System.out.println(String.valueOf(datas.get(i).select("address"))); //지역명   
		
			/*과정상세페이지에서 불러올 정보*/
			/*ex)-학원명,과정명,개강일*/
			System.out.println(String.valueOf(datas.get(i).select("title"))); //이거를 입력한 값으로 받아와!! ㅇㅋ??
			System.out.println(String.valueOf(datas.get(i).select("subTitle")));
			System.out.println(String.valueOf(datas.get(i).select("traStartDate")));
			
			
		}
		}
	}


	  

