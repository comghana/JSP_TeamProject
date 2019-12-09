package AirFlying;

import java.sql.*;
import java.util.Vector;

import AirFlying.CityBean;

public class CityMgr {
	 private DBConnectionMgr pool = null;

	    public CityMgr() {
	        try {
	            pool = DBConnectionMgr.getInstance();
	        } catch (Exception e) {
	            System.out.println("Error !!");
	        }
	    }
	    
	    public boolean outCity(CityBean cityBean) {
	    	Connection con = null;
	        PreparedStatement pstmt = null;
	        boolean flag = false;
	        String out = "out";
	        
	        try {
	        	con = pool.getConnection();
	        	pstmt = con.prepareStatement("update city set io = ? where name = ?;");
	        	pstmt.setString(1, out);
	        	pstmt.setString(1, cityBean.getCity_name());
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
	    
	    public boolean inCity(CityBean cityBean) {
	    	Connection con = null;
	        PreparedStatement pstmt = null;
	        boolean flag = false;
	        String in = "in";
	        
	        try {
	        	con = pool.getConnection();
	        	pstmt = con.prepareStatement("update city set io = ? where name = ?;");
	        	pstmt.setString(1, in);
	        	pstmt.setString(1, cityBean.getCity_name());
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
	    
	    public CityBean getCity(String city_name) {
	    	Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        CityBean cityBean = null;
	        
	        try {
	        	con = pool.getConnection();
	            String strQuery = "select * from city where name=?;";
	            pstmt = con.prepareStatement(strQuery);
	            pstmt.setString(1, city_name);
	            rs = pstmt.executeQuery();
	            
	            if(rs.next()) {
	            	cityBean = new CityBean();
	            	cityBean.setCity_name(rs.getString("name"));
	            	cityBean.setCity_file(rs.getString("file"));
	            	cityBean.setCity_io(rs.getString("io"));
	            }
	            
	        }catch (Exception ex) {
	            System.out.println("Exception" + ex);
	        } finally {
	            pool.freeConnection(con, pstmt, rs);
	        }
	        return cityBean;
	    }
	    
	    public Vector getCityList() {
	    	Connection con = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        Vector vecList = new Vector();
	        try {
	            con = pool.getConnection();
	            String strQuery = "select * from city";
	            stmt = con.createStatement();
	            rs = stmt.executeQuery(strQuery);

	            while (rs.next()) {
	                CityBean cityBean = new CityBean();
	                cityBean.setCity_name(rs.getString("name"));
	                cityBean.setCity_file(rs.getString("file"));
	                cityBean.setCity_io(rs.getString("io"));
	                vecList.add(cityBean);
	            }
	        } catch (Exception ex) {
	            System.out.println("Exception" + ex);
	        } finally {
	            pool.freeConnection(con, stmt, rs);
	        }
	        return vecList;
	    }
	    
}
