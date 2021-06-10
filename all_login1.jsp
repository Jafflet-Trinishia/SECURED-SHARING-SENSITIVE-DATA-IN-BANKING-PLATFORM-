<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient"%>
   

<%
  
	String l=request.getParameter("name1");
	//session.setAttribute("uname",l);
	String m=request.getParameter("pass1");
		
	
           if(l.equals("clerk") && m.equals("clerk"))
        	   
           {
        	   
        	   response.sendRedirect("clerk.jsp");
           }
 
 if(l.equals("emi") && m.equals("emi"))
	   
 {
	   
	   response.sendRedirect("emi_officer.jsp");
 }
 if(l.equals("loan_approval_officer") && m.equals("loan_approval_officer"))
	   
 {
	   
	   response.sendRedirect("loan_approval_officer.jsp");
 }
 
 if(l.equals("manager") && m.equals("manager"))
	   
 {
	   
	   response.sendRedirect("manager.jsp");
 }
           
           
           

%>
</body>
</html>