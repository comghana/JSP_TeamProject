<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 

	작성자: 장지은
	파일 이름: Top.jsp
	목적: 모듈화-상단 부분 페이지

 --%>
  <%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("AdminLogin.jsp");
	}
%>
 <br><br>
  <div style="color:#042759;text-align:right;margin-right:500px;">
    &nbsp&nbsp
    <span style="font-weight:bold;font-size:20px;color:#000000">관리자님, 어서오세요</span> &nbsp&nbsp
    <button type="button" style="background-color:#042759;font-weight:bold;color:#FFFFFF;
    padding-top:6px;
    padding-bottom:6px;
    border: none;
    border-radius:5px;"
    onclick="location.href='AdminLogout.jsp' ">LOGOUT</button>
  </div>