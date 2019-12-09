package parsing;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.*;

public class ParsingAirport {
    public static void main(String[] args) throws IOException {
       
       String str = "";
       for(int i = 1; i <= 98; i++) {
          StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.co.kr/service/rest/AirportCodeList/getAirportCodeList"); /*URL*/
            urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=t7JNaN3czxsOj55Bhi1Rjhg6gaGj%2BkU8ey%2FDyv8QcdVW%2BTqfAv5DnWi3q81c2h%2B%2BgafZ2NctqwKCU3wu6Djxag%3D%3D"); /*Service Key*/
            urlBuilder.append("&" + "pageNo=" + i); /*인증키*/
            URL url = new URL(urlBuilder.toString());
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-type", "application/json");
            //System.out.println("Response code: " + conn.getResponseCode());
            BufferedReader rd;
            if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {
                rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
            }
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();
            //System.out.println(sb.toString());
            str += sb.toString();
        }
       
       /*
        * 작성자: 장지은
        * 파일 이름: ParsingAirport.java
        * 목적: API에서 받은 데이터를 가공하여 데이터베이스에 저장
        */

       
       // 여기부터 필요한 데이터를 얻어오는 곳
       final String []token = { "<cityCode>", "<cityEng>", "<cityKor>" };
       String[] parse = null;
       ArrayList<String> sub[] = new ArrayList[3];
       
       //for (String it : token)
       for (int i = 0; i < token.length; i++)
       {
          parse = str.split(token[i]);
          sub[i] = new ArrayList<String>();
          
          for (int j = 1; j < parse.length; j++)
          {
             sub[i].add(parse[j].split("</")[0]);
             //System.out.println(sub[i][0]);
          }
       }
       
       // DB 드라이버 로드 후 커넥트(Connect)
       final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
       final String DB_URL = "jdbc:mysql://localhost:3306/airflying?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
       final String USERNAME = "root";
       final String PASSWORD = "0000";
       
       Connection conn = null;
       PreparedStatement smt = null;
       try {
    	   Class.forName(JDBC_DRIVER);
    	   conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
    	   
    	   //데이터 받기
    	   for(int i = 0; i < sub[0].size(); i++) {
    		   smt = conn.prepareStatement("insert into airport_info values(?, ?, ?);");
    		   smt.setString(1, sub[0].get(i));
    		   smt.setString(2, sub[1].get(i));
    		   smt.setString(3, sub[2].get(i));
    		   int r = smt.executeUpdate();
        	   //System.out.println("변경된 row : " + r);
    	   }
    	   
       }catch(ClassNotFoundException e ) {
    	   e.printStackTrace();
       } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
       }finally {
    	   if(smt != null) {
    		   try {smt.close();}catch(SQLException e) {e.printStackTrace();}
    	   }
    	   if(conn != null) {
    		  try {conn.close();} catch(SQLException e) {e.printStackTrace();}
    	   }
       }  
       System.out.println("Over");
    }
    
}