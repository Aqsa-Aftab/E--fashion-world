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
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dbutil.CrudOperation;
		/**
		 * Servlet implementation class NewUpload
		 */
		@WebServlet("/Upload")
		@MultipartConfig // used to upload data
		public class Upload extends HttpServlet {
			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;
			PreparedStatement ps;
			Connection con;
			
		    /**
		     * @see HttpServlet#HttpServlet()
		     */
		    public Upload() {
		        super();
		        // TODO Auto-generated constructor stub
		    }
		
			/**
			 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
			 */
			protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String path=getServletContext().getRealPath("/"); // path of the server 
				System.out.println(path); 
						
			}
		
			/**
			 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
			 */
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				 response.setContentType("text/html;charset=UTF-8");
		
				
		
				 ServletContext sc=getServletContext();
				String path=sc.getRealPath("/");
				 
		System.out.println(path);
		
		
		
			HttpSession hs=request.getSession(false);
			String u_id=(String)hs.getAttribute("userinfo");
			String utype=(String)hs.getAttribute("usertype");
				
			String newpath=path+u_id;
				File f=new File(newpath);
				if(!f.exists())  // if the folder not exist
				{
					
					f.mkdir(); // used to make folder directories
				}
				
				System.out.println("directorycreated");
			/*String description = request.getParameter("txtdesc");
				System.out.println(description); */
				
			    final Part filePart = request.getPart("Addpic");
			    	final String fileName = getFileName(filePart);
			    	
			    	
	   String strupdate="update registration set picname=? where userid=?";
			   
			   
			   try{
				   con=CrudOperation.createConnection();
				   ps=con.prepareStatement(strupdate);
				   ps.setString(1, fileName);
				   ps.setString(2, u_id);
				   System.out.println(ps);
				   int rw=ps.executeUpdate();
				   if(rw>0)
				   {
					   
				   System.out.println("picadded");
				   if(utype.equals("company"))
				   {
					   response.sendRedirect("/e-fashion/jsp/companyprofile.jsp");
				   }
				   else if(utype.equals("admin"))
				   {
					   response.sendRedirect("/e-fashion/jsp/adprofile.jsp");
				   }
				   
			   else{
					   response.sendRedirect("/e-fashion/jsp/userprofile.jsp");
				   }
				   
			   }
			   }	catch(SQLException se)
			   {
			    		
			    		
			    		System.out.println(se);
			   }
			    
			   System.out.println(fileName);  
		
			    OutputStream out = null;
			    InputStream filecontent = null;
			    final PrintWriter writer = response.getWriter();
		
			    try {
			        out = new FileOutputStream(new File(newpath + File.separator
			                + fileName));
			        filecontent = filePart.getInputStream();
		
			        int read = 0;
			        final byte[] bytes = new byte[1024];
		
			        while ((read = filecontent.read(bytes)) != -1) {
			            out.write(bytes, 0, read);
			        }
		//	 writer.println("New file " + fileName + " created at " + newpath);
			        
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
			
			
			
			
		    final String partHeader = part.getHeader("content-disposition");
		   
		    for (String content : part.getHeader("content-disposition").split(";")) {
		        if (content.trim().startsWith("filename")) {
		            return content.substring(
		                    content.indexOf('=') + 1).trim().replace("\"", "");
		        }
		    }
		    return null;
		}
		
		}
