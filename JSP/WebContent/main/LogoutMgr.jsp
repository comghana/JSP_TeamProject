<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="memberMgr" class="AirFlying.MemberMgr" />
<%
		session.setAttribute("loginSession", null);
%>
<script>
location.href="Main_Index.jsp";
</script>