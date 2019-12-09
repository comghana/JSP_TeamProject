package AirFlying;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;

public class SearchMgr {

    private DBConnectionMgr pool = null;

    public SearchMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }
    
	public Vector getFlightList(SearchBean searchPara) throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int depday = getDateDay(searchPara.getDepartureDate(), "yyyy-MM-dd"); //날짜 숫자변환 일요일 0 ~ 6 토요일
        String chweek = null;
        String io = "out";
        String tmp = "select id, kname, airline, airport, city, flight_num, stdate, eddate, time, mon, tue, wed, thu, fri, sat, sun"
        		+ " from flight, airport_info"
        		+ " where airport = ? and city = ? and time > ? and stdate < ? and eddate > ? and iotype = ?";
        
        switch(depday) {
        case 0:
        	chweek = tmp + " and sun = ?";
        	break;
        case 1:
        	chweek = tmp + " and mon = ?";
        	break;
        case 2:
        	chweek = tmp + " and tue = ?";
        	break;
        case 3:
        	chweek = tmp + " and wed = ?";
        	break;
        case 4:
        	chweek = tmp +  " and thu = ?";
        	break;
        case 5:
        	chweek = tmp + " and fri = ?";
        	break;
        case 6:
        	chweek = tmp + " and sat = ?";
        	break;
        }
        System.out.println();
        Vector<FlightBean> vecList = new Vector<FlightBean>();
        try {
            con = pool.getConnection();
            if(searchPara.getSearchOption().equals("oneway")) {
	            String chk = "Y";
	            pstmt = con.prepareStatement(chweek + " and airport_info.KNAME=flight.airport");
	            pstmt.setString(1, searchPara.departureCity);
	            pstmt.setString(2, searchPara.arriveCity);
	            pstmt.setString(3, searchPara.minimumTime);
	            pstmt.setString(4, searchPara.departureDate);
	            pstmt.setString(5, searchPara.departureDate);
	            pstmt.setString(6, io);
	            pstmt.setString(7, chk);
	            
	            rs = pstmt.executeQuery();
	            
	            while (rs.next()) {
	                FlightBean listBean = new FlightBean();
	                listBean.setId(rs.getString("id"));
	                listBean.setAirline(rs.getString("airline"));
	                listBean.setAirport(rs.getString("airport"));
	                listBean.setArrvCity(rs.getString("city"));
	                listBean.setFlightNv(rs.getString("flight_num"));
	                listBean.setStdate(rs.getString("stdate"));
	                listBean.setEddate(rs.getString("eddate"));
	                listBean.setDeptime(rs.getString("time"));
	                listBean.setMon(rs.getString("mon"));
	                listBean.setTue(rs.getString("tue"));
	                listBean.setWed(rs.getString("wed"));
	                listBean.setThu(rs.getString("thu"));
	                listBean.setFri(rs.getString("fri"));
	                listBean.setSat(rs.getString("sat"));
	                listBean.setSun(rs.getString("sun"));
	                listBean.setQlDepDate(searchPara.departureDate);
	                listBean.setQlMinimumTime(searchPara.minimumTime);
	                vecList.add(listBean);
	            }
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return vecList;
    }
	
	
	public int getDateDay(String date, String dateType) throws Exception {

	    int day = 0;
	    SimpleDateFormat dateFormat = new SimpleDateFormat(dateType) ;
	    Date nDate = dateFormat.parse(date) ;
	    Calendar cal = Calendar.getInstance() ;
	    cal.setTime(nDate);
	    int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
	    switch(dayNum){
	        case 1:
	            day = 0;
	            break ;
	        case 2:
	            day = 1;
	            break ;
	        case 3:
	            day = 2;
	            break ;
	        case 4:
	            day = 3;
	            break ;
	        case 5:
	            day = 4;
	            break ;
	        case 6:
	            day = 5;
	            break ;
	        case 7:
	            day = 6;
	            break ;
	    }
	     
	    return day;
	}

}
