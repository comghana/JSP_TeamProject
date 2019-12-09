<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="memberMgr" class="AirFlying.MemberMgr" />
<%
	String id = (request.getParameter("id"));
	String passwd = (request.getParameter("password"));
	if(memberMgr.loginCheck(id, passwd)){
		session.setAttribute("loginSession", id);
		%>
		<script>
		location.href="Main_Index.jsp";
		</script>
		<%
	}else{
		session.setAttribute("loginSession", null);
		%>
		<script>
		alert("비밀번호 혹은 아이디가 다릅니다.");
		location.href="Main_Index.jsp";
		</script>
		<% 
	}
	
%>

