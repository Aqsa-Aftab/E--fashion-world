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
 * Servlet implementation class SendItem
 */
@WebServlet("/SendItem")
public class SendItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Connection cn;
       private PreparedStatement ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendItem() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession();
		String utype=(String)hs.getAttribute("usertype");
		
        String delmsgs[]=request.getParameterValues("chk");
		
		String msgdel="delete from sentitem where msgid=?";

		cn=CrudOperation.createConnection();
		try
		{
			
			cn.setAutoCommit(false);
			ps=cn.prepareStatement(msgdel);
			System.out.println(ps);
			
			for(int i=0;i<delmsgs.length;i++)
			{
				ps.setString(1, delmsgs[i]);
				ps.addBatch();
			}
			
			int flag = 0;
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
				System.out.println("msgs deleted");
				if(utype.equals("admin"))
				
				response.sendRedirect("/e-fashion/jsp/adminsenditem.jsp");
			
				else if(utype.equals("company"))
				
					response.sendRedirect("/e-fashion/jsp/companysentitem.jsp");
						
				
				else
				{
					response.sendRedirect("/e-fashion/jsp/usersentitem.jsp");
						
				}
				}
			
		}catch(SQLException se)
		{
			System.out.println(se);
		}
	}

}
