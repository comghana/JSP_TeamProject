<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 

	작성자: 장지은
	파일 이름: UpdateInProc.jsp
	목적: 상태를 처리하기 위한 페이지

 --%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="cityMgr" class="AirFlying.CityMgr" />
<jsp:useBean id="cityBean" class="AirFlying.CityBean" />
<jsp:setProperty name="cityBean" property="*" />

<%
	boolean flag = cityMgr.inCity(cityBean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
<%
if(flag){%>
	alert("성공적으로 수정하였습니다.");
	location.href="CityMgr.jsp";
	<%} else{%>
	alert("실패하였습니다. 다시 시도해주세요.");
	location.href="CityMgr.jsp";
	<%}%>
	
</script>
</body>
</html>