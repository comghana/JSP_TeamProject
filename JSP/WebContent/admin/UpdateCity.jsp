<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*" %>
<jsp:useBean id="cityMgr" class="AirFlying.CityMgr" />
<html>
<style>
.btn {background-color:#042759;font-weight:bold;color:#FFFFFF;border: none;border-radius:5px;}
div {position:relative; align:center;}
</style>
<script language="JavaScript" src="script.js"></script>
<%
	String city_name = request.getParameter("city_name");
	CityBean cityBean= cityMgr.getCity(city_name);
%>
<title>강퇴 확인</title>
</head>
<body>
	<form name="reForm" method="post" action="UpdateProc.jsp">
	<div>
	<h3><%=cityBean.getCity_name()%></h3>
	<input class="btn" type="submit" value="상태변경">
	</input>
	<input type="hidden" name="city_name" value="<%=city_name %>">
	</div>
	</form>
</body>
</html>