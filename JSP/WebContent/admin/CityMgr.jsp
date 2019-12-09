<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="cityMgr" class="AirFlying.CityMgr" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천 도시 관리</title>
<script language="JavaScript" src="script.js"></script>
 <style type="text/css">
    .th1{text-align:center; border:1px solid gray;background-color:#EAEAEA; width="72" height="45"}
    .th2 {border:1px solid gray; text-align:center; width="72" height="45"}
    .btn {background-color:#042759;font-weight:bold;color:#FFFFFF;border: none;border-radius:5px;}
    .id {background-color:#FFFFFF; border:0; outline:0;}
    </style>
</head>
<body>
<br><br>
  <%@ include file="Top.jsp" %>
    <br><br>
    <%Vector vResult = cityMgr.getCityList(); %>
   <div style="width:94%;text-align:center;">
  <table align="center">
  	<th class="th1">도시이름</th>
    <th class="th1">파일 이름</th>
    <th class="th1">상태</th>
    <th class="th1">처리</th>
    <%
    for(int i = 0; i < vResult.size(); i++) {
    	CityBean cityBean = (CityBean)vResult.get(i);
    %>
    <tr>
   	 	<td class="th2"><%=cityBean.getCity_name() %></td>
    	<td class="th2"><%=cityBean.getCity_file() %></td>
    	<td class="th2"><%=cityBean.getCity_io() %></td>
   		<td class="th2" style="align:center">
   		<a class="btn" href="javascript:UpdateCity('<%=cityBean.getCity_name()%>')">관리</a>
    	</td>
    </tr>
    <%} %>
    </table>
    </div>

    <%@ include file="Bottom.jsp" %>
    
    <form name="updateCity" method="post" action="UpdateCity.jsp">
    	<input type=hidden name="city_name">
    </form>
</body>
<script>
function UpdateCity(city_name) {
	document.updateCity.city_name.value=city_name;
	document.updateCity.submit();
}
</script>
</html>