package prgs;
import java.sql.*;

import beans.SignUpBean;
import secret.DBConnection;

public class SignUpPrg {
	private DBConnection pool = null;
	
	public SignUpPrg() {
        try {
            pool = DBConnection.getInstance();
        } catch (Exception e) {
            System.out.println("Error!!");
        }
	}
	
	public boolean insertMember(SignUpBean member) {
		boolean finishFlag = false;
	      Connection con = null;
	      PreparedStatement pstmt = null;
	      try {
	            con = pool.getConnection();
	            String query = ""; //TODO : 쿼리문 입력
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, member.getId());
	            pstmt.setString(2, member.getPassword());
	            pstmt.setString(3, member.getName());
	            pstmt.setString(4, member.getGender());
	            pstmt.setString(5, member.getPhone());
	            pstmt.setString(6, member.getBirthday());
	            int count = pstmt.executeUpdate();
	            if(count==1) //값이 정상적으로 들어갔을때
	            	finishFlag = true;
	        } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            pool.freeConnection(con, pstmt);
	        }
	      return finishFlag;
	}
}