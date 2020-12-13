<%@page import="dao.Mailer"%>
<%
                String to = request.getParameter("invite_user");
                
                String nw_name = request.getParameter("nw_name");
                
		String subject="Invite From Pocket Desk";
		String msg="Please click on following link"
                        + " to accept the invitation and bring the world more closer !!! \n";
                
                String url = "http://localhost:8084/PocketDesk/VerifyUser.jsp?"
                        + "email="+to+"&nw_name="+nw_name;
		
		Mailer.send(to, subject, msg+url);
		response.sendRedirect("SuccessMailSentAlert.jsp");
                
%>