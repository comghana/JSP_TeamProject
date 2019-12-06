<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*" %>
<jsp:useBean id="recoM" class="AirFlying.RecoMgr" />
<html>
<style>
.btn {background-color:#042759;font-weight:bold;color:#FFFFFF;border: none;border-radius:5px;}
div {position:relative; align:center;}
</style>
<script language="JavaScript" src="script.js"></script>
<%
	String reco_name = request.getParameter("reco_name");
	RecoBean recoBean= recoM.getRecommend(reco_name);
%>
<title>업데이트 확인</title>
</head>
<body>
	<form name="reForm" method="post" action="UpdateImageStatusProc.jsp">
	<div>
	<h3><%=recoBean.getReco_name()%></h3>
	<%if (recoBean.getReco_status() == "in"){ %>
	<input class="btn" type="submit" value="OUT"></input>
	<%} else { %>
	<input class="btn" type="submit" value="IN"></input>
	<%} %>
	<input type="hidden" name="reco_name" value="<%=reco_name %>">
	</div>
	</form>
</body>
</html>




