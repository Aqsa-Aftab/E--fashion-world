package dbutil;
import java.sql.*;
import java.util.ResourceBundle;


public class CrudOperation {
	private static Connection con;
	private static PreparedStatement ps;
	private static ResourceBundle rb;
	private static ResultSet rs;
	
	
public static Connection createConnection() {
		
		try {
			rb=ResourceBundle.getBundle("efashion.dbinfo.details");
			String ui=rb.getString("app.userid");
			String upass=rb.getString("app.userpass");
			String url=rb.getString("app.url");
			
			Class.forName("com.mysql.jdbc.Driver");
			/*con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");
			*/con = DriverManager.getConnection(url,ui,"root");
			
		}catch(SQLException |ClassNotFoundException cse ) {
			System.out.println(cse);
		}
		return con;
	}
public static ResultSet getData(String sql) {
	
	try {
		con=createConnection();
        ps=con.prepareStatement(sql);
		
		rs=ps.executeQuery();
		
	}catch(SQLException se)
	{
		System.out.println(se);
	}
	return rs;
	
}

public static ResultSet getData(String sql,String ui) {
	
	try {
		con=createConnection();
        ps=con.prepareStatement(sql);
		ps.setString(1, ui);
		rs=ps.executeQuery();
	}catch(SQLException se)
	{
		System.out.println(se);
	}
	return rs;
	
}
public static ResultSet getData(String sql,int id) {
	
	try {
		con=createConnection();
      ps=con.prepareStatement(sql);
		ps.setInt(1, id);
		rs=ps.executeQuery();
	}catch(SQLException se)
	{
		System.out.println(se);
	}
	return rs;
	
}


}
