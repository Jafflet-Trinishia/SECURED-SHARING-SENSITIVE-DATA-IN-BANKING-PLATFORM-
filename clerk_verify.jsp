<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient,org.bson.types.ObjectId"%>
    


  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
try{
	

	String ap="clerk_verified";
	
	String loan_no=request.getParameter("loan_no");
	System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*****************:"+loan_no);
		
    MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
    DB db = mongoClient.getDB( "sensitive" );
    DBCollection coll = db.getCollection("app");
    DBCursor cursor = coll.find(new BasicDBObject("refno",loan_no));
       try {
          if (cursor.hasNext()) {
           DBObject object = cursor.next();
         
                 
               BasicDBObject updateDocument = new BasicDBObject();
           	updateDocument.append("$set", new BasicDBObject().append("status",ap));
 BasicDBObject searchQuery2 = new BasicDBObject("refno",loan_no);

        	coll.update(searchQuery2, updateDocument);

                 
                
             out.println("*********  Application will be verified by clerk   *******************");
             %>
             <a href="officers.jsp"><font size="3"><b>Back</b></font></a>
             <% 
            
             
                
       
}
       }
finally { cursor.close(); }
}catch(Exception z){
    System.err.println( z.getClass().getName() + ": " + z.getMessage() );
 }





 %>
</body>
</html>