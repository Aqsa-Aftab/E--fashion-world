package fashion.ser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutil.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Connection con;
     PreparedStatement ps;
     ResultSet rs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String ui =request.getParameter("userid");
		String upass = request.getParameter("userpass");
		String remember=request.getParameter("remember");
		//System.out.println(ui + upass);
		
		con=CrudOperation.createConnection();
		
		String strsql ="select * from logininfo where userid=? and userpass=?";
		
		try{
			
			
			
			ps = con.prepareStatement(strsql);
			ps.setString(1, ui);
			ps.setString(2, upass);
			rs= ps.executeQuery();
			
			if(rs.next())
			{
				
				if(remember!=null)
				{
					String info=ui+"#"+upass;
					    Cookie cookie1=new Cookie("MyCookie",info);
						cookie1.setMaxAge(60*60);
						response.addCookie(cookie1);
						System.out.println("Cookie created");
						
						
				}
				
				HttpSession hs=request.getSession();
				
				//hs.setMaxInactiveInterval(30);
				hs.setAttribute("userinfo", ui);
				
				String usertype=rs.getString("usertype");
				hs.setAttribute("usertype", usertype);
				
					
					
					if(usertype.equals("admin"))
					{
						
						response.sendRedirect("/e-fashion/jsp/adprofile.jsp");
					}
					else if(usertype.equals("company"))
					{
					
						response.sendRedirect("/e-fashion/jsp/companyhome.jsp");
					}
					else
					{
						
						response.sendRedirect("/e-fashion/jsp/userhome.jsp");
					}
					
					
					
				
			}
			else
			{
				
				request.setAttribute("msg","invalid user Id or password");
				RequestDispatcher rd= request.getRequestDispatcher("/jsp/login.jsp");
				rd.forward(request, response);
				
			}
			
		}
		catch(SQLException se)
		{
			
			System.out.println(se);
		}
		
		
	
	}

}
