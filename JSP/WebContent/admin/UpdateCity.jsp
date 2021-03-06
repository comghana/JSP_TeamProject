<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 

	작성자: 장지은
	파일 이름: UpdateCity.jsp
	목적: 도시 이름을 가지고 out시킬껀지 in시킬껀지 결정

 --%>
<%@ page import="java.util.*, AirFlying.*" %>
<jsp:useBean id="cityMgr" class="AirFlying.CityMgr" />
<html>
<head>
<style>
.btn {background-color:#042759;font-weight:bold;color:#FFFFFF;border: none;border-radius:5px;}
div {position:relative; align:center;}
</style>
<script language="JavaScript" src="script.js"></script>
<%
	String city_name = request.getParameter("city_name");
	CityBean cityBean = cityMgr.getCity(city_name);
%>
<title>수정확인</title>
</head>
<body>
	<h3><%=cityBean.getCity_name() %></h3>
	</h3>상태 : <%= cityBean.getCity_io() %>
	<form name="reForm1" method="post" action="UpdateOutProc.jsp">
	<div>
	<input class="btn" type="submit" value="out으로수정">
	</input>
	<input type="hidden" name="city_name" value="<%=city_name %>">
	</div>
	</form>
	
	<form name="reForm2" method="post" action="UpdateInProc.jsp">
	<div>
	<input class="btn" type="submit" value="in으로수정">
	</input>
	<input type="hidden" name="city_name" value="<%=city_name %>">
	</div>
	</form>
</body>
</html>