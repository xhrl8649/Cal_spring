<%@page import="org.apache.catalina.tribes.io.DirectByteArrayOutputStream"%>
<%@page import="com.hk.cal.service.CalService"%>
<%@page import="com.hk.cal.dtos.CalDto"%>
<%@page import="java.util.List"%>
<%@page import="com.hk.cal.daos.CalDao"%>
<%@page import="com.hk.cal.util.Util"%>
<%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<style>
.srchTraArea1, .process_Kword{ list-style-type: none;  }

  #caltable{
      border-collapse: collapse;
      margin-left: 30px;
   }
   
   #caltable th{
      border: 1px solid grey;
   }
   
   #caltable td{
      border: 1px solid grey;
      background-color: white;      
      width: 120px;
      height: 120px;
        text-align:left;
        vertical-align: top;
      position : relative;   
   }
   .lastDayNum {
      display : none;
   }
   a {
      text-decoration: none;   
   }
   
   a:link {
      color : black;
   }
   
   a:visited {
      color : black;
   
   }
   
   a:active {
      color : #2E2EFE;
   
   }
   
   .cPreview {
      background-color: #2E2EFE;
      color: white;
      font-weight: bold;
      position: absolute;   
      top:-25px;
      left:-30px;
      width:40px;
      height:40px;
      border-radius: 40px 40px 1px 40px ;
      text-align: center;
        line-height: 40px;
   }
   
   p{
      color: white;
      background-color: #2E2EFE;
      font-weight: bold;
      margin: 3px 0;
   }
</style>
<script type="text/javascript">
	$(function(){
		 //현재 마우스 이벤트가 발생된 .countView 태그의 a를 구해줌
		var DAY = $(".dateNum").text().trim();
		var MONTH = $(".m").text().trim();
		var YEAR = $(".y").text().trim();
		console.log(YEAR+MONTH+DAY);
		var yyyyMMdd= [];
	}),
	$("#dateNum").click(function(){
		var countView = $(this);
		var YEAR=$(".y").text().trim();
		var MONTH=$(".m").text().trim();
		var date= countView.text().trim();
		var yyyyMMdd=YEAR+MONTH+date;
		alert(yyyyMMdd);
	});



</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캘린더</title>
</head>
<%
	String paramYear=request.getParameter("year");
	String paramMonth=request.getParameter("month");
	
	Calendar cal=Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;
	int day = cal.get(Calendar.DATE);
	
	
  	
  	if(paramYear != null){
		year=Integer.parseInt(paramYear);
	}
	if(paramMonth != null){
		month=Integer.parseInt(paramMonth);
	}
	
	if(month>12){
		month=1;
		year++;
	}
	if(month<1){//월이 감소하다 1보다 작아지면 0,-1,-2..되는 거 처리
		month=12;
		year--;
	}
	//----------------------------------------------------
	cal.set(year, month-1, 1);	
	int dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);//1일의 요일을 구함
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	CalDao dao=new CalDao();
	/* List<CalDto> clist = dao.getCalList(); //DB값목록 가져오기 */

	/* List<CalDto> clist=dao.getCalView("한경컴퓨터학원", yyyyMMdd); */
	
/* 	CalDao dao=new CalDao();
	String yyyyMM=year+Util.isTwo(String.valueOf(month));//또하나 month+""
	List<CalDto> cList=dao.getCalView("kbj", yyyyMM); */
	
	//--------------------------------------------------------
	
%>
<body>
<%-- <% Util util =new Util(); util.setArrowNbsp(depth); %> --%>
<jsp:useBean id="util" class="com.hk.cal.util.Util" />
      <h2>지역</h2>
      <div id="Search">
       <div id="area" >
      <ul class="srchTraArea1">
         <li><input type="checkbox" name="chk_area" value="서울">서울</li>
         <li><input type="checkbox" name="chk_area" value="경기">경기</li>
         <li><input type="checkbox" name="chk_area" value="인천">인천</li>
         <li><input type="checkbox" name="chk_area" value="대전">대전</li>
         <li><input type="checkbox" name="chk_area" value="세종">세종</li>
         <li><input type="checkbox" name="chk_area" value="충남">충남</li>
         <li><input type="checkbox" name="chk_area" value="충복">충복</li>
         <li><input type="checkbox" name="chk_area" value="광주">광주</li>
         <li><input type="checkbox" name="chk_area" value="전남">전남</li>
      </ul>
      </div>
      <div id="kword" >
         <h2>과정</h2>
         <ul class="process_Kword">
            <li><input type="checkbox" name="chk_lang" value="C">C</li>
            <li><input type="checkbox" name="chk_lang" value="C++">C++</li>
            <li><input type="checkbox" name="chk_lang" value="JAVA">JAVA</li>
            <li><input type="checkbox" name="chk_lang" value="PYTHON">PYTHON</li>
            <li><input type="checkbox" name="chk_lang" value="HTML5">HTML5</li>
            <li><input type="checkbox" name="chk_lang" value="CSS">CSS</li>
            <li><input type="checkbox" name="chk_lang" value="JSP">JSP</li>
            <li><input type="checkbox" name="chk_lang" value="JAVASCRIPT">JAVASCRIPT</li>
         </ul>
      </div>
      <div id="aca_name">
      <!-- <input type="text" class="w100p" id="trainstCstmrNm" name="trainstCstmrNm" value=""> -->
      <h2>학원명</h2>
         <span><input type="text" name="academy_name" id="AcademyName"></span>
         <span><button id="search" onclick="SearchFunc()" style="float:left;">검색</button></span>
      </div>
   </div>

   <div id="Calendar">
   <table id="caltable">
          <caption>
            <a href="calendar.do?year=<%=year-1%>&month=<%=month%>">◁</a>
            <a href="calendar.do?year=<%=year%>&month=<%=month-1%>">◀</a>
            <span class="y"><%=year%></span>년 <span class="m"><%=month%></span>월
            <a href="calendar.do?year=<%=year%>&month=<%=month+1%>">▶</a>
            <a href="calendar.do?year=<%=year+1%>&month=<%=month%>">▷</a>
         </caption> 
      <tr>
         <th>일</th>
         <th>월</th>
         <th>화</th>
         <th>수</th>
         <th>목</th>
         <th>금</th>
         <th>토</th>
      </tr>
      <tr>
  <%

      for(int i=0;i<dayOfWeek-1;i++){
         out.print("<td>&nbsp;</td>");
      }
   
      for(int i=1;i<=lastDay;i++){
         %>
         <td>
            <a style="color:<%=Util.fontColor(i, dayOfWeek)%>" class="dateNum">
               <%=i%>
               <%
               String yyyyMMdddd =year+"-"+Util.isTwo(String.valueOf(month))+"-"+Util.isTwo(String.valueOf(i));
             	pageContext.setAttribute("yyyyMMdddd", yyyyMMdddd.trim());
               %>
            </a>   
	          <div class="clist">
	            <c:set var="yyyyMMdddd" value="${yyyyMMdddd}" ></c:set>
	          
	            <c:forEach items="${calViewList}" var="list">
				<c:set var="ac_cre_date" value="${list.ac_cre_date}"/>  
	           	<c:choose>
				  <c:when test="${yyyyMMdddd eq ac_cre_date}">
				  <a href=calDetail.do?ac_name=<c:url value="${list.ac_name}"></c:url>&ac_cre_date=<c:url value="${list.ac_cre_date}"></c:url>>
            		<c:out value="${list.ac_name}"/><br /></a>
				  </c:when>
				    <c:otherwise>		
				    </c:otherwise>
				</c:choose>
	           </c:forEach> 
        <%--   <c:forEach items="${calViewList}" var="list">
         		<a href="calDetail.do?ac_name="${list.ac_name}">
         		<a href=calDetail.do?ac_name=<c:url value="${list.ac_name}"></c:url>&ac_cre_date=<c:url value="${list.ac_cre_date}"></c:url>>
            <c:out value="${list.ac_name}"/>
            <c:out value="${list.ac_cre_date}"/><br  /></a>
          </c:forEach> --%>
			</div>
          </td>
         <% 
         //행을 바꿔주기---> 토요일은 공백수+현재날짜==7배수
         if((dayOfWeek-1+i)%7==0){//토요일이냐??
            out.print("</tr><tr>");
         }
       
      }// 날짜 출력 for문 종료
       for(int i =0; i<(7-((dayOfWeek-1+lastDay)%7))%7;i++)
         out.print("<td>&nbsp;</td>"); 
   %>
      </tr>
</table>
</div>
    <button type="button" id="CartAcademyCal" onclick="location.href='cartAcademyCal.do'" >찜한 학원일정 보기</button>
</body>
</html>