<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="AirFlying.MemberMgr" />
<jsp:useBean id="regBean" class="AirFlying.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.deleteMember("mem_id");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
<%
if(flag){%>
	alert("성공적으로 탈퇴시켰습니다.");
	location.href="MemberMgr.jsp";
	<%}else{%>
	alert("실패하였습니다. 다시 시도해주세요.");
	location.href="MemberMgr.jsp";
	<%}%>
</script>
</body>
</html>

