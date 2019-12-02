package prgs;
import java.sql.*;

import beans.SearchFlightBean;
import beans.SignUpBean;
import secret.DBConnection;

public class SearchFlightPrg {
	private DBConnection pool = null;
	
	public SearchFlightPrg() {
        try {
            pool = DBConnection.getInstance();
        } catch (Exception e) {
            System.out.println("Error!!");
        }
	}
	
	public boolean insertMember(SearchFlightBean search) {
		boolean finishFlag = false;
	      Connection con = null;
	      PreparedStatement pstmt = null;
	      try {
	            con = pool.getConnection();
	            String query = ""; //TODO : 쿼리문 입력
	            pstmt = con.prepareStatement(query);
	            	//TODO : 검색관련 코드 입력해야함

	      } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            pool.freeConnection(con, pstmt);
	        }
	      return finishFlag;
	}
}