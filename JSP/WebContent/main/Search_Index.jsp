<%@page import="javax.crypto.AEADBadTagException"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ page import="java.util.*, AirFlying.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
/* 	border-width: 1px;
	border-style: solid;
	border-color: black; */
	background-color: white;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
}

.tg .tg-c3ow {
	border-color: inherit;
	text-align: center;
	vertical-align: top
}

.tg .tg-0lax {
	text-align: left;
	vertical-align: top
}

body {
	margin: 0;
	padding: 0;
}

#webView {
	overflow: hidden;
	position: relative;
	background-color:#E0E0E0;
	width: 1200px;
	height: 600px;
	margin: 0 auto;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0)
}

#webView[data-show-memo='true'] {
	overflow: visible
}
</style>
<body>
<%
Vector <FlightBean> vc = new Vector<FlightBean>();
vc = (Vector) request.getAttribute("flightListResult"); //위험 타입변환 경고.
%>
	<div id="webView">
		<header>
		<div
	style="position: absolute; width: 1197px; height: 86px; background-color: #042759; margin-top: 15px;">
	<table style="undefined;table-layout: fixed; width: 1116px">
<colgroup>
<col style="width: 51px">
<col style="width: 52px">
<col style="width: 51px">
<col style="width: 51px">
<col style="width: 52px">
<col style="width: 52px">
<col style="width: 52px">
<col style="width: 52px">
<col style="width: 51px">
<col style="width: 51px">
<col style="width: 51px">
<col style="width: 50px">
<col style="width: 50px">
<col style="width: 50px">
<col style="width: 50px">
<col style="width: 50px">
<col style="width: 50px">
<col style="width: 50px">
<col style="width: 70px">
<col style="width: 80px">
</colgroup>
  <tr>
    <th rowspan="2" style="padding-top:11px;"><img src="../img/zoom.PNG" width="120%"></th>
    <th colspan="5" style="color: white; font-size: 13px; font-weight: bold;padding-left:25px;padding-top:13px;"><%=vc.get(0).getAirport()%> - <%=vc.get(0).getArrvCity()%></th>
    <th colspan="9"></th>
    <th colspan="3" rowspan="2" style="color: white; font-size: 13px; font-weight: bold;padding-top:10px;padding-right:20px;"><%=vc.get(0).getQlDepDate()%></th>
    <th rowspan="2" style="color: white; font-size: 15px;padding-top:10px;">&nbsp&nbsp&nbsp&nbsp  ></th>
    <th colspan="3" rowspan="2" style="color: white; font-size: 13px; font-weight: bold;padding-top:10px;">0000-00-00</th>
  </tr>
  <tr>
    <td colspan="3" style="color: white; font-size: 13px; font-weight: bold;padding-left:25px;padding-bottom:7px;"></td>
    <td colspan="9"></td>
  </tr>
</table>

</div>
		</header>
		<div style="overflow:auto; margin-top: 150px; height: 500px">
		<%
		for(int i = 0; i < vc.size(); i++) { //임시 테스트  => int 형의 숫자 넣기.
			String depTime = vc.get(i).getDeptime();
		%>
				<table class="tg" style="margin-top: 10px; margin-left: 28%">
					<tr>
						<th class="pic" colspan="2" rowspan="3"><img
							src="../img/vietjet.PNG" alt="" style="" width="100px"></th>
						<th class="empty"></th>
						<th class="g_time" align="center" style="padding-left: 40px;">0시간
							0분</th>
						<th class="empty"></th>
						<th class="empty"></th>
					</tr>
					<tr>
						<td class="d_time" align="center">
						<%= depTime.substring(0,2) +":"+ depTime.substring(2) %>
						</td>
						<td class="point"><img src="../img/line.png" alt="">
							<img src="../img/plane.png" alt="" width=25px></td>
						<td class="a_time" align="center">00:00</td>
						<th class="heart"><img src="../img/heart.PNG" alt="" width=70px onclick="wishClick(<%= vc.get(i).getId()%>)"></th>
					</tr>
					<tr>
						<td class="d_city" align="center"style="font-weight:bold; padding-bottom:25px;">
							<%= vc.get(i).getAirport()%>
							</td>
						<td class="how" align="center"
							style="color: #00A698; font-weight: bold; padding-right: 20px;">직항</td>
						<td class="a_city" align="center"
							style="font-weight: bold; padding-bottom: 25px;"><%= vc.get(i).getArrvCity()%></td>
						<th class="empty"></th>
					</tr>
				</table>
<%}%>
</div>

</body>

	<script>
	function wishClick(id){
		<%
			if(session.getAttribute("loginSession") != null){
		%>
		 window.location.replace("AddWishMgr.jsp?id="+id);
		<% }else{ %>
		alert("로그인을 해주세요.");
		window.location.replace("Main_Index.jsp");
		<% } %>
	}
	</script>
</html>