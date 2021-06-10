<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient"%>
   <%@ page import="java.io.FileInputStream,java.io.FileOutputStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%
try{   
	
	String m=(String)session.getAttribute("ff");
	
	  byte c[];
	// To connect to mongodb server
    MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
    // Now connect to your databases
    DB db = mongoClient.getDB( "sensitive" );
    //String as="asas";
 System.out.println("Connect to database successfully");
    //boolean auth = db.authenticate(myUserName, myPassword);
// System.out.println("Authentication: "+auth);         
    DBCollection coll = db.getCollection("app");
    System.out.println("Collection app selected successfully");
    
    DBCursor cursor = coll.find(new BasicDBObject("photo_name",m));   
       try {
           while (cursor.hasNext()) {
           DBObject object = cursor.next();
          // System.out.println(object.get("UserName") + " hai" + object.get("Email") + "<br/>");
           c = (byte[])object.get("photo");
           FileOutputStream fout = new FileOutputStream(m);
           fout.write(c);
           fout.flush();
           System.out.println("retrieved and stored at "+m);
           fout.close();
           }
          
           
}finally { cursor.close(); }
}catch(Exception z){
    System.err.println( z.getClass().getName() + ": " + z.getMessage() );
 }
%>
</body>
</html>