package fashion.ser;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dbutil.CrudOperation;
import java.sql.*;

/**
 * Servlet implementation class Uploaddoc
 */
@WebServlet("/Uploaddoc")
@MultipartConfig 
public class Uploaddoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;
	private PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uploaddoc() {
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
		response.setContentType("text/html;charset=UTF-8");

		String path = getServletContext().getRealPath("/") ;
		String x= "data/";
		HttpSession hs=request.getSession(false);
		String u_id=(String)hs.getAttribute("userinfo");
		
		String newpath=path+u_id+x;
		File f = new File(newpath);
		if (!f.exists()) {
			System.out.println("directory created");
			f.mkdir();
		}
		System.out.println(newpath);
		
		
		final Part filePart = request.getPart("file");
		final String fileName = getFileName(filePart);
		System.out.println(fileName);
		java.util.Date d2= new java.util.Date();
		java.sql.Date date= new java.sql.Date(d2.getTime());
		final PrintWriter writer = response.getWriter();
	
		
		String usertype=(String)hs.getAttribute("usertype");
		try {
			con=CrudOperation.createConnection();
			String up="insert into uploaddetails( userid, filename, date) values(?,?,?)";
			ps=con.prepareStatement(up);
			ps.setString(1, u_id);
			ps.setString(2, fileName);
			ps.setDate(3, date);
			
			int r=ps.executeUpdate();
			if(r>0)
				{if(usertype.equals("admin"))
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
				}}
				
		} catch (Exception e) {
			System.out.println(e);
		}
		finally{
			try {
				if(ps!=null)
					ps.close();
			} catch (Exception e2) {
				System.out.println(e2);
			}
		}
		OutputStream out = null;
		InputStream filecontent = null;
		

		try {
			out = new FileOutputStream(new File(newpath + File.separator + fileName));
			filecontent = filePart.getInputStream();

			int read = 0;
			final byte[] bytes = new byte[1024];

			while ((read = filecontent.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
			writer.println("New file " + fileName + " created at " + newpath);

		} catch (FileNotFoundException fne) {

			writer.println("<br/> ERROR: " + fne.getMessage());

		} finally {
			if (out != null) {
				out.close();
			}
			if (filecontent != null) {
				filecontent.close();
			}
			if (writer != null) {
				writer.close();
			}
		}
	}

	private String getFileName(final Part part) {

		// final String partHeader = part.getHeader("content-disposition");

		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;

	}

}
