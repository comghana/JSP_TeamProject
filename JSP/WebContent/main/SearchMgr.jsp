<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, AirFlying.*"%>
<jsp:useBean id="airportLoad" class="AirFlying.SearchMgr" />
<%
	SearchBean searchPara = new SearchBean();
	searchPara.setSearchOption(request.getParameter("radioOp"));
	searchPara.setFlightNumber(request.getParameter("flightnv"));
	searchPara.setDepartureCity(request.getParameter("departure"));
	searchPara.setArriveCity(request.getParameter("arrive"));
	searchPara.setDepartureDate(request.getParameter("depdate"));
	searchPara.setReturnDate(request.getParameter("arrvdate"));
	searchPara.setMinimumTime(request.getParameter("minimumtime"));
	Vector vc = new Vector<>();
	vc = airportLoad.getFlightList(searchPara);
	
%>
