<%-- 
    Document   : Fileupload
    Created on : Apr 11, 2018, 1:42:22 PM
    Author     : Siddharth
--%>

<%@page import="java.io.File"%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <%
            	String SAVE_DIR="images";

          String savePath = "C:" + File.separator + "Users" + File.separator + "Siddharth" + File.separator + "Documents" + File.separator + "NetBeansProjects" + File.separator + "PocketDesk" + File.separator +"web" + File.separator + SAVE_DIR ;
         
         File fileSaveDir=new File(savePath);
         if(!fileSaveDir.exists()){
             fileSaveDir.mkdir();
         }
	    //Integer network_id=1;
            String network_name= request.getParameter("network_name");		
	    Part file = request.getPart("image");
	    
	    String fileName=extractfilename(file);
            Long t= System.currentTimeMillis();
	    file.write(savePath + File.separator + t+ "_"+ fileName);
            
	    String filePath= savePath + File.separator + t+ "_"+ fileName ;
	    
	    // session=request.getSession();
            String user_id=
     (String) session.getAttribute("user_id");
	    try {
			
                Class.forName("com.mysql.jdbc.Driver");
			Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root"); 
		    PreparedStatement ps= con.prepareStatement("insert into networks_master(network_name,filepath,user_id) values (?,?,?)");
		   
                    ps.setString(1,network_name);
		    ps.setString(2,filePath);
                    ps.setString(3,user_id);
		   
		    
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	 response.sendRedirect("successcreaten.jsp");
		    }
		    con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}  
		}
 
	 private String extractfilename(Part file) {
        String cd = file.getHeader("content-disposition");
        String[] items = cd.split(";");
        for (String string : items) {
            if (string.trim().startsWith("filename")) {
                return string.substring(string.indexOf("=") + 2, string.length()-1);
            }
        }
        return "";
    }
		
	}   
        
        %>
        
        
        
        
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
