package AirFlying;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
    
	public Vector getFlightList(SearchBean searchPara) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Vector<FlightBean> vecList = new Vector<FlightBean>();

        try {
            con = pool.getConnection();
            String strQuery = "select id, airline, airport, city, flight_num, stdate, eddate, time, mon, tue, wed, thu, fri, sat, sun from flight, airport_info where flight.airport = airport_info.KNAME and KNAME=?";// TODO: SQL 구문 수정
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, searchPara.departureCity);
            pstmt.setString(2, searchPara.minimumTime);
            pstmt.setString(3, searchPara.departureDate);
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
                vecList.add(listBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return vecList;
    }
	
}
