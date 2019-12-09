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
	System.out.print(vc);
%>
