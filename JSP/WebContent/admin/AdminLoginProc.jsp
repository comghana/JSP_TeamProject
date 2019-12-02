<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="adset" class="AirFlying.AdminSet" /> <%-- 중요 --%>
<%
	String admin_id = request.getParameter("admin_id");
	String admin_passwd = request.getParameter("admin_passwd");
	boolean adminCheck = adset.adminCheck(admin_id, admin_passwd); //중요
    if(adminCheck) {
	    session.setAttribute("adminKey", admin_id);
%>

   <script>
   location.href="Index.jsp";
   </script>

<%}else{%>

   <script>
   alert("입력한 정보가 정확하지 않습니다.");
   location.href="AdminLogin.jsp";
   </script>

<%}%>