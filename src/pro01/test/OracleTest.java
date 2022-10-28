package pro01.test;

//import static org.junit.Assert.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.logging.Logger;

import org.junit.Test;

import java.sql.*;

public class OracleTest {
	private final static Logger log = Logger.getGlobal();
	private final static String DRIVER = "oracle.jdbc.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final static String USER = "system";
	private final static String PW = "1234";
	
	@Test
	public void OracleConnectTest() throws ClassNotFoundException {
		Class.forName(DRIVER);
		String sql = "select sysdate as now from dual";
		try(
				Connection con = DriverManager.getConnection(URL, USER, PW);
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
			log.info("콘 : "+con);
			log.info("피에스티엠티 : "+pstmt);
			rs.next();
			log.info("현재: "+rs.getDate("now"));
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
}