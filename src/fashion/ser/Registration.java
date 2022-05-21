package fashion.ser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbutil.CrudOperation;


import java.sql.*;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection cn;
	private PreparedStatement pslogin,psreg,ps;
	ResultSet rs;
	
	int a;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id=request.getParameter("userid");
		
       cn=CrudOperation.createConnection();
		
		String strsql ="select * from logininfo where userid=?";
		
        try{
			
			ps = cn.prepareStatement(strsql);
			ps.setString(1, id);
			rs= ps.executeQuery();
			
			if(rs.next())
			{
				/*request.setAttribute("msg","User Id already exit");
				RequestDispatcher rd= request.getRequestDispatcher("/jsp/registration.jsp");
				rd.forward(request, response);*/
				a=1;
				out.println("user id already exist");
			}
		
        }
        catch(SQLException se)
		{
			
			System.out.println(se);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if(a==0)
		{
			String ui =request.getParameter("userid");
		String upass = request.getParameter("userpass");
		String uname = request.getParameter("username");
		String uemail = request.getParameter("useremail");
		String uphone = request.getParameter("userphone");
		String gender = request.getParameter("gender");
		String address = request.getParameter("useraddress");
		String usertype = request.getParameter("usertype");
		//System.out.println(ui +"" + upass+"" + uname+"" + uemail+"" + uphone);
		
		
		java.util.Date dt = new java.util.Date();
		java.sql.Date sd = new java.sql.Date(dt.getTime());
		
		cn = CrudOperation.createConnection();
		
		String strlogin ="insert into logininfo values(?,?,?)";
		String strreg ="insert into registration(userid, name, address, email, phoneno, dor, gender) values(?,?,?,?,?,?,?)";
		
		try{
			
			cn.setAutoCommit(false);
			pslogin=cn.prepareStatement(strlogin);
			psreg=cn.prepareStatement(strreg);
			pslogin.setString(1, ui);
			pslogin.setString(2, upass);
			pslogin.setString(3, usertype);
			
			psreg.setString(1, ui);
			psreg.setString(2, uname);
			psreg.setString(3, address);
			psreg.setString(4, uemail);
			psreg.setString(5, uphone);
			psreg.setDate(6, sd);
			psreg.setString(7, gender);
			
			
			
			int rw=pslogin.executeUpdate();
			int rw1=psreg.executeUpdate();
			
			if(rw>0&&rw1>0)
			{//cn.setAutoCommit(true);
			cn.commit();
			System.out.println("registration done");
			
			
			response.sendRedirect("/e-fashion/jsp/login.jsp");
			
			}
		}
			
		
		catch(SQLException s)
		{
			System.out.println(s); 
			
		}
		
		}
		
		else{
			a=0;
			response.sendRedirect("/e-fashion/jsp/Registration.jsp");
		}
	

	}

}
