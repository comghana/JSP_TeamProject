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
	<div id="webView">
		<header>
			<jsp:include page="Search_Top.jsp" flush="false" />
		</header>
		<%
		Vector <FlightBean> vc = new Vector<FlightBean>();
		vc = request.getAttribute("flightListResult");
		
		for(int i = 0; i < vc.size(); i++) {
		%>
<div>
	<table class="tg">
		<tr>
			<th class="pic" colspan="2" rowspan="3"><img
				src="../img/vietjet.PNG" alt="" stlye="" width="100px"></th>
			<th class="empty"></th>
			<th class="g_time" align="center" style="padding-left: 40px;">4시간
				20분</th>
			<th class="empty"></th>
			<th class="empty"></th>
		</tr>
		<tr>
			<td class="d_time" align="center">오전 6:15</td>
			<td class="point"><img src="../img/line.png" alt="" width=>
				<img src="../img/plane.png" alt="" width=25px></td>
			<td class="a_time" align="center">오전 8:55</td>
			<th class="trash"><img src="../img/heart.PNG" alt="" width=70px></th>
		</tr>
		<tr>
			<td class="d_city" align="center"
				style="font-weight: bold; padding-bottom: 25px;">ICN</td>
			<td class="how" align="center"
				style="color: #00A698; font-weight: bold; padding-right: 20px;">직항</td>
			<td class="a_city" align="center"
				style="font-weight: bold; padding-bottom: 25px;">DAD</td>
			<th class="empty"></th>
		</tr>
	</table>
</div>
<%}%>
	</div>
</body>
</html>