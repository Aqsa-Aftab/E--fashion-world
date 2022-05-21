package fashion.ser;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutil.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class AddPost1
 */
@WebServlet("/Addpost1")
public class Addpost1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Connection cn;
       private PreparedStatement ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addpost1() {
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
		String userid = (String) hs.getAttribute("userinfo");
		String utype = (String) hs.getAttribute("usertype");
		
		
		String post = request.getParameter("post");
		java.util.Date d = new java.util.Date();
		long t = d.getTime();
		java.sql.Date dom = new java.sql.Date(t);

		cn = CrudOperation.createConnection();
		String str1 = "insert into post(userid, post, date) values(?,?,?)";
		try {
			cn.setAutoCommit(false);
			ps = cn.prepareStatement(str1);

			ps.setString(1, userid);
			ps.setString(2, post);
			ps.setDate(3, dom);
			
			
			System.out.println(ps);
			int value1 = ps.executeUpdate();
			
			if (value1 > 0)
			{
			cn.commit();
				   response.sendRedirect("/e-fashion/jsp/userhome.jsp");
			  	   
			}

		} catch (SQLException se) {
			System.out.println(se);

		} finally {
			try {
				if (ps != null)
					ps.close();
				if (cn != null)
					cn.close();
			} catch (SQLException se) {
				System.out.println(se);
			}

		}

	}

}
