<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="recoM" class="AirFlying.RecoMgr" />
<html>
  <head>
    <meta charset="utf-8">
    <title>Recommend</title>
    <script language="JavaScript" src="script.js"></script>
    <style>
    table {
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    }
    th {
    border:1px solid gray;
    background-color:#EAEAEA;"
    width: 149;
    height: 45;
    text-align: center;
    }
    td {
    border:1px solid gray;" 
    width: 149; 
    height: 45;
    text-align: center;
    }
    .btn {
    background-color:#042759;
    font-weight:bold;
    color:#FFFFFF;
    border: none;
    border-radius:5px;}
    </style>
  </head>
  <body>
    <br><br>
  <%@ include file="Top.jsp" %>
  <br><br>
   <%Vector vResult= recoM.getRecoList();%>
  <h2 style="text-align:center;">추천여행지 관리</h2>
  <div>
  <table align="center">
    <th>대륙</th>
    <th>나라</th>
    <th>도시</th>
    <th>추가여부</th>
    <%
    for(int i = 0; i<vResult.size(); i++) {
    	RecoBean recoBean = (RecoBean)vResult.get(i);
    %>
    <tr>
      <td><%=recoBean.getReco_name()%></td>
      <td><%=recoBean.getReco_file()%></td>
      <td><%=recoBean.getReco_name()%></td>
      <td><a class="btn" href="javascript:UpdateReco('<%=recoBean.getReco_name()%>')">관리</a></td>
    </tr>
    <%}%>
  </table>
  </div>
  <%@ include file="Bottom.jsp" %>
  <form name="updateReco" method="post" action="UpdateImageStatus.jsp">
	<input type=hidden name="reco_name">
	</form>
  </body>
</html>