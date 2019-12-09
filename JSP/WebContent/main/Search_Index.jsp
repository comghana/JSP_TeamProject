<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<jsp:include page="Search_Top.jsp" flush="false" />
		</header>
		<div style="margin-top: 10%;margin-left:25%;z-index: 10">
			<jsp:include page="SearchBadge.jsp" flush="false" />
		</div>

	</div>
</body>
</html>