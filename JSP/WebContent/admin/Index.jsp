<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 

	작성자: 장지은
	파일 이름: Index.jsp
	목적: 관지자 페이지의 메인

 --%>
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
          	  <td><button type="submit" style="border: none; "><img src="../img/member.png"></button></td>
          	 </form>
			<form name="" method="post" action="CityMgr.jsp">
          	  <td><button type="submit" style="border: none; padding-left: 10px;"><img src="../img/pic.png"></button></td>
          	</form>
       	 </tr>
        <tr align="center">
          <td style="font-weight:bold; font-size:20px;">회원 관리</td>
          <td style="font-weight:bold; font-size:20px;">추천 여행</td>
        </tr>
    </table>
    <%@ include file="Bottom.jsp" %>
  </body>
</html> 