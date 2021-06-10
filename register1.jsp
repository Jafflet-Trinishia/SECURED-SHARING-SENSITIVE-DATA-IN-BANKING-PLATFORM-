<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient,com.mongodb.gridfs.GridFS,com.mongodb.gridfs.GridFSDBFile,com.mongodb.gridfs.*"%>
    <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
    <% 
  
  String data=null;
   
    String a = request.getParameter("name");
    String b = request.getParameter("pass");
   
    String c = request.getParameter("email");
    String d = request.getParameter("dob");
    String d1 = request.getParameter("mob");
    String e = request.getParameter("address");
   
    
//			}
	              %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  DBCollection coll=null; %>
<%
try{   
	 // To connect to mongodb server
        MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
        // Now connect to your databases
        DB db = mongoClient.getDB("sensitive");
        //String as="asas";
	 System.out.println("Connect to database successfully sensitive");
        //boolean auth = db.authenticate(myUserName, myPassword);
	// System.out.println("Authentication: "+auth);         
        coll = db.getCollection("register");
        System.out.println("Collection register selected successfully");
        BasicDBObject doc = new BasicDBObject("UserName", a).
           append("Password", b).append("Email",c).append("dob",d).append("mobile",d1).append("address",e);
          
        coll.insert(doc);
        //ObjectId id = (ObjectId)doc.get( "_id" );
        System.out.println("************");
       // System.out.println("this is obj id"+id);
        System.out.println("********************");
       
        System.out.println("Document inserted successfully");
        DBCursor cursor = coll.find(); 
       
        try {
            while (cursor.hasNext()) {
            DBObject object = cursor.next();
             data=object.get("_id").toString();
            System.out.println("this is the object id"+data);
            System.out.println(object.get("UserName") + " " + object.get("Email") + "<br/>");
           
            %>
	    	<script type="text/javascript">
        alert("You are registered successfully........");
        window.location='u.jsp';</script>
        <%
            }
          
        } finally { cursor.close(); }
     }catch(Exception zz){
	     System.err.println( e.getClass().getName() + ": " + zz.getMessage() );
	  }  %>

</html>