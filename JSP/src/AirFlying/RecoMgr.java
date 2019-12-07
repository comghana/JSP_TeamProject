package AirFlying;

import java.sql.*;
import java.util.Vector;

import AirFlying.RecoBean;


public class RecoMgr {

    private DBConnectionMgr pool = null;

    public RecoMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public RecoBean getRecommend(String reco_name) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        RecoBean recoBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from recommend where city_name=?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, reco_name);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                recoBean = new RecoBean();
                recoBean.setReco_name(rs.getString("reco_name"));
                recoBean.setReco_file(rs.getString("reco_file"));
                recoBean.setReco_status(rs.getString("status"));
                
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return recoBean;
    }
    
    public Vector getRecoList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from recommend";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                RecoBean recoBean = new RecoBean();
                recoBean.setReco_name(rs.getString("city_name"));
                recoBean.setReco_file(rs.getString("file_name"));
                recoBean.setReco_status(rs.getString("status"));
                vecList.add(recoBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }

    
    public boolean updateStatus(RecoBean recoBean) {
    	Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        String qu1 = "update recomment set status='out' where city_name = ?;";
        /*String qu2 = "update recomment set status='in' where city_name = ?;";
        String result = null;
        if(recoBean.getReco_status() == "in") result = qu1;
        else result = qu2;*/
        try {
        	con = pool.getConnection();
        	pstmt = con.prepareStatement(qu1);
        	pstmt.setString(1, recoBean.getReco_name());
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
