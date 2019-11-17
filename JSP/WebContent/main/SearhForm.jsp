<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.radio{
		font-size: 20px;
		color: white;
		position: absolute;
		top: 250px;
		left: 178px;
		width: 280px;
		height: 20px;
		font-weight: bold;

	}
	.background{
		background-color: #042759;
		position: absolute;
		width: 931px;
		height: 147px;
		top:237.5px;
		left: 134px;
		
	}
	.whereWego{
		position: absolute;
		font-weight: bold;
		font-size: 36px;
		color: white;
		top:185px;
		left:135px;
	}
	.radioSize{
		height: 20px;
		width: 20px;
	}

</style>
</head>
<body>

<div style="position: absolute; top: 128px; left: 1px; width: 1199px; height: 327px;">
	<img alt="" src="../img/r_bg.jpg">
</div>
	<p class="background">
	<div class="whereWego">
		어디로 여행갈까요?
	</div>
	<form action="" method="post">
		<p class="radio">
		<input class="radioSize" type="radio" name="radioOp" value="round" checked> 왕복
		<input class="radioSize" type="radio" name="radioOp" value="oneway"> 편도
		<input class="radioSize" type="radio" name="radioOp" value="flightnv"> 운행편명
		</p>
	</form>
</body>
</html>