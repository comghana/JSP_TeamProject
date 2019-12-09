<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="memMgr" class="AirFlying.MemberMgr" />
<html>
  <head>
    <meta charset="utf-8">
    <title>계정 관리</title>
    <script language="JavaScript" src="script.js"></script>
    <style type="text/css">
    .th1{text-align:center; border:1px solid gray;background-color:#EAEAEA; width="72" height="45"}
    .th2 {border:1px solid gray; text-align:center; width="72" height="45"}
    .btn {background-color:#042759;font-weight:bold;color:#FFFFFF;border: none;border-radius:5px;}
    .id {background-color:#FFFFFF; border:0; outline:0;}
    </style>
  </head>
  <body>
    <br><br>
  <%@ include file="Top.jsp" %>
  <br><br>
  <%Vector vResult= memMgr.getMemberList();%>
  <div style="width:94%;text-align:center;">
  <table align="center">
    <th class="th1">아이디</th>
    <th class="th1">이름</th>
    <th class="th1">성별</th>
    <th class="th1">전화번호</th>
    <th class="th1">생년월일</th>
    <th class="th1">가입날짜</th>
    <th class="th1">처리</th>
    <%
    for(int i = 0; i<vResult.size(); i++) {
    	RegisterBean regBean = (RegisterBean)vResult.get(i);
    %>
    <tr>
      <td class="th2"><%=regBean.getMem_id()%></td>
      <td class="th2"><%=regBean.getMem_name()%></td>
      <td class="th2"><%=regBean.getMem_gender()%></td>
      <td class="th2"><%=regBean.getMem_phone()%></td>
      <td class="th2"><%=regBean.getMem_birth()%></td>
      <td class="th2"><%=regBean.getMem_date()%></td>
      <td class="th2" style="align:center">
      <a class="btn" href="javascript:DeleteMem('<%=regBean.getMem_id()%>')">관리</a>
      </td>
    </tr>
    <%}%>
  </table>
  </div>
 	<%@ include file="Bottom.jsp" %>
   <form name="deleteMem" method="post" action="DeleteMem.jsp">
	<input type=hidden name="mem_id">
	</form>
  </body>
</html>