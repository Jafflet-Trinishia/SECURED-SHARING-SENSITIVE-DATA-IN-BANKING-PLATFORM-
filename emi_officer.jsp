<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.io.FileInputStream,java.io.FileOutputStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2046 Blue Flame 
	by www.tooplate.com 
-->
<title>Secure Sensitive Data Sharing on a Big Data.</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<style>

.CSSTableGenerator {
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
   
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	
}
.CSSTableGenerator tr:nth-child(odd){ background-color:#ffffaa; }
.CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
	vertical-align:middle;
	
	
	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:16px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #007fff 5%, #ffff56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #007fff), color-stop(1, #ffff56) );
	background:-moz-linear-gradient( center top, #007fff 5%, #ffff56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#007fff", endColorstr="#ffff56");	background: -o-linear-gradient(top,#007fff,ffff56);

	background-color:#007fff;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:18px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #007fff 5%, #ffff56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #007fff), color-stop(1, #ffff56) );
	background:-moz-linear-gradient( center top, #007fff 5%, #ffff56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#007fff", endColorstr="#ffff56");	background: -o-linear-gradient(top,#007fff,ffff56);

	background-color:#007fff;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}




</style>
</head>
<body>
<div id="tooplate_body_wrapper">
    <div id="tooplate_wrapper">
            
        <div id="tooplate_header">
            <div id="site_title">
            	<h1> <font color="#fffff">Sensitive Data</font></h1>
            </div>
            
            <div id="tooplate_menu">
              
                <ul>
                    <li><a href="index.html">Home</a></li>
                     <li><a href="samples/ch1.html">View Status of Bank Income</a></li>
                      <li><a href="samples/ch4.html">water fall chart</a></li>
                    <li><a href="all_login.jsp">Back</a></li>
                 
                </ul>    	
            </div> <!-- end of tooplate_menu -->
        </div> <!-- end of forever header -->
        <div id="tooplate_main_top"></div>
        <div id="tooplate_middle_subpage">
            <h2 align="center">Big Data User</h2>
                 </div> <!-- end of middle -->
        
        <div id="tooplate_main">
        <div class="CSSTableGenerator">
         <table style="margin-left: -60px;">
          <tr><td colspan="3" align="center">Verified Account Details From Clerk</td></tr>
		  
		  <tr><td><table>
		  <form>
		  <tr><td>Candidate Records</td> </tr>
		 <tr><td align="center"><select name="mydropdown" id="mydropdown" class="select" style="width: 250px">
                <option value="">select</option>
		   <%
        try
        {
        	String aa = null;
        	String a="clerk_verified";
        	 MongoClient mongoClient1 = new MongoClient( "localhost" , 27017 );
        	    DB db1 = mongoClient1.getDB( "sensitive" );
        	    DBCollection collection = db1.getCollection("app");
        	  DBObject query2 = new BasicDBObject("status",a);  
        	    DBCursor cursor1 = collection.find(query2);
        	 while(cursor1.hasNext())
        	 {
        	DBObject object = cursor1.next();
        	 aa = (String)object.get("FirstName");
        	 %>
     		<option value="<%=aa%>"><%=aa%></option>
     		  <%        	 }
        %>
		  </select></td></tr>
		
		  <tr><td colspan="2" align="center"><input type="submit" value="Select"></td></tr>
		  <%
        	 
        }
		   catch(Exception e)
		   {
			   e.printStackTrace();
		   }
		  %>
		 </form> 
		 </table></td>
		 
		  <%  DBCollection coll=null; %>
   <%
try{  
	 String a1 = request.getParameter("mydropdown");
    MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
    DB db = mongoClient.getDB( "sensitive" );
    coll = db.getCollection("app");
  
  DBObject query1 = new BasicDBObject("FirstName",a1);  
    
    DBCursor cursor = coll.find(query1);
        %><center>
		  <%
		  byte c[];
        try {
        	String av="*******";
            while(cursor.hasNext()) {
            DBObject object = cursor.next();
            String id=object.get("_id").toString();
            session.setAttribute("idd1",id);
            String nationality=(String)(object.get("nationality"));
            String refno=(String)(object.get("refno"));
            String FirstName=(String)(object.get("FirstName"));
            String LastName=(String)(object.get("LastName"));
            String Pan_No=(String)(object.get("Pan_No"));
            String Mobile=(String)(object.get("Mobile"));
            
            String Dob=(String)(object.get("Dob"));
            String Marital=(String)(object.get("Marital"));
            String Gender=(String)(object.get("Gender"));
            String Dependents=(String)(object.get("Dependents"));
            String curr_residential_address=(String)(object.get("curr_residential_address"));
            String curr_residential_phone=(String)(object.get("curr_residential_phone"));
            
            String curr_residence=(String)(object.get("curr_residence"));
            String official_email=(String)(object.get("official_email"));
            String alternate_email=(String)(object.get("alternate_email"));
            String company_name=(String)(object.get("company_name"));
            String designation=(String)(object.get("designation"));
            String office_address=(String)(object.get("office_address"));
            String existing_personal_loan=(String)(object.get("existing_personal_loan"));
            String existing_personal_loan_no=(String)(object.get("existing_personal_loan_no"));
            String gross_salary=(String)(object.get("gross_salary"));
            String gross_income=(String)(object.get("gross_income"));
            String years_current_job=(String)(object.get("years_current_job"));
            String retirement_age=(String)(object.get("retirement_age"));
            String total_years_experience=(String)(object.get("total_years_experience"));
            String business_salary=(String)(object.get("business_salary"));
            String business_income=(String)(object.get("business_income"));
            String years_current_business=(String)(object.get("years_current_business"));
            String years_previous_business=(String)(object.get("years_previous_business"));
            String loan_amount=(String)(object.get("loan_amount"));
            String tenor=(String)(object.get("tenor"));
            String enduse=(String)(object.get("enduse"));
            String signature=(String)(object.get("signature"));
            String emi=(String)(object.get("emi"));
            String permanent_address=(String)(object.get("permanent_address"));
            String permanent_phone=(String)(object.get("permanent_phone"));
            String permanent_redidence=(String)(object.get("permanent_redidence"));
            String permanent_email=(String)(object.get("permanent_email"));
            String vehicle=(String)(object.get("vehicle"));
            String vehicle_ownership=(String)(object.get("vehicle_ownership"));
            String work_from=(String)(object.get("work_from"));
            String business_from=(String)(object.get("business_from"));
            String business_Type=(String)(object.get("business_Type"));
            String existing_loan_no=(String)(object.get("existing_loan_no"));
            String existing_institution_name=(String)(object.get("existing_institution_name"));
            String existing_type_loan=(String)(object.get("existing_type_loan"));
            String existing_loan_amount=(String)(object.get("existing_loan_amount"));
            String existing_cureent_outstanding=(String)(object.get("existing_cureent_outstanding"));
            String existing_balance_tonor=(String)(object.get("existing_balance_tonor"));
            
            String professional=(String)(object.get("professional"));
            String qualification=(String)(object.get("qualification"));
            String educational_instituate_name=(String)(object.get("educational_instituate_name"));
            String year_passing=(String)(object.get("year_passing"));
            String reference_name1=(String)(object.get("reference_name1"));
            String reference_raddress1=(String)(object.get("reference_raddress1"));
            String reference_telephone1=(String)(object.get("reference_telephone1"));
            String reference_relationship1=(String)(object.get("reference_relationship1"));
            String reference_name2=(String)(object.get("reference_name2"));
            String reference_address2=(String)(object.get("reference_address2"));
            String reference_telephone2=(String)(object.get("reference_telephone2"));
            String reference_relationship2=(String)(object.get("reference_relationship2"));
            String declation_name=(String)(object.get("declation_name"));
            String photo_name=(String)(object.get("photo_name1"));
            session.setAttribute("ff",photo_name);
            
       
            %>
            
          
          
          
          
          
          
         <td><table>
          <tr><td colspan="2" align="center">Personal Details</td></tr>
         <tr><td>Nationality</td><td><%=nationality%></td></tr>
            <tr><td>Reference No</td><td><%=refno%></td></tr>
                <tr><td>FirstName</td><td><%=FirstName%></td></tr>
                 <tr><td>LastName</td><td><%=LastName%></td></tr>
                  <tr><td>Pan_No</td><td><%=Pan_No%></td></tr>
                   <tr><td>Mobile</td><td><%=Mobile%></td></tr>
                    <tr><td>Dob</td><td><%=Dob%></td></tr>
                     <tr><td>Gender</td><td><%=Gender%></td></tr>
                       <tr><td>curr_residential_address</td><td><%=curr_residential_address%></td></tr>
                        <tr><td>curr_residential_phone</td><td><%=curr_residential_phone%></td></tr>
                         <tr><td>permanent_address</td><td><%=permanent_address%></td></tr>
                          <tr><td>permanent_phone</td><td><%=permanent_phone%></td></tr>
                          </table>
                          </td>
         
         
         
         <td>
         
         <table>
         <tr><Td colspan="2" align="center">Official Address</Td></tr>
         <tr><td>company_name</td><td><%=company_name%></td></tr>
         <tr><td>designation</td><td><%=designation%></td></tr>
         <tr><td>office_address</td><td><%=office_address%></td></tr>
         <tr><td>gross_salary</td><td><%=gross_salary%></td></tr>
       	<tr><td>gross_income</td><td><%=gross_income%></td></tr>
        <tr><td>years_current_job</td><td><%=years_current_job%></td></tr>
        <tr><td>retirement_age</td><td><%=retirement_age%></td></tr>
      	<tr><td>total_years_experience</td><td><%=total_years_experience%></td></tr>
        <tr><td>business_salary</td><td><%=business_salary%></td></tr>
       <tr><td>business_income</td><td><%=business_income%></td></tr>
       <tr><td>years_current_business</td><td><%=years_current_business%></td></tr>
       <tr><td>years_previous_business</td><td><%=years_previous_business%></td></tr>
         
         </table></td></tr>
                
          <tr><td></td>
         <td><table><tr><td colspan="2" align="center">Current Loan Details</td></tr>
                           <tr><td>loan_amount</td><td><%=loan_amount%></td></tr>
                                           <tr><td>tenor</td><td><%=tenor%></td></tr>
                                           <tr><td>enduse</td><td><%=enduse%></td></tr>
                                             <tr><td>signature</td><td><%=signature%></td></tr>
                                              <tr><td>emi</td><td><%=emi%></td></tr>
                                       
                           </table></td>
                           <td><table>
                              <tr><td><img src="gallery/<%=object.get("photo")%>" width="150px" height="150px"></img> </td></tr>
                          </table> 
                           </td>
                         
                           </tr>
                            
                             
                              
                                 
                                                                     
                                          
           
                 
                     
 
	  
	  </table>
     
		  
		  
		  
		  </td></tr>
		  
		  
                                             <tr><td><a href="emi_verify.jsp?loan_no=<%=refno%>">
                                            <font size="3"><b>Verify</b></font></a></td></tr> 
         
          
		  
		  </table></td></tr>
		  
		                                 
          <%} %>
           
            <%
            
        } finally { cursor.close(); }
     }catch(Exception z){
	     System.err.println( z.getClass().getName() + ": " + z.getMessage() );
	  }  %>
		
            
          
        </div> <!-- end of main -->
        
       
    
        </div>
    </div> <!-- end of forever wrapper -->
</div> <!-- end of forever body wrapper -->

</body>
</html>