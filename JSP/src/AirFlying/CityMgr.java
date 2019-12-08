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

    public boolean checkId(String id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select id from member where id = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            checkCon = rs.next();

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return checkCon;
    }

 /*   public Vector zipcodeRead(String area3) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();
        try {
            con = pool.getConnection();
            String strQuery = "select * from zipcode where area3 like '" + area3 + "%'";
            pstmt = con.prepareStatement(strQuery);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ZipcodeBean tempZipcode = new ZipcodeBean();
                tempZipcode.setZipcode(rs.getString("zipcode"));
                tempZipcode.setArea1(rs.getString("area1"));
                tempZipcode.setArea2(rs.getString("area2"));
                tempZipcode.setArea3(rs.getString("area3"));
                tempZipcode.setArea4(rs.getString("area4"));
                vecList.addElement(tempZipcode);
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return vecList;
    }*/

    /*public boolean memberInsert(CityBean cityBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "insert into member values(?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, cityBean.getMem_id());
            pstmt.setString(2, cityBean.getMem_passwd());
            pstmt.setString(3, cityBean.getMem_name());
            pstmt.setString(4, cityBean.getMem_gender());
            pstmt.setString(5, cityBean.getMem_phone());
            pstmt.setString(6, cityBean.getMem_birth());
            pstmt.setString(7, cityBean.getMem_date());
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
    }*/
    
    public boolean deleteCity(CityBean cityBean) {
    	Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
       
        try {
        	con = pool.getConnection();
        	pstmt = con.prepareStatement("delete from city where city_name = ?;");
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
    
    public boolean outCity(CityBean cityBean) {
    	Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
       
        try {
        	con = pool.getConnection();
        	pstmt = con.prepareStatement("update city set city_io = ? where city_name =?;");
        	pstmt.setString(1, "out");
        	pstmt.setString(2, cityBean.getCity_name());
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
       
        try {
        	con = pool.getConnection();
        	pstmt = con.prepareStatement("update city set city_io = ? where city_name =?;");
        	pstmt.setString(1, "in");
        	pstmt.setString(2, cityBean.getCity_name());
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
            String strQuery = "select * from city where city_name=?;";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, city_name);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                cityBean = new CityBean();
                cityBean.setCity_name(rs.getString("city_name"));
                cityBean.setCity_file(rs.getString("city_file"));
                cityBean.setCity_io(rs.getString("city_io"));
            }
        } catch (Exception ex) {
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
                cityBean.setCity_name(rs.getString("city_name"));
                cityBean.setCity_file(rs.getString("city_file"));
                cityBean.setCity_io(rs.getString("city_io"));
                vecList.add(cityBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }

    /*public boolean memberUpdate(CityBean cityBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "update members set passwd=?, name=?,";
            strQuery = strQuery + " e_mail=?, phone=?, address=?,job=?";
            strQuery = strQuery + " where id=? ";

            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, cityBean.getMem_passwd());
            pstmt.setString(2, cityBean.getMem_name());
            pstmt.setString(3, cityBean.getMem_email());
            pstmt.setString(4, cityBean.getMem_phone());
            pstmt.setString(5, cityBean.getMem_address());
            pstmt.setString(6, cityBean.getMem_job());
            pstmt.setString(7, cityBean.getMem_id());
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
    }*/

    public boolean loginCheck(String id, String passwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select id, passwd from member where id = ? and passwd = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, passwd);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return loginCon;
    }

}
