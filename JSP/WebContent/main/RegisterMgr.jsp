<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="memberMgr" class="AirFlying.MemberMgr" />
<%
	RegisterBean user_data = new RegisterBean();
	user_data.setMem_id(request.getParameter("id"));
	user_data.setMem_passwd(request.getParameter("pass1"));
	user_data.setMem_name(request.getParameter("name"));
	user_data.setMem_gender(request.getParameter("sex"));
	user_data.setMem_phone(request.getParameter("phonenumber"));
	String birth_year = request.getParameter("user_birth_year");
	String birth_month = request.getParameter("user_birth_month");
	String birth_day = request.getParameter("user_birth_day");
	user_data.setMem_birth(birth_year + "/" + birth_month + "/" + birth_day);
	if(memberMgr.memberInsert(user_data)){
		%>
		<script>
		alert("회원가입이 완료되었습니다.");
		location.href="Main_Index.jsp";
		</script>
		<%
	}else{
		 %>	
		<script>
		alert("비정상적인 접근 혹은 오류가 발생하였습니다.");
		history.back();
		</script>
		<%
	}
%>
