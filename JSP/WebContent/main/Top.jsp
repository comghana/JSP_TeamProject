<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="member" class="AirFlying.MemberMgr" />
<link href="../css/all.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
li>a {
	font-size: 16px;
	position: absolute;
}

</style>
<div style="margin-left: 10%;">
	<a href="Main_Index.jsp"><img src="../img/logo.jpg" alt="AF"
		style="width: 128px; height: 128px">
			</a>
		<% if(session.getAttribute("loginSession") != null){ %>
			<div id="header_nav" style="margin-right: 200px">
		<ul style="font-weight:bold;font-size:20px;">
			<a href="Wish_Index.jsp"><img src="../img/wishlist.PNG" style="width: 118px; height: 40px"></a>
			<img src="../img/userlogo.PNG" width="29px" height="25px">
			<%= session.getAttribute("loginSession") %>님, 어서오세요 &nbsp&nbsp
			<input data-toggle="modal" type="button" class="btn btn-default" onclick="location.href='LogoutMgr.jsp'" style="background-color:#5E5E5E;color:#FFFFFF;
                font-size:16px;padding-left:20px;padding-right:20px;padding-top:8px;padding-bottom:8px;" value="LOGOUT">
		</ul>
	</div>
	<%} else{%>
			<div id="header_nav" style="margin-right: 200px">
		<ul>
			<button data-toggle="modal" type="button" class="btn btn-default" href="#signin" style="border:0;outline:0;color:#315180;
                font-size:16px;padding-left:20px;padding-right:20px;padding-top:8px;padding-bottom:8px;">Sign in</button>
                &nbsp&nbsp
                <button style="background-color:#5E5E5E;color:#FFFFFF;
                font-size:16px;padding-left:20px;padding-right:20px;padding-top:8px;padding-bottom:8px;"onclick="location.href=SignupMgr.jsp">Sign up</button>
		</ul>
	</div>
	<%}%>

</div>
<div class="modal fade" id="signin" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">LOGIN</h4>
			</div>
			<form method="post" action="SignInMgr.jsp">
			<div class="modal-body"
				style="background: url(../img/login.jpg); background-repeat: inherit; background-size: 100%; width: 580px; height: 280px;">
				<input type="text" class="form-control" name="id" placeholder="ID"
					style="width: 138px; margin-left: 275px; margin-top: 30px;">
				<input type="password" class="form-control" name="password"
					placeholder="PASSWORD"
					style="width: 138px; margin-left: 275px; margin-top: 2px;">
				<input type="submit" id ="loginBt" class="btn btn-default"
					style="font-size: 18px; background-color: #315180; color: #FFFFFF; padding-left: 25px; padding-right: 25px; padding-top: 9px; padding-bottom: 9px; margin-left: 440px; margin-top: 12px;" value="Login">
			</div>
			</form>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>

				<script>
				$('#idCheck').click(function(){
					if( $('#id').val() == ""){
						alert("아이디를 입력해주세요.")
					}else{
						url="IdCheck.jsp?mem_id=" + $('#id').val();
						window.open(url,"post","width=100,height=100");
					}
				});
				
				$("#id, #pass1, #pass2, #name, #gender, #month, #day, #year, #tel").on("change paste keyup", function() {
					   if($("#tel").val() != "" &&$("#id").val() != "" && $("#pass1").val() != "" && $("#pass2").val() != "" && $("#name").val() != "" && $("#gender").val() != "notselect"){
							$('#submitBt').removeAttr("disabled");
						   if($("#pass1").val() == $("#pass2").val()){
								$('#submitBt').removeAttr("disabled");
							   $("#status").html('');
						   }else{
							   $('#submitBt').attr("disabled", true);
							   $("#status").html('비빌번호가 서로 다릅니다.');
						   }
					   }
				});
				</script>

