<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 

	작성자: 장지은
	파일 이름: DeleteProc.jsp
	목적: 탈퇴시킬 멤버의 아이디를 보내 처리한 결과를 보여준다.

 --%>
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="AirFlying.MemberMgr" />
<jsp:useBean id="regBean" class="AirFlying.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.deleteMember(regBean);
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
	alert("위시리스트가 있는 고객입니다.삭제가 불가능합니다.");
	location.href="MemberMgr.jsp";
	<%}%>
</script>
</body>
</html>

