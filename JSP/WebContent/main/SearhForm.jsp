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
<<<<<<< HEAD
	.selectbox{
		position: absolute;
		color: #5E5E5E;
=======
	.arrv_dep_font{
		color: white;
		font-size: 16px;
		position: absolute;
		width: 156px;
		height: 20px;
>>>>>>> text
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

	<p class="arrv_dep_font" style ="top:301px; left:154px" >출발</p>
	<p class="arrv_dep_font" style ="top:301px; left:421px" >도착</p>
	<p class="arrv_dep_font" style ="top:301px; left:651px" >가는날</p>
	<p class="arrv_dep_font" style ="top:301px; left:761px" >오는날</p>
	<p class="arrv_dep_font" style ="top:301px; left:878px" >최소 시간</p>
	<form action="" method="post">
		<p class="radio">
		<input class="radioSize" type="radio" name="radioOp" value="round" checked> 왕복
		<input class="radioSize" type="radio" name="radioOp" value="oneway"> 편도
		<input class="radioSize" type="radio" name="radioOp" value="flightnv"> 운행편명
		</p>
		<div>
		<input class="selectbox" type="text" name="departure" style="width: 223px; height: 40px; top: 329px; left: 152px">
		<input class="selectbox" type="text" name="arrive"  style="width: 223px; height: 40px; top: 329px; left: 421px">
		</div>
	</form>
	
</body>
</html>