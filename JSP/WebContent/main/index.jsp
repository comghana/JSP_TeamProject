<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	margin: 0;
	padding: 0;
}

#webView {
	overflow: hidden;
	position: relative;
	background:;
	width: 1300px;
	height: 1351px;
	margin: 0 auto;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0)
}

#webView[data-show-memo='true'] {
	overflow: visible
}
</style>
</head>
<body>
	<div id="webView">
		<header>
			<jsp:include page="top.jsp" flush="false" />
		</header>
		<div>
			<section id="areaMain">
				<jsp:include page="SearchForm.jsp" flush="false" />
			</section>
		</div>
		<div id="content">
			<section id="areaChangePic">
				<jsp:include page="imgChange.jsp" flush="false" />
			</section>
		</div>
		<footer style="bottom: 500px;">
			<jsp:include page="bottom.jsp" flush="false" />
		</footer>
	</div>
</body>
</html>