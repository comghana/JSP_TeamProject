<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="wishmgr" class="AirFlying.WishMgr" />
<%
	String id = request.getParameter("id");
	String memId = (String) session.getAttribute("loginSession");
	WishBean wish = new WishBean();
	wish.setFlight_id(id);
	wish.setMem_id(memId);
	if(wishmgr.wishInsert(wish)){
		%>
		<script>
		alert("위시리스트에 추가하였습니다.");
		</script>	
		<%}else{ %>
			<script>
			alert("알수없는 오류가 발생하였습니다.");
		</script>	
		<%
	}
%>
<script>
window.location.replace("Main_Index.jsp");
</script>