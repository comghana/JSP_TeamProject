<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    		<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="member" class="AirFlying.MemberMgr" />
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:center;">
<h4 style="font-size: 40px; color: #042759; font-weight: bold;">Air Flying</h4>
<form method="post" action="RegisterMgr.jsp">
	<table class="table table-boardered" style="text-align:center;">
	<tr>
		<th>아이디</th>
			<td><input type="text" class="form-control" name="id" id="id"
				placeholder="ID" style="width: 200px;">
			<button type="button" style="font-size: 10px; background-color: #042759; color: #FFFFFF;" id="idCheck">중복확인</button></td>
	</tr>
	<tr>
		<th>비밀번호</th>
			<td><input type="password" name="pass1" id="pass1" placeholder="PASSWORD" style="width: 200px;"></td>
	</tr>

	<tr>
		<th>비밀번호 확인</th>
			<td><input type="password" class="form-control" name="pass2" id="pass2" placeholder="PASSWORD" style="width: 200px;">
			<span id="status"></span></td>
	</tr>

	<tr>
		<th>이름</th>
			<td><input type="text" class="form-control" name="name" id="name" placeholder="NAME" style="width: 200px;"></td>
	</tr>
	<tr>
		<th>성별</th>
			<td><select name="sex" class="form-control" style="width: 200px;" id="gender">
				<option value="notselect">-- 선택 --</option>
				<option value="M">남자</option>
				<option value="F">여자</option>
				</select></td>
	</tr>
	<tr>
		<th>전화번호</th>
			<td><input type="tel" class="form-control" id="tel" name="phonenumber" placeholder="PHONE NUMBER"
					style="width: 200px;">예시) 010-1234-5678</td>
	</tr>
	<tr>
			<td>생년월일</td>
			<td><select name="user_birth_year" id="year">
				<%
					for (int i = 1900; i <= 2019; i++) {
				%>
					<option value=<%=i%>>
						<%=i%></option>
					<%}%>
				</select> 년 <select name="user_birth_month" id="month">
				<%
					for (int i = 1; i <= 12; i++) {%>
						<option value=<%=i%>>
							<%=i%></option>
					<%}%>
					</select> 월 <select name="user_birth_day" id="day">
					<%for (int i = 1; i <= 31; i++) {%>
						<option value=<%=i%>>
							<%=i%></option>
					<%}%>
					</select> 일</td>
					</tr>
					</table>
					<input type="submit" class="btn btn-default" id="submitBt"
						style="font-size: 20px; background-color: #042759; color: #FFFFFF; margin-right: 230px;" value="Sign up" disabled>
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
</form>
</div>
</body>
</html>