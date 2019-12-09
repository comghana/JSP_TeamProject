<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*, AirFlying.*"%>
	<jsp:useBean id="cityMgr" class="AirFlying.CityMgr" />

<link href="ImgChange.css" type="text/css" rel="stylesheet">
 <script type="text/javascript" src="ImgChange.js"></script>
<style>

</style>
<%Vector vResult = cityMgr.getInCityList(); %>
<div id="view" style="margin-top: 550px;">
	<div style="left: 100px; position: absolute; z-index: 10; top: -50px;">
	<b style="font-size: 40px;">> 추천 여행지 </b>
	</div>
	<div id="contents">
    <section>
      <article class="article_sliding">
        <div class="slidesFade">
	<%
    for(int i = 0; i < vResult.size(); i++) {
    	CityBean cityBean = (CityBean)vResult.get(i);
    %>
    <div>
    <div><img src="../img/<%=cityBean.getCity_file() %>"></div>
    <div style="text-align:center;"><p><%=cityBean.getCity_name() %></p></div>
    </div>
    <%} %>
    <a class="pre" onclick="moving(-1);">&#10094;</a>
    <a class="next" onclick="moving(+1);">&#10095;</a>
    </article>
    <div style="text-align:center;">
    <%
    for(int i = 0; i < vResult.size(); i++) {
    %>
    <span class="rect" onclick="current(<%=i+1 %>)"></span>
    <%} %>
    </div>
    </section>
   
</div>