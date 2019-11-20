<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
.background {
	background-color: #042759;
	position: absolute;
	width: 931px;
	height: 147px;
	top: 237.5px;
	left: 134px;
}

.whereWego {
	position: absolute;
	font-weight: bold;
	font-size: 36px;
	color: white;
	top: 185px;
	left: 135px;
}

.radioSize {
	height: 20px;
	width: 20px;
	margin-left: 200px;
}

.selectbox {
	position: absolute;
	color: #5E5E5E;
	width: 200px;
	height: 35px;
}

.arrv_dep_font {
	color: white;
	font-size: 16px;
	position: absolute;
	width: 156px;
	height: 20px;
	font-weight: bold;
}

body {
	margin: 0;
	padding: 0;
}

#webView {
	overflow: hidden;
	position: relative;
	background:;
	width: 1200px;
	height: 1351px;
	margin: 0 auto;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0)
}

#webView[data-show-memo='true'] {
	overflow: visible
}

.radio {
	font-size: 20px;
	color: white;
	position: absolute;
	top: 120px;
	left: 178px;
	width: 280px;
	height: 20px;
	font-weight: bold;
}
</style>
<div
	style="position: absolute; top: 150px; left: 1px; width: 1199px; height: 327px;">
	<img alt="" src="../img/r_bg.jpg">
</div>
<p class="background">
<div class="whereWego">어디로 여행갈까요?</div>

<p class="arrv_dep_font" style="top: 310px; left: 154px">출발</p>
<p class="arrv_dep_font" style="top: 310px; left: 390px">도착</p>
<p class="arrv_dep_font" style="top: 310px; left: 623px">가는날</p>
<p class="arrv_dep_font" style="top: 310px; left: 750px">오는날</p>
<p class="arrv_dep_font" style="top: 310px; left: 878px">최소 시간</p>
<form action="" method="post">
	<p class="radio">
		<input class="radioSize" type="radio" name="radioOp" value="round"
			checked> 왕복 &nbsp &nbsp <input class="radioSize" type="radio"
			name="radioOp" value="oneway"> 편도 &nbsp &nbsp <input
			class="radioSize" type="radio" name="radioOp" value="flightnv">
		운행편명
	</p>

	<input type="submit"
		style="position: absolute; color: white; border: 0; outline: 0; background-color: #00a698; width: 171px; height: 45px; font-weight: bold; font-size: 18px; border-radius: 6px; top: 405px; left: 893.5px"
		value="항공권 조회 →">
	<button type="button" class="btn btn-default btn-lg"
		style="top: 342px; left: 345px; position: absolute; height: 35px;">
		<span class="glyphicon glyphicon-transfer" aria-hidden="true"></span>
	</button>
	<input class="selectbox" type="text" name="departure"
		style="top: 342px; left: 152px"> <input class="selectbox"
		type="text" name="arrive" style="top: 342px; left: 390px"> <input
		class="selectbox" type="date" name="depdate"
		style="top: 342px; left: 603px; width: 130px"> <input
		class="selectbox" type="date" name="arrvdate"
		style="top: 342px; left: 740px; width: 130px"> <input
		class="selectbox" type="time" name="minimumtime"
		style="top: 342px; left: 878px; width: 120px">
</form>
