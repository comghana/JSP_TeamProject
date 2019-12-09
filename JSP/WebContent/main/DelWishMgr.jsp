<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="wish" class="AirFlying.WishMgr" />
<%
	request.setCharacterEncoding("utf-8");
	WishBean wishbean = new WishBean();
	wishbean.setMem_id((String)session.getAttribute("loginSession"));
	wishbean.setFlight_id(request.getParameter("flight"));
	if(wish.deleteWish(wishbean)){%>
		<script>
		alert("삭제되었습니다.");
		history.back();
		</script>
		
<%}else{%>
		<script>
		alert("알수없는 오류가 발생하였습니다.");
		history.back();
		</script>
		
	<%}
%>
