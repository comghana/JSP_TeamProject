package AirFlying;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Vector;
import AirFlying.WishBean;

/*
 * 작성자: 장지은
 * 파일 이름: WishMgr.java
 * 목적: Wish List출력, 삭제, 삽입을 위한 파일
 */

public class WishMgr {
	
	private DBConnectionMgr pool = null;
	
	public WishMgr(){
		try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
	}
	
	//위시리스트 출력 얻기
	public Vector getWishList() {
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();
        try {
            con = pool.getConnection();
            String strQuery = "select * from wish_list";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                WishBean wishBean = new WishBean();
                wishBean.setMem_id(rs.getString("mem_id"));
                wishBean.setFlight_id(rs.getString("flight_id"));
                wishBean.setAdd_date(rs.getString("add_date"));
                vecList.add(wishBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
	}
	
	
	//위시리스트 추가
	public boolean wishInsert(WishBean wishBean) {
		Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        SimpleDateFormat timeFormat = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
        java.util.Date time = new java.util.Date();
        try {
            con = pool.getConnection();
            String strQuery = "insert into wish_list values(?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, wishBean.getMem_id());
            pstmt.setString(2, wishBean.getFlight_id());
            pstmt.setString(3, timeFormat.format(time));
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
		
		 return flag;
	}
	
	//위시리스트 삭제
	public boolean deleteWish(WishBean wishBean) {
		Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = pool.getConnection();
        	pstmt = con.prepareStatement("delete from wish_list where mem_id = ? and flight_id = ?");
        	pstmt.setString(1, wishBean.getMem_id());
        	pstmt.setString(2, wishBean.getFlight_id());
            int count = pstmt.executeUpdate();
            if (count == 1) {
                flag = true;
            }
        }catch (Exception ex) {//
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
		return flag;
	}
	
}
