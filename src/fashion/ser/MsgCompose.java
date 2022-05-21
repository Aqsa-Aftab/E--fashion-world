package fashion.ser;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutil.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class MsgCompose
 */
@WebServlet("/MsgCompose")
public class MsgCompose extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection cn;
	private PreparedStatement ps;
	private PreparedStatement ps1;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MsgCompose() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession hs = request.getSession(false);
		response.setContentType("text/html");
		String receiverid = request.getParameter("receiverid");
		String subject = request.getParameter("subject");
		String message = request.getParameter("msgtext");
		java.util.Date d = new java.util.Date();
		long t = d.getTime();
		java.sql.Date date = new java.sql.Date(t);

		cn = CrudOperation.createConnection();
		
		String senderid = (String)hs.getAttribute("userinfo");
		String utype = (String)hs.getAttribute("usertype");
		
		String str1 = "insert into inbox( senderid, receiverid, message, subject, dateofmsg) values(?,?,?,?,?)";
		String str2 = "insert into sentitem( senderid, receiverid, message, subject, dateofmsg) values(?,?,?,?,?)";
		try {
			cn.setAutoCommit(false);
			ps = cn.prepareStatement(str1);

			ps.setString(1, senderid);
			ps.setString(2, receiverid);
			ps.setString(3, message);
			ps.setString(4, subject);
			ps.setDate(5, date);
			
			ps1 = cn.prepareStatement(str2);

			ps1.setString(1, senderid);
			ps1.setString(2, receiverid);
			ps1.setString(3, message);
			ps1.setString(4,subject );
			ps1.setDate(5, date);

			System.out.println(ps);
			System.out.println(ps1);
			int rw = ps.executeUpdate();
			int rw1 = ps1.executeUpdate();

			if (rw > 0 && rw1 > 0) {
				cn.commit();
				
				System.out.println("row inserted");
				
				 String msg="Message sent Successfully!!";
				 request.setAttribute("ms", msg); 
				 
				 if(utype.equals("company"))
					{
					 request.setAttribute("msg"," Msg sent");
						RequestDispatcher rd= request.getRequestDispatcher("/jsp/companycomposemsg.jsp");
						rd.forward(request, response);
						//response.sendRedirect("/e-fashion/jsp/companycomposemsg.jsp");
					}
				 else if(utype.equals("admin"))
					{
						 request.setAttribute("msg"," Msg sent");
							RequestDispatcher rd= request.getRequestDispatcher("/jsp/admincomposemsg.jsp");
							rd.forward(request, response);
						//response.sendRedirect("/e-fashion/jsp/composemsg.jsp");
					}
					else
					{
						 request.setAttribute("msg"," Msg sent");
							RequestDispatcher rd= request.getRequestDispatcher("/jsp/compose-mail.jsp");
							rd.forward(request, response);
						//response.sendRedirect("/e-fashion/jsp/compose-mail.jsp");
					}
				
					 
					 

				 
							}

		} catch (SQLException se) {
			System.out.println(se);

		} finally {
			try {
				if (ps != null)
					ps.close();
				if (ps1 != null)
					ps1.close();
				if (cn != null)
					cn.close();
			} catch (SQLException se) {
				System.out.println(se);
			}

		}
	}

}
