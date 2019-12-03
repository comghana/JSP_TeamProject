<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sorry</title>
<style>
body {
	margin: 0;
	padding: 0;
}

#webView {
	overflow: visible;
	position: relative;
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
			<jsp:include page="Top.jsp" flush="false" />
		</header>
		<br><br><br>
		<div id="contents" style="margin-left:350px;">
        <section>
          <article>
              <img id = "sry" src="../img/sorry.png" alt="sorry" style="width:600px; margin-left: 20%"><br>
              <br>
        <button type="button" class="btn btn-secondary" id = "aa" style="background-color: #585858;margin-left:400px;color:#FFFFFF;"
        onclick="location.href='index.jsp'" >&nbsp&nbsp&nbsp이전&nbsp&nbsp&nbsp</button>
          </article>
        </section>
        <br><br>
      </div>
			<jsp:include page="Bottom.jsp" flush="false" />
		</footer>
	</div>
</body>
</html>