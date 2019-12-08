<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="recoM" class="AirFlying.RecoMgr" />
<jsp:useBean id="recoBean" class="AirFlying.RecoBean" />
<jsp:setProperty name="recoBean" property="*" />
<%

	 boolean flag = recoM.updateStatus(recoBean);
   
%>
    
<%
if(flag){%>
	<script>
	alert("성공적으로 수정하였습니다.");
	location.href="Recommend.jsp";
	</script>
	<%}else{%>
	<script>
	alert("실패하였습니다. 다시 시도해주세요.");
	location.href="Recommend.jsp";
	</script>
	<%}%>

