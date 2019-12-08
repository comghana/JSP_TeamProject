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
    
	public Vector getFlightList(String depCity, String arrvCity, String depDate, String returnDate, String minimumTime) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select airline, airport, city, flight_num, stdate, eddate, time, mon, tue, wed, thu, fri, sat, sun from flight where ";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, depCity);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                FlightBean listBean = new FlightBean();
                listBean.setMem_id(rs.getString("id"));
                listBean.setMem_name(rs.getString("name"));
                listBean.setMem_gender(rs.getString("gender"));
                listBean.setMem_phone(rs.getString("phone"));
                listBean.setMem_birth(rs.getString("birth"));
                listBean.setMem_date(rs.getString("date"));
                vecList.add(regBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return vecList;
    }
}
