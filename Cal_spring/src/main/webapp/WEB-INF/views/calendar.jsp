<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<style>
.srchTraArea1, .process_Kword{ list-style-type: none;  }
.process_Kword{ float: left; }  
h2{ float: left;}
#Calendar{ float: inherit; }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캘린더</title>
</head>
<body>
   <div id="search_bar">
      <div id="area" >
      <h2>지역</h2>
      <ul class="srchTraArea1" style="float:left; width:12%">
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
         <ul class="process_Kword" style="float:left; width:12%">
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
      <div id="aca_name" style="float:left; width:12%">
      <!-- <input type="text" class="w100p" id="trainstCstmrNm" name="trainstCstmrNm" value=""> -->
      <h2>학원명</h2>
         <span><input type="text" name="academy_name" id="AcademyName"></span>
         <span><button id="search" onclick="SearchFunc()" style="float:left;">검색</button></span>
      </div>
   </div>
   
   <div id="Calendar">
      <h1>일정달력표시</h1>
         <%-- <caption>
            <a href="calendar.jsp?year=<%=year-1%>&month=<%=month%>">◁</a>
            <a href="calendar.jsp?year=<%=year%>&month=<%=month-1%>">◀</a>
            <span class="y"><%=year%></span>년 <span class="m"><%=month%></span>월
            <a href="calendar.jsp?year=<%=year%>&month=<%=month+1%>">▶</a>
            <a href="calendar.jsp?year=<%=year+1%>&month=<%=month%>">▷</a>
         </caption> --%>
      <tr>
         <th>일</th>
         <th>월</th>
         <th>화</th>
         <th>수</th>
         <th>목</th>
         <th>금</th>
         <th>토</th>
      </tr>

      
      <button type="button" id="CartAcademyCal" onclick="location.href='cartAcademyCal.do'" >찜한 학원일정 보기</button>
      
   
   
   </div>
</body>
</html>