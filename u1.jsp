<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%
try{   
	String l=request.getParameter("name");
	session.setAttribute("uname",l);
	String m=request.getParameter("pass");
		
	// To connect to mongodb server
    MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
    // Now connect to your databases
    DB db = mongoClient.getDB( "sensitive" );
    //String as="asas";
 System.out.println("Connect to database successfully");
    //boolean auth = db.authenticate(myUserName, myPassword);
// System.out.println("Authentication: "+auth);         
    DBCollection coll = db.getCollection("register");
    System.out.println("Collection Register selected successfully");
    
    DBCursor cursor = coll.find(new BasicDBObject("Password",m).append("UserName",l));
       try {
           if (cursor.hasNext()) {
           DBObject object = cursor.next();
           System.out.println(object.get("UserName") + " hai" + object.get("Email") + "<br/>");
           String username=(String)(object.get("UserName"));
           session.setAttribute("name",username);
           String email=(String)(object.get("Email"));
           session.setAttribute("email",email);
           System.out.println("**************%%%%%%%%%%%%%%%%%%*****************"+email);
           response.sendRedirect("user_page.jsp");
           session.setAttribute("User_Name",l);
           }
           else
           {
        	   out.println("Check Your user name and password is wrong");
           }
           
}finally { cursor.close(); }
}catch(Exception z){
    System.err.println( z.getClass().getName() + ": " + z.getMessage() );
 }
%>
</body>
</html>