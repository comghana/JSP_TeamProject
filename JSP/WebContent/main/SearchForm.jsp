<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="airportLoad" class="AirFlying.AirportLoadMgr" />
<% Vector<PreSearchLoadBean> vc = airportLoad.loadData(); %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	position: absolute;
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

.radio {
	font-size: 20px;
	color: white;
	position: absolute;
	top: 250px;
	left: 178px;
	width: 280px;
	height: 20px;
	font-weight: bold;
}
</style>

<div
	style="position: absolute; top: 150px; left: 1px; width: 100%; height: 327px; background-image: url('../img/r_bg.jpg'); background-repeat: no-repeat; background-size: 100% auto;">
</div>
<div style="position:absolute; margin-left: 3%; width: 100%; top: 0px;">
	<p class="background">
	<div class="whereWego">어디로 여행갈까요?</div>

	<p class="arrv_dep_font" style="top: 310px; left: 154px">출발</p>
	<p class="arrv_dep_font" style="top: 310px; left: 390px">도착</p>
	<p class="arrv_dep_font" style="top: 310px; left: 623px">가는날</p>
	<p class="arrv_dep_font" style="top: 310px; left: 750px">오는날</p>
	<p class="arrv_dep_font" style="top: 310px; left: 878px">최소 시간</p>
	<form action="" method="post">
		<p class="radio">
			<input id="roundway" class="radioSize" type="radio" name="radioOp"
				value="round" checked> 왕복 &nbsp &nbsp <input id="oneway"
				class="radioSize" type="radio" name="radioOp" value="oneway">
			편도 &nbsp &nbsp <input class="radioSize" type="radio" id="flightnvOp"
				name="radioOp" value="flightnv"> 운행편명
		</p>
		<input disabled type="text" id="flightnv" name="flightnv"
			style="top: 255px; position: absolute; left: 400px; width: 130px; height: 30px;">

		<input type="submit"
			style="position: absolute; color: white; border: 0; outline: 0; background-color: #00a698; width: 171px; height: 45px; font-weight: bold; font-size: 18px; border-radius: 6px; top: 405px; left: 893.5px"
			value="항공권 조회 →">
		<button type="button" class="btn btn-default btn-lg" id="swapbt"
			style="top: 342px; left: 345px; position: absolute; height: 35px;">
			<span class="glyphicon glyphicon-transfer" aria-hidden="true"></span>
		</button>
		<input class="selectbox" id="depText" type="text" name="departure"
			style="top: 342px; left: 152px"> <input class="selectbox"
			type="text" name="arrive" id="arvText"
			style="top: 342px; left: 390px"> <input class="selectbox"
			id="depdate" type="date" name="depdate"
			style="top: 342px; left: 603px; width: 130px"> <input
			class="selectbox" id="arrvdate" type="date" name="arrvdate"
			style="top: 342px; left: 740px; width: 130px"> <select
			class="selectbox" name="minimumtime"
			style="top: 342px; left: 878px; width: 120px">
			<%
		for (int i = 1; i <= 24; i++) {
		%>
			<option value=<%=i%>>
				<%=i%>시 00분
			</option>
			<%
			}
		%>
		</select>
	</form>
</div>
<script>
	// 출발지 목적지 스왑 버튼
	$('#swapbt').click(function() {
		var swapTemp = $('#depText').val();
		$('#depText').val($('#arvText').val());
		$('#arvText').val(swapTemp);
	});

	// 검색 속성(왕복, 편도, 편명조회)라디오 박스에 따른 검색창 비활성화 및 활성화
	$('#roundway').click(function() {
		$('#depText').removeAttr("disabled");
		$('#arvText').removeAttr("disabled");
		$('#arrvdate').removeAttr("disabled");
		$('#flightnv').attr("disabled", true);
	});

	$('#oneway').click(function() {
		$('#depText').removeAttr("disabled");
		$('#arvText').removeAttr("disabled");
		$('#arrvdate').removeAttr("disabled");
		$('#arvText').attr("disabled", true);
	});

	$('#flightnvOp').click(function() {
		$('#depText').attr("disabled", true);
		$('#arvText').attr("disabled", true);
		$('#arrvdate').attr("disabled", true);
		$('#flightnv').removeAttr("disabled");
	});
	
	// 출발지, 도착지등 입력필드 수정 감지
	$("#depText").on("change paste keyup", function() {
		console.clear();
		<%
		for(int i=0; i < vc.size(); i++){
		%>
			var tempStrPort = "<%=vc.get(i).getPortCode()%>";
			var tempStrName = "<%=vc.get(i).getkName()%>";
			if(tempStrName.indexOf($("#depText").val())!= -1 || tempStrPort.indexOf($("#depText").val())!= -1){
				console.log("<%=vc.get(i).getPortCode()%> / <%=vc.get(i).getkName()%>");
			}
		<%}%>
	});
	
	$("#arvText").on("change paste keyup", function() {
		   
	});
	
</script>
