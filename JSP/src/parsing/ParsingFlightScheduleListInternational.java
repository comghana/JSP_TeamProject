package parsing;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.IOException;

public class ParsingFlightScheduleListInternational {
	
	public static void main(String[] args) throws IOException {
		System.out.println("start");
		String str = "";
		for (int i = 0; i <= 1811; i++) {
			StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.co.kr/service/rest/FlightScheduleList/getIflightScheduleList"); /*URL*/
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
		System.out.println("finish load");
		//필요한 데이터를 얻어오기
		System.out.println("start token");
		final String []token = {"<airlineKorean>", "<airport>", "<city>", "<internationalEddate>",
				"<internationalFri>", "<internationalIoType>", "<internationalMon>", "<internationalNum>",
				"<internationalSat>", "<internationalStdate>", "<internationalSun>", "<internationalThu>",
				"<internationalTime>", "<internationalTue>", "<internationalWed>"};
		String[] parse = null;
		ArrayList<String> sub[] = new ArrayList[15];
	
		for(int i = 0; i < token.length; i++) {
			parse = str.split(token[i]);
			sub[i] = new ArrayList<String>();
			System.out.println("1");
			for(int j = 1; j < parse.length; j++) {
				sub[i].add(parse[j].split("</")[0]);
				System.out.println("2");
				//System.out.print(sub[i].get(j));
			}
			
		}
		System.out.println("start db con");
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
	    	   System.out.println("conn 완료");
	    	   String qu = "insert into internationalFlight(airline, airport, city, iotype,"
	    	   		+ "flight_num, stdate, eddate, time, mon, tue, wed, thu, fri,"
	    	   		+ "sat, sun) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	    	   //데이터 받기
	    	   for(int i = 0; i < sub[0].size(); i++) {
	    		   smt = conn.prepareStatement(qu);
	    		   smt.setString(1, sub[0].get(i));
	    		   smt.setString(2, sub[1].get(i));
	    		   smt.setString(3, sub[2].get(i));
	    		   smt.setString(4, sub[5].get(i));
	    		   smt.setString(5, sub[7].get(i));
	    		   smt.setString(6, sub[9].get(i));
	    		   smt.setString(7, sub[3].get(i));
	    		   smt.setString(8, sub[12].get(i));
	    		   smt.setString(9, sub[6].get(i));
	    		   smt.setString(10, sub[13].get(i));
	    		   smt.setString(11, sub[14].get(i));
	    		   smt.setString(12, sub[11].get(i));
	    		   smt.setString(13, sub[4].get(i));
	    		   smt.setString(14, sub[8].get(i));
	    		   smt.setString(15, sub[10].get(i));
	    		   int r = smt.executeUpdate();
	        	   System.out.println("변경된 row : " + r);
	    	   }
	    	   
	       }catch(ClassNotFoundException e ) {
	    	   e.printStackTrace();
	    	   System.out.println("error");
	       } catch (SQLException e) {
			// TODO Auto-generated catch block
	    	System.out.println("error");
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
