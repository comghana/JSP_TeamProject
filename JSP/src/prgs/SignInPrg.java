package prgs;

import java.sql.*;

import beans.SignUpBean;
import secret.DBConnection;

public class SignInPrg {
	private DBConnection pool = null;

	public SignInPrg() {
        try {
            pool = DBConnection.getInstance();
        } catch (Exception e) {
            System.out.println("Error!!");
        }
	}

	public boolean loginMember(String id, String password) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginAcc = false;
		try {
			con = pool.getConnection();
			String query = ""; // TODO : 쿼리문 입력
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			loginAcc = rs.next();
		} catch (Exception ex) {
			System.out.println("Exception :" + ex);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return loginAcc;
	}
}
