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
 * Servlet implementation class Profilesetting
 */
@WebServlet("/Profilesetting")
public class Profilesetting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection cn;
	private PreparedStatement ps,psstr,psupdate;
	ResultSet rs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profilesetting() {
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
		
		HttpSession hs=request.getSession(false);
		
		String userid = (String) hs.getAttribute("userinfo");
		String hobbies =request.getParameter("hobbies");
		String dob = request.getParameter("dob");
		String jobtitle = request.getParameter("jobtitle");
		String aboutme = request.getParameter("aboutme");
		String facebook = request.getParameter("facebook");
		String email = request.getParameter("email");
		String twitter = request.getParameter("twitter");
		String skills = request.getParameter("skills");
		
		String str ="select * from profilesetting where userid=?";
		cn = CrudOperation.createConnection();
		
		String str1 ="insert into profilesetting values(?,?,?,?,?,?,?,?,?)";
		
		
		
		try {
		psstr =cn.prepareStatement(str);
		psstr.setString(1, userid);
		
			rs=psstr.executeQuery();
			
			if(!rs.next())
			{
				
				cn.setAutoCommit(false);
				
				ps=cn.prepareStatement(str1);
				
				
				ps.setString(1, userid);
				ps.setString(2, hobbies);
				ps.setString(3, dob);
				ps.setString(4, jobtitle);
				ps.setString(5, aboutme);
				ps.setString(6, facebook);
				ps.setString(7, email);
				ps.setString(8, twitter);
				ps.setString(9, skills);
				
				int rw=ps.executeUpdate();
				
				
				if(rw>0)
				{//cn.setAutoCommit(true);
				cn.commit();
				System.out.println("profile setting done");
				response.sendRedirect("/e-fashion/jsp/profilesetting.jsp");
				}
				
				
			}
			else{
				String sqlUpdate="update profilesetting set hobbies=?,dob=?,jobtitle=?,about=?,facebook=?,email=?,twitter=?,skill=? where userid=?";
				
				cn.setAutoCommit(false);
				
				psupdate=cn.prepareStatement(sqlUpdate);
				
				
				
				psupdate.setString(1, hobbies);
				psupdate.setString(2, dob);
				psupdate.setString(3, jobtitle);
				psupdate.setString(4, aboutme);
				psupdate.setString(5, facebook);
				psupdate.setString(6, email);
				psupdate.setString(7, twitter);
				psupdate.setString(8, skills);
				psupdate.setString(9, userid);
				
				int rw1=psupdate.executeUpdate();
				

				if(rw1>0)
				{//cn.setAutoCommit(true);
				cn.commit();
				System.out.println("profile updated");
				response.sendRedirect("/e-fashion/jsp/profilesetting.jsp");
				}
				
			}
		
		} 
	
	catch(SQLException s)
	{
		System.out.println(s); 
	}
	
		
	
	}
	
	



		
	

}
