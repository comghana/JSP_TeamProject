package AirFlying;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


public class AirportLoadMgr {
	private DBConnectionMgr pool = null;

    public AirportLoadMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public Vector<SearchLoadBean> loadData() {
    	Vector<SearchLoadBean> vc = new Vector<SearchLoadBean>();
    	 Connection con = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         try {
             con = pool.getConnection();
             String strQuery = "SELECT distinct * FROM airport_info";
             pstmt = con.prepareStatement(strQuery);
             rs = pstmt.executeQuery();
             while (rs.next()) {
                 SearchLoadBean loadSet = new SearchLoadBean();
                 loadSet.setPortCode(rs.getString("port_code"));
                 loadSet.seteName(rs.getString("ename"));
                 loadSet.setkName(rs.getString("kname"));
                 vc.add(loadSet);
             }
         } catch (Exception ex) {
             System.out.println("Exception" + ex);
         } finally {
             pool.freeConnection(con, pstmt, rs);
         }
  		return vc;

    }
}
