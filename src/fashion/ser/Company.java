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
@WebServlet("/Company")
public class Company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection cn;
	private PreparedStatement ps,psstr,psupdate;
	ResultSet rs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company() {
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
		String usertype = (String) hs.getAttribute("usertype");
		String name =request.getParameter("name");
		String ceoname = request.getParameter("ceoname");
		String city = request.getParameter("city");
		String about = request.getParameter("about");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String work = request.getParameter("work");
		String registrationno = request.getParameter("registrationno");
		String workarea = request.getParameter("workarea");
		
		String str ="select * from companyprofessional where companyid=?";
		cn = CrudOperation.createConnection();
		
		String str1 ="insert into companyprofessional(companyid, name, address, phoneno, email, ceoname, workarea, city, registrationnumber, work, about) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		
		
		try {
		psstr =cn.prepareStatement(str);
		psstr.setString(1, userid);
		
			rs=psstr.executeQuery();
			
			if(!rs.next())
			{
				
				cn.setAutoCommit(false);
				
				ps=cn.prepareStatement(str1);
				
				
				ps.setString(1, userid);
				ps.setString(2, name);
				ps.setString(3, address);
				ps.setString(4, phone);
				ps.setString(5, email);
				ps.setString(6, ceoname);
				ps.setString(7, workarea);
				ps.setString(8, city);
				ps.setString(9, registrationno);
				ps.setString(10, work);
				ps.setString(11, about);
				
				int rw=ps.executeUpdate();
				
				
				if(rw>0)
				{//cn.setAutoCommit(true);
				cn.commit();
				System.out.println("profile setting done");
				
				if(usertype.equals("company"))
				response.sendRedirect("/e-fashion/jsp/companyprofilesetting.jsp");
				}
				else
				{
					response.sendRedirect("/e-fashion/jsp/profilesetting.jsp");
				}
				
				
			}
			else{
				String sqlUpdate="update companyprofessional set name=?, address=?, phoneno=?, email=?, ceoname=?, workarea=?, city=?, registrationnumber=?, work=?, about=? where companyid=?";
				
				cn.setAutoCommit(false);
				
				psupdate=cn.prepareStatement(sqlUpdate);
				
				
				
				psupdate.setString(1, name);
				psupdate.setString(2, address);
				psupdate.setString(3, phone);
				psupdate.setString(4, email);
				psupdate.setString(5, ceoname);
				psupdate.setString(6, workarea);
				psupdate.setString(7, city);
				psupdate.setString(8, registrationno);
				psupdate.setString(9, work);
				psupdate.setString(10, about);
				psupdate.setString(11, userid);
				
				int rw1=psupdate.executeUpdate();
				

				if(rw1>0)
				{//cn.setAutoCommit(true);
				cn.commit();
				System.out.println("profile updated");
				response.sendRedirect("/e-fashion/jsp/companyprofilesetting.jsp");
				}
				
			}
		
		} 
	
	catch(SQLException s)
	{
		System.out.println(s); 
	}
	
		
	
	}
	
	



		
	

}
