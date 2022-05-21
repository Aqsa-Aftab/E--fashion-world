 <%@ page import="java.sql.*" %>
        <%@ page import="dbutil.*" %>
<head>
<title>User-homepage</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="/e-fashion/css/bootstrap.min-user.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="/e-fashion/css/style-user.css" rel='stylesheet' type='text/css' />
<link href="/e-fashion/css/style-responsive-user.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="/e-fashion/css/font-user.css" type="text/css"/>
<link href="/e-fashion/css/font-awesome-user.css" rel="stylesheet"> 
<link rel="stylesheet" href="/e-fashion/css/morris-user.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="/e-fashion/css/monthly-user.css">

<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="/e-fashion/js/jquery2.0.3.min.js"></script>
<script src="/e-fashion/js/raphael-min.js"></script>
<script src="/e-fashion/js/morris.js"></script>

<style type="text/css">

.upload{
width: 300px;
height: 50px;
float:left;
color:black;
background: #DB7093;
padding-top: 10px;
padding-left: 20px

}
.upload1{
width: 150px;
height: 50px;
float:right;
color:black;
background: #DB7093;



}
.div1{
width: 100%;
height: 20%;


color:black;
background:	
	
	
#696969;
padding-top: 10px


}
.div2{
width: 100%;
height: 15%;

padding-top: 10px

color:black;
background:	
	
	
#696969;
padding-top: 10px


}

.div3{
width: 100%;
height: 100px;

padding-top: 10px;

color:black;
background:#D8BFD8;



}
.div4{
width: 415px;
height: 400px;

padding-top: 10px;
padding-left: 10px;

color:black;
background:#BC8F8F;
float: left;


}

</style>

</head>
<body>

<% HttpSession hs = request.getSession(false); 
String ui=(String)hs.getAttribute("userinfo");

if(ui==null && hs.isNew())
{request.setAttribute("msg","unauthorized access");
			RequestDispatcher rd= request.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(request, response);
			} 
			
			
else
{
	
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	System.out.println(basePath);
	
	
		
	
		
		
		String imgname="";
	String picsrc=null;
	
	String strpic="select picname from registration where userid=?";
	
	ResultSet rs2=CrudOperation.getData(strpic, ui);
	rs2.next();
	
		imgname=rs2.getString("picname");
		if(imgname==null)
		{
			picsrc="/e-fashion/images/back.jpg";
			
		}
		else{
			
			picsrc=basePath+ui+"/"+imgname;
		}
	

%>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="/e-fashion/jsp/companyhome.jsp" class="logo">
        HOME
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
  
  
  <img src="<%=picsrc %>" style="width: 80px;height: 80px;margin-left: 50px;margin-top: -20px; float: right">	
  
   
        
        <%
		  		String strsql= "select * from registration where userid=?";
				ResultSet rs= CrudOperation.getData(strsql,ui);

				rs.next();
				
		%>
		
		
		
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="/e-fashion/jsp/companyhome.jsp">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
               
                
               
               <li>
                    <a href="/e-fashion/jsp/companyprofile.jsp">
                        <i class="fa fa-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
               
               
               
               
                <li class="sub-menu">
                    <a href="/e-fashion/jsp/companycomposemsg.jsp">
                        <i class="fa fa-envelope"></i>
                        <span>Compose Message</span>
                    </a>
                    
                </li>
                <li>
                    <a href="/e-fashion/jsp/companyinbox.jsp">
                        <i class="fa fa-inbox"></i>
                        <span>Inbox</span>
                    </a>
                </li>
                <li>
                    <a href="/e-fashion/jsp/companysentitem.jsp">
                        <i class="fa fa-envelope-o"></i>
                        <span>Sent Items</span>
                    </a>
                </li>
                 <li>
                    <a href="/e-fashion/jsp/viewcandidates.jsp">
                        <i class="fa fa-user"></i>
                        <span>View Candidates</span>
                    </a>
                </li>
               
                 <li>
                    <a href="/e-fashion/jsp/companyprofilesetting.jsp">
                       <i class="fa fa-cog"></i>
                        <span>Profile Setting</span>
                    </a>
                </li>
                 <li>
                    <a href="/e-fashion/Logout">
                        <i class="fa fa-key"></i>
                        <span>Log Out </span>
                    </a>
                </li>
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->

<!--main content start-->

	<section id="main-content">
	<section class="wrapper">
		<div class="mail-w3agile">
        <!-- page start-->
        
            <div class="col-sm-9 mail-w3agile">
                <section class="panel">
                    <header class="panel-heading wht-bg">
                       <h4 class="gen-case"> Candidates Info
                        
                       </h4>
                    </header>
                    </section>
                     
                    
                           
                            
                        

                           
                           <%
			hs = request.getSession(false);
				String uid = (String) hs.getAttribute("userinfo");
				String str = "SELECT * FROM logininfo l where usertype NOT IN ('company','user','admin') ";
;

				ResultSet rs1 = CrudOperation.getData(str);
				
				int f=0;
				
		%>
		
                        </div>
                        <div class="table-inbox-wrap ">
                            <table class="table table-inbox table-hover">
                        <tbody>
                        <%
						while (rs1.next()) {
							String u_i=rs1.getString("userid");
							
							String str2 = "SELECT * FROM registration where userid=?";
							

											ResultSet rsr = CrudOperation.getData(str2,u_i);
											rsr.next();
								f=1;
					%>
                        <tr class="unread">
                            <td class="inbox-small-cells">
                                <input type="checkbox" class="mail-checkbox" value="<%=rs1.getString("userid")%>">
                            </td>
                          
                           
                            <td class="view-message "><b><%=rs1.getString("userid")%> 
							</b></td>
						    <td class="view-message  text-right"><a
							href="/e-fashion/jsp/companyuser.jsp?id=<%=rs1.getString("userid")%>"
							style="text-decoration: none"><%=rsr.getString("name")%> </a></td>
							<td class="view-message  text-right"><%=rsr.getString("email")%></td>
							<td class="view-message  text-right"><%=rsr.getString("gender")%></td>
							
                            <td class="view-message  text-right"><%=rs1.getString("usertype")%></td>
                            <td class="view-message  text-right"><%=rsr.getString("phoneno")%></td>
                            
                        </tr>
                        <%
						}
					%><%if(f==0) {%>
					<tr><th colspan="4"><strong>No Candidates.</strong></th></tr>
					<%
		}
					%>
					
					
                                                </tbody>
                        </table>
                        <br><br>
                 

                        </div>
                     
                    </div>
                      
                </section>
          

        <!-- page end-->
      
</section>
	
<script src="/e-fashion/js/bootstrap.js"></script>
<script src="/e-fashion/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/e-fashion/js/scripts.js"></script>
<script src="/e-fashion/js/jquery.slimscroll.js"></script>
<script src="/e-fashion/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="/e-fashion/js/jquery.scrollTo.js"></script>
	<%} %>
</body>
</html>
