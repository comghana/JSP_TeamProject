<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Air Flying Admin</title>
  </head>
  <body>
  <%@ include file="Top.jsp" %>
    <table align="center" style="margin-top:300px;">
    	 
        	<tr>
        	<form name="" method="post" action="MemberMgr.jsp">
          	  <td><button type="submit" style="border: none; "><img src="img/member.png"></button></td>
          	 </form>
          	  <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          	    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
          	  <td><button type="submit" style="border: none;"><img src="imgs/pic.png"></button></td>
       	 </tr>
        <tr align="center">
          <td style="font-weight:bold; font-size:20px;">회원 관리</td>
          <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
          <td style="font-weight:bold; font-size:20px;">추천 여행</td>
        </tr>
    </table>
    <%@ include file="Bottom.jsp" %>
  </body>
</html> 