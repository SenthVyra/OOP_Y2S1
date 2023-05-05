import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PayDb {

	private String dburl="jdbc:mysql://localhost:3306/payment";
	private String dbdriver="com.mysql.jdbc.Driver";
	private String dbuname="root";
	private String dbpassword="";
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection()
	{
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl, dbuname, dbpassword);
		} catch (SQLException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;

	}
	public String insert (Subscriber subscriber)

	{
		loadDriver(dbdriver);
		Connection con=getConnection();
		String result="Data entered successfully";
		String sql="insert into payment.subscriber values (?,?,?,?,?,?,?,?)";

	try {
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, subscriber.getFirstname());
		ps.setString(2, subscriber.getLastname());
		ps.setString(3, subscriber.getEmail());
		ps.setString(4, subscriber.getDd());
		ps.setString(5, subscriber.getMm());
		ps.setString(6, subscriber.getYyyy());
		ps.setString(7, subscriber.getCdNum());
		ps.setString(8, subscriber.getCvcNum());
		ps.executeUpdate();

	}	
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="Data not entered";
		}

	return result;
	}
	}
	