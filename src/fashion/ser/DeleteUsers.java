package fashion.ser;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dbutil.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class DeleteUsers
 */
@WebServlet("/DeleteUsers")
public class DeleteUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	  private Connection cn;
	  private PreparedStatement ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUsers() {
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
		 String delusers[]=request.getParameterValues("chk");
			
			String userdel="delete from logininfo where userid=?";
			
			cn=CrudOperation.createConnection();
			try
			{
				cn.setAutoCommit(false);
				ps=cn.prepareStatement(userdel);
				for(int i=0;i<delusers.length;i++)
				{
					ps.setString(1, delusers[i]);
					ps.addBatch();
				}
				int flag=0;
				
				int[] arr=ps.executeBatch();
				for(int i=0;i<arr.length;i++)
				{
					if(arr[i]<0)
					{
						flag=1;
						break;
					}
				}
				if(flag==0)
				{
					cn.commit();
					System.out.println("data deleted");
					response.sendRedirect("/e-fashion/jsp/adminviewaccount.jsp");
				}
			
			}catch(SQLException se)
			{
				System.out.println(se);
			}
	}

}
