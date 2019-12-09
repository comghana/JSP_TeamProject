<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		    <%@ page import="java.util.*, AirFlying.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
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
			<jsp:include page="Wish_Top.jsp" flush="false" />
		</header>
		<div style="margin-top: 10%;margin-left:25%;z-index: 10">
			<div>
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
</style>
<jsp:useBean id="wishLoad" class="AirFlying.WishMgr" />
<%

Vector <WishBean> vc = new Vector<WishBean>();
vc = (Vector) wishLoad.getWishList((String)session.getAttribute("loginSession")); //위험 타입변환 경고.
		for(int i = 0; i < vc.size(); i++) { //임시 테스트  => int 형의 숫자 넣기.
			String depTime = vc.get(i).getTime();
		%>
	<table class="tg" style="margin-top: 10px;">

		<tr>
			<th class="pic" colspan="2" rowspan="3"><img
				src="../img/vietjet.PNG" alt="" style="" width="100px"></th>
			<th class="empty"></th>
			<th class="g_time" align="center" style="padding-left: 40px;">4시간
				20분</th>
			<th class="empty"></th>
			<th class="trash"><img src="../img/trash.png" alt="" width=20px onclick="wishTrash(<%= vc.get(i).getFlight_id() %>)"></th>
		</tr>
		<tr>
			<td class="d_time" align="center"><%= depTime.substring(0,2) +":"+ depTime.substring(2) %></td>
			<td class="point"><img src="../img/line.png" alt="" width=>
				<img src="../img/plane.png" alt="" width=25px></td>
			<td class="a_time" align="center">00:00</td>
			<th class="empty"></th>
		</tr>
		<tr>
			<td class="d_city" align="center"
				style="font-weight: bold; padding-bottom: 25px;"><%= vc.get(i).getAirport()%></td>
			<td class="how" align="center"
				style="color: #00A698; font-weight: bold; padding-right: 20px;">직항</td>
			<td class="a_city" align="center"
				style="font-weight: bold; padding-bottom: 25px;"><%= vc.get(i).getCity()%></td>
			<th class="empty"></th>
		</tr>
	</table>
	<%}%>
</div>
		</div>

	</div>
</body>
	<script>
	function wishTrash(id){
		 window.location.replace("DelWishMgr.jsp?flight="+id);
	}
	</script>
</html>