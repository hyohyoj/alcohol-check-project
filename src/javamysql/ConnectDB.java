package javamysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectDB {
	// 싱글톤 패턴으로 사용 하기위 한 코드들
	private static ConnectDB instance = new ConnectDB();

	public static ConnectDB getInstance() {
		return instance;
	}

	public ConnectDB() {

	}

	Connection conn = null;
	PreparedStatement stmt = null;
	PreparedStatement stmt1 = null;
	PreparedStatement stmt2 = null;
	String returns = "경고가";

	// 데이터베이스와 통신하기 위한 코드가 들어있는 메서드
	public String connectionDB(String r_lat, String r_lng,String rme, String deviceid,String aph) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 디비 연결
			conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_C?useUnicode=true&characterEncoding=utf8", "root", "1234");
			stmt2 =conn.prepareStatement("select * from android where deviceid = ?");
			stmt2.setString(1,deviceid);

			ResultSet rs1 = stmt2.executeQuery();
			
			if(rs1.next()) {
			
				
			stmt = conn.prepareStatement("insert into report(r_lat,r_lng,rme,a_uid) value(?,?,?,?)");

			
			stmt.setString(1,r_lat );
			stmt.setString(2,r_lng );
			stmt.setString(3,rme );
			stmt.setString(4,rs1.getString("a_uid"));
			
			stmt.executeUpdate();
			}
			//}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)try {stmt.close();	} catch (SQLException ex) {}
			if (stmt1 != null)try {stmt1.close();	} catch (SQLException ex) {}
			if (stmt2 != null)try {stmt2.close();	} catch (SQLException ex) {}
			if (conn != null)try {conn.close();	} catch (SQLException ex) {	}
		}
		return returns;
	}

}


