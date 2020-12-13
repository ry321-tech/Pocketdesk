<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="java.sql.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%
   File file ;
   String file_name="";
   String nw_name="";
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   //ServletContext context = 
   //        pageContext.getServletContext();
   String SAVE_DIR="images";
   String filePath = 
application.getInitParameter("file-upload");
           
           //"C:" + File.separator + "Users" + File.separator + "Siddharth" + File.separator + "Documents" + File.separator + "NetBeansProjects" + File.separator + "PocketDesk" + File.separator +"web" + File.separator + SAVE_DIR ;
   // Verify the content type
   	
String user_id=(String) 
        session.getAttribute("user_id");

String contentType = 
        request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = 
              new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File
        ("C:\\Users\\hp\\Downloads\\software\\PocketDesk\\PocketDesk\\build\\web\\images\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = 
              new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = 
                 upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();
        
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = 
                       fi.getFieldName();
               String fileName = 
                       fi.getName();
               System.out.println(fileName); 
               boolean isInMemory = 
                       fi.isInMemory();
               
               long sizeInBytes =
                       fi.getSize();
            
               Long t= 
               System.currentTimeMillis();
               
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  //file = new File( filePath + t + fileName);
                   file = new File( filePath +t+
                  fileName.substring(fileName.lastIndexOf("\\"))) ;
                   file_name=filePath + t + fileName;
               } else {
                  file = new File( filePath + t + fileName);
                  /*file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;*/
                  file_name=filePath + t + fileName;
               }
               fi.write( file ) ;
               out.println(
               " Uploaded Filename: " + filePath + 
               fileName + "<br>");
            }
            else
            {
                if(fi.getFieldName().equals("network_name"))
                   nw_name = fi.getString();
            }
         }
         
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= (Connection) 
DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root");
                    
		    PreparedStatement ps= 
con.prepareStatement("update users_master "
        + "set url_img = ? where user_id = ?");
		   
                   
		    ps.setString(1,file_name);
                    ps.setString(2,user_id);
		   
		    int count = ps.executeUpdate();
		    if(count>0)
		    {
		    	 response.sendRedirect("AfterImgUploadProcess.jsp");
		    }
		    con.close();
      } catch(Exception ex) {
         System.out.println(ex);
         ex.printStackTrace();
      }
   }
%>

