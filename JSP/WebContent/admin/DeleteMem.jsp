<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*" %>
<jsp:useBean id="memMgr" class="AirFlying.MemberMgr" />
<html>
<style>
.btn {background-color:#042759;font-weight:bold;color:#FFFFFF;border: none;border-radius:5px;}
div {position:relative; align:center;}
</style>
<script language="JavaScript" src="script.js"></script>
<%
	String mem_id = request.getParameter("mem_id");
	RegisterBean regBean= memMgr.getMember(mem_id);
%>
<title>강퇴 확인</title>
</head>
<body>
	<form name="reForm" method="post" action="DeleteProc.jsp">
	<div>
	<h3><%=regBean.getMem_id()%></h3>
	<input class="btn" type="submit" value="강제탈퇴">
	</input>
	<input type="hidden" name="mem_id" value="<%=mem_id %>">
	</div>
	</form>
</body>
</html>




