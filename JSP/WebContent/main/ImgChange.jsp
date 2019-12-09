<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*, AirFlying.*"%>
	<jsp:useBean id="cityMgr" class="AirFlying.CityMgr" />


<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<style>
#contents {
width:85%;
float:left;
position:relative;
bottom:5px;
}
.article_sliding {
  width:1000px;
  height:550px;
  position:relative;
  bottom:0px;
  padding-left: 300px;
}

.article_sliding img{
  width: 1000px;
  height: 500px;
}

.pre, .next{
  position:absolute;
  top:47%;
  color: black;
  font-size:20px;
  padding:20px;
  cursor:pointer;
}

.next{right:0px;
	padding-right:20px;}

.pre:hover, .next:hover{
  background:#342c2c;
  border-radius:7px;
}

.rect{
  width:10px;
  height:2px;
  display:inline-block;
  background:#342c2c;
  padding:5px;
  position:relative;
  bottom:30px;
  left:150px;
  cursor:pointer;
}

.slidesFade{
  animation-name: slidesFade;
  animation-duration:1.0s;
}

@keyframes slidesFade{
  from{opacity:0.4;}
  to{opacity:1;}
}
.active, .rect:hover{background:#BBBBBB;}

</style>
<%Vector vResult = cityMgr.getInCityList(); %>
<div id="view" style="margin-top: 550px;">
	<div style="left: 100px; position: absolute; z-index: 10; top: -50px;">
	
	</div>
	<div id="contents">
    <section>
      <article class="article_sliding">
        <b style="font-size: 40px;">> 추천 여행지 </b>
	<%
    for(int i = 0; i < vResult.size(); i++) {
    	CityBean cityBean = (CityBean)vResult.get(i);
    %>
    <div class="slidesFade">
    <div><img src="../img/<%=cityBean.getCity_file() %>"></div>
    <div style="text-align:center; font-size:25px;"><p><%=cityBean.getCity_name() %></p></div>
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
    <script>
    var index=1;

    show(index);

    setInterval("moving(index)",2000);

    function moving(n){
      show(index+=n);
    }

    function current(n){
      show(index=n);
    }

    function show(n){
      var slide = document.getElementsByClassName("slidesFade");
      var rect = document.getElementsByClassName("rect");

      if(n > slide.length) {
        index=1;
      }
      else if(n < 1) {
        index=slide.length;
      }
      for(var i=0;i<slide.length;i++){
        slide[i].style.display="none";
      }
      slide[index-1].style.display="block";
      for(var i=0;i<rect.length;i++){
        rect[i].className=rect[i].className.replace(" active","");
      }
      rect[index-1].className+=" active";
    }

    </script>
    </div>
</div>