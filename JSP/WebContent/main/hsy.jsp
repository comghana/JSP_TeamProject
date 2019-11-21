<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>AF</title>
<link href="../css/all.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div id="index">
			<header>
				<a href="index.html"><img src="../img/logo.jpg" alt="AF"></a>
				<div id="header_nav">
					<ul>
						<li><a data-toggle="modal" href="#signin">Sign in</a></li>
						<li><a data-toggle="modal" href="#signup">Sign up</a></li>
					</ul>
				</div>
			</header>


			<div class="modal fade" id="signin" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">LOGIN</h4>
						</div>
						<div class="modal-body"
							style="background: url(../img/login.jpg); background-repeat: inherit; background-size: 100%; width: 580px; height: 280px;">
							<input type="text" class="form-control" name="id"
								placeholder="ID"
								style="width: 138px; margin-left: 275px; margin-top: 30px;">
							<input type="password" class="form-control" name="password"
								placeholder="PASSWORD"
								style="width: 138px; margin-left: 275px; margin-top: 2px;">
							<button type="button" class="btn btn-default"
								data-dismiss="modal"
								style="font-size: 18px; background-color: #315180; color: #FFFFFF; padding-left: 25px; padding-right: 25px; padding-top: 9px; padding-bottom: 9px; margin-left: 440px; margin-top: 12px;">Login</button>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>



			<div class="modal fade" id="signup" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title"
								style="font-size: 40px; color: #042759; font-weight: bold;">
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								Air Flying</h4>
						</div>
						<form>
							<div class="modal-body">
								<table class="table table-boardered">
									<tr>
										<th>아이디</th>
										<td><input type="text" class="form-control" name="id"
											placeholder="ID" style="width: 200px;">
											<button type="button" class="btn btn-default"
												data-dismiss="modal"
												style="font-size: 10px; background-color: #042759; color: #FFFFFF;">중복확인</button></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" class="form-control"
											name="pass1" placeholder="PASSWORD" style="width: 200px;"></td>
									</tr>

									<tr>
										<th>비밀번호 확인</th>
										<td><input type="password" class="form-control"
											name="pass2" placeholder="PASSWORD" style="width: 200px;"></td>
									</tr>

									<tr>
										<th>이름</th>
										<td><input type="text" class="form-control" name="name"
											placeholder="NAME" style="width: 200px;"></td>
									</tr>

									<tr>
										<th>성별</th>
										<td><select name="sex" class="form-control"
											style="width: 200px;">
												<option value="notselect">-- 선택 --</option>
												<option value="mr">남자</option>
												<option value="ms">여자</option>
										</select></td>
									</tr>

									<tr>
										<th>전화번호</th>
										<td><input type="tel" class="form-control"
											name="phonenumber" placeholder="PHONE NUMBER"
											style="width: 200px;">예시) 010-1234-5678</td>
									</tr>
									<tr>
										<td>생년월일</td>
										<td><select name="user_birth_year">
												<%
													for (int i = 1900; i <= 2019; i++) {
												%>
												<option value=<%=i%>>
													<%=i%></option>
												<%
													}
												%>
										</select> 년 <select name="user_birth_month">
												<%
													for (int i = 1; i <= 12; i++) {
												%>
												<option value=<%=i%>>
													<%=i%></option>
												<%
													}
												%>
										</select> 월 <select name="user_birth_day">
												<%
													for (int i = 1; i <= 31; i++) {
												%>
												<option value=<%=i%>>
													<%=i%></option>
												<%
													}
												%>
										</select> 일</td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal"
									style="font-size: 20px; background-color: #042759; color: #FFFFFF; margin-right: 230px;">Sign
									up</button>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="../img/kota.jpg" alt="">
					</div>

					<div class="item">
						<img src="../img/kota.jpg" alt="">
					</div>

					<div class="item">
						<img src="../img/kota.jpg" alt="">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>

</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer>
	<div id="footer_nav">
		<ul>
			<a href="sorry.html"><li>íì¬ìê°</li></a>
			<a href="sorry.html"><li>ì í´</li></a>
			<a href="privacy.html"><li>ê°ì¸ì ë³´ë³´í¸ì ì±</li></a>
			<p id='abc'>
				<b>&nbsp â Copyright </b> <b id='ab'> &nbsp Airflying.com</b>
			</p>
		</ul>
	</div>
</footer>
</html>
