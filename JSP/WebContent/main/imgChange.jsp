<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="../css/all.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
<style>
.pic_name {
	font-size: 20px;
	font-weight: bold;
	left: 50%;
}
</style>
<div style="margin-top: 550px;">
	<b
		style="font-size: 40px; left: 100px; position: absolute; z-index: 10; top: 600px;">
		> 추천 여행지 </b>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->

		<div class="carousel-inner" style="left: 195px; width: 788px;">
			<div class="item active">
				<p class="pic_name" style="margin-left: 43%">코타키나발루</p>
				<img src="../img/kota.jpg" alt="">
			</div>

			<div class="item">
				<p class="pic_name" style="margin-left: 43%">코타키나발루</p>
				<img src="../img/kota.jpg" alt="">
			</div>

			<div class="item">
				<p class="pic_name" style="margin-left: 43%">코타키나발루</p>
				<img src="../img/kota.jpg" alt="">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"
			style="left: 195px; top: 40px;"> <span
			class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next" style="right: 218px; top: 40px;"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>

	</div>
</div>
