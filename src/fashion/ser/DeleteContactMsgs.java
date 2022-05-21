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
 * Servlet implementation class DeleteContactMsgs
 */
@WebServlet("/DeleteContactMsgs")
public class DeleteContactMsgs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Connection cn;
       private PreparedStatement ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteContactMsgs() {
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
	    String msgs[]=request.getParameterValues("chk");
		
			String msgdel="delete from contactus where email=?";
			
			cn=CrudOperation.createConnection();
			try
			{
				cn.setAutoCommit(false);
				ps=cn.prepareStatement(msgdel);
				for(int i=0;i<msgs.length;i++)
				{
					ps.setString(1, msgs[i]);
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
					response.sendRedirect("/e-fashion/jsp/contactusmessage.jsp");
				}
			
			}catch(SQLException se)
			{
				System.out.println(se);
			}
	}

}
