<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="airportLoad" class="AirFlying.SearchMgr" />
<%
	request.setCharacterEncoding("utf-8");
	SearchBean searchPara = new SearchBean();
	searchPara.setSearchOption(request.getParameter("radioOp"));
	searchPara.setFlightNumber(request.getParameter("flightnv"));
	searchPara.setDepartureCity(request.getParameter("departure"));
	searchPara.setArriveCity(request.getParameter("arrive"));
	searchPara.setDepartureDate(request.getParameter("depdate"));
	searchPara.setReturnDate(request.getParameter("arrvdate"));
	searchPara.setMinimumTime(request.getParameter("minimumtime"));
	Vector <FlightBean> vc = new Vector<FlightBean>();
	vc = airportLoad.getFlightList(searchPara);
	/* FlightBean listBean = new FlightBean(); //테스트 코드 
    listBean.setId("1");
    listBean.setAirline("ASIANA");
    listBean.setAirport("ICN");
    listBean.setArrvCity("LAX");
    listBean.setFlightNv("OZ1929");
    listBean.setStdate("2014-12-15");
    listBean.setEddate("2015-02-15");
    listBean.setDeptime("1512");
    vc.add(listBean); */
	request.setAttribute("flightListResult", vc);
%>
<jsp:forward page = "Search_Index.jsp"/>;
