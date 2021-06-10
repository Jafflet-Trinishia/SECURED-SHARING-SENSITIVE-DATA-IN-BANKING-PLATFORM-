<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.UnknownHostException,java.util.List,java.util.Set,com.mongodb.*,com.mongodb.MongoClient,com.mongodb.gridfs.GridFS,com.mongodb.gridfs.GridFSDBFile,com.mongodb.gridfs.*"%>
    <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
   <%@ page import="org.bson.types.Binary" %>
    <% 
  
  String data=null;
   
   
    
    String nationality=request.getParameter("nationality");
  //  System.out.println("************"+nationality);
    
    String refno=request.getParameter("refno");
 //   System.out.println("************"+refno);
    
    String FirstName=request.getParameter("fname");
//    System.out.println("************"+FirstName);
    
    String LastName=request.getParameter("lname");
//    System.out.println("************"+FirstName);
    
    String Pan_No=request.getParameter("pan_no");
  //  System.out.println("************"+Pan_No);
   
    String Mobile=request.getParameter("mob");
 //   System.out.println("************"+Mobile);
    
    String Dob=request.getParameter("dob");
//    System.out.println("************"+Dob);
    
    String Marital=request.getParameter("marital");
 //   System.out.println("************"+Marital);
    
    String Gender=request.getParameter("gender");
  //  System.out.println("************"+Gender);
    
    String Dependents=request.getParameter("dependents");
  //  System.out.println("************"+Dependents);
    
    String curr_residential_address=request.getParameter("caddress");
  //  System.out.println("************"+curr_residential_address);
    
    String curr_residential_phone=request.getParameter("cphone");
  //  System.out.println("************"+curr_residential_phone);
    
    String curr_residence=request.getParameter("cresidence");
 //   System.out.println("************"+curr_residence);
    
    String official_email=request.getParameter("official_email");
 //   System.out.println("************"+official_email);
    
    String alternate_email=request.getParameter("alternate_email");
 //   System.out.println("************"+alternate_email);
    
    String company_name=request.getParameter("company_name");
 //   System.out.println("************"+company_name);
    
    String designation=request.getParameter("designation");
  //  System.out.println("************"+designation);
    
    
    String office_address=request.getParameter("office_address");
 //   System.out.println("************"+office_address);
    
    String existing_personal_loan=request.getParameter("existing_personal_loan");
  //  System.out.println("************"+existing_personal_loan);
    
    String existing_personal_loan_no=request.getParameter("existing_personal_loan_no");
   // System.out.println("************"+existing_personal_loan_no);
    
    String gross_salary=request.getParameter("gross_salary");
 //   System.out.println("************"+gross_salary);
    
    String gross_income=request.getParameter("gross_income");
  //  System.out.println("************"+gross_income);
    
    String years_current_job=request.getParameter("years_current_job");
 //   System.out.println("************"+years_current_job);
    
    String retirement_age=request.getParameter("retirement_age");
 //   System.out.println("************"+retirement_age);
    
    String total_years_experience=request.getParameter("total_years_experience");
  //  System.out.println("************"+total_years_experience);
    
    String business_salary=request.getParameter("business_salary");
 //   System.out.println("************"+business_salary);
    
    String business_income=request.getParameter("business_income");
   // System.out.println("************"+business_income);
    
    String years_current_business=request.getParameter("years_current_business");
  //  System.out.println("************"+years_current_business);
    
    String years_previous_business=request.getParameter("years_previous_business");
 //   System.out.println("************"+years_previous_business);
    
    String loan_amount=request.getParameter("loan_amount");
  //  System.out.println("************"+loan_amount);
    
    String tenor=request.getParameter("tenor");
 //   System.out.println("************"+tenor);
    
    
    String enduse=request.getParameter("enduse");
   // System.out.println("************"+enduse);
    
    String signature=request.getParameter("signature");
 //   System.out.println("************"+signature);
    
    String emi=request.getParameter("emi");
  //  System.out.println("************"+emi);
    
    String permanent_address=request.getParameter("permanent_address");
 //   System.out.println("************"+permanent_address);
    
    String permanent_phone=request.getParameter("permanent_phone");
  //  System.out.println("************"+permanent_phone);
    
    String permanent_redidence=request.getParameter("permanent_redidence");
  //  System.out.println("************"+permanent_redidence);
    
    String permanent_email=request.getParameter("permanent_email");
 //   System.out.println("************"+permanent_email);
    
    String vehicle=request.getParameter("vehicle");
 //   System.out.println("************"+vehicle);
    
    String vehicle_ownership=request.getParameter("vehicle_ownership");
 //   System.out.println("************"+vehicle_ownership);
    
    String work_from=request.getParameter("work_from");
 //   System.out.println("************"+work_from);
    
    String business_from=request.getParameter("business_from");
 //   System.out.println("************"+business_from);
    
    
    String business_Type=request.getParameter("business_Type");
   // System.out.println("************"+business_Type);
    
    
    String existing_loan_no=request.getParameter("existing_loan_no");
  //  System.out.println("************"+existing_loan_no);
    
    String existing_institution_name=request.getParameter("existing_institution_name");
  //  System.out.println("************"+existing_institution_name);
    
    String existing_type_loan=request.getParameter("existing_type_loan");
//    System.out.println("************"+existing_type_loan);
    
    String existing_loan_amount=request.getParameter("existing_loan_amount");
 //   System.out.println("************"+existing_loan_amount);
    
    String existing_cureent_outstanding=request.getParameter("existing_cureent_outstanding");
   // System.out.println("************"+existing_cureent_outstanding);
    
    String existing_balance_tonor=request.getParameter("existing_balance_tonor");
 //   System.out.println("************"+existing_balance_tonor);
    
    String professional=request.getParameter("professional");
 //   System.out.println("************"+professional);
    
    String qualification=request.getParameter("qualification");
 //   System.out.println("************"+qualification);
    
    String educational_instituate_name=request.getParameter("educational_instituate_name");
 //   System.out.println("************"+educational_instituate_name);
    
    String year_passing=request.getParameter("year_passing");
 //   System.out.println("************"+year_passing);
    
    String reference_name1=request.getParameter("reference_name1");
 //   System.out.println("************"+reference_name1);
    
    String reference_raddress1=request.getParameter("reference_address1");
 //   System.out.println("************"+reference_raddress1);
    
    String reference_telephone1=request.getParameter("reference_telephone1");
  //  System.out.println("************"+reference_telephone1);
    
    String reference_relationship1=request.getParameter("reference_relationship1");
  //  System.out.println("************"+reference_relationship1);
    
    String reference_name2=request.getParameter("reference_name2");
   // System.out.println("************"+reference_name2);
    
    String reference_address2=request.getParameter("reference_address2");
   // System.out.println("************"+reference_address2);
    
    String reference_telephone2=request.getParameter("reference_telephone2");
  //  System.out.println("************"+reference_telephone2);
    
    String reference_relationship2=request.getParameter("reference_relationship2");
  //  System.out.println("************"+reference_relationship2);
    
    String declation_name=request.getParameter("declation_name");
  //  System.out.println("************"+declation_name);
    
    String file=request.getParameter("file");
 //   System.out.println("************"+file);
    
    String ll="waiting";
    FileInputStream fis;
    
  //  E:\shyamala1\sensitive\WebContent
  
    String f4="\\MongoDBTeamviwer\\sensitive\\WebContent\\";
    String f5="images\\gallery\\";
    String f6=f5+file;
    String z = "F:\\"+f4+f6;

    File imageFile = new File(z);
    FileInputStream f = new FileInputStream(imageFile);

    byte b[] = new byte[f.available()];
    f.read(b);

    Binary data1 = new Binary(b);
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
        //boolean auth = db.authenticate(myUserName, myPassword)                                                                  ;
	// System.out.println("Authentication: "+auth);         
        coll = db.getCollection("app");
        System.out.println("Collection app selected successfully");
        BasicDBObject doc = new BasicDBObject("nationality", nationality).
           append("refno",refno).append("FirstName",FirstName).append("LastName",LastName).append("Pan_No",Pan_No).append("Mobile",Mobile).
           append("Dob",Dob).append("Marital",Marital).append("Gender",Gender).append("Dependents",Dependents).append("curr_residential_address",curr_residential_address).append("curr_residential_phone",curr_residential_phone)
           .append("curr_residence",curr_residence).append("official_email",official_email).append("alternate_email",alternate_email).append("company_name",company_name).append("designation",designation).append("office_address",office_address)
           .append("existing_personal_loan",existing_personal_loan).append("existing_personal_loan_no",existing_personal_loan_no).append("gross_salary",gross_salary).append("gross_income",gross_income).append("years_current_job",years_current_job).append("retirement_age",retirement_age)
           .append("total_years_experience",total_years_experience).append("business_salary",business_salary).append("business_income",business_income).append("years_current_business",years_current_business).append("years_previous_business",years_previous_business).append("loan_amount",loan_amount)
           .append("tenor",tenor).append("enduse",enduse).append("signature",signature).append("emi",emi).append("permanent_address",permanent_address).append("permanent_phone",permanent_phone)
           .append("permanent_redidence",permanent_redidence).append("permanent_email",permanent_email).append("vehicle",vehicle).append("vehicle_ownership",vehicle_ownership).append("work_from",work_from).append("business_from",business_from)
           .append("business_Type",business_Type).append("existing_loan_no",existing_loan_no).append("existing_institution_name",existing_institution_name).append("existing_type_loan",existing_type_loan).append("existing_loan_amount",existing_loan_amount).append("existing_cureent_outstanding",existing_cureent_outstanding)
           .append("existing_balance_tonor",existing_balance_tonor).append("professional",professional).append("qualification",qualification).append("educational_instituate_name",educational_instituate_name).append("year_passing",year_passing).append("reference_name1",reference_name1)
           .append("reference_raddress1",reference_raddress1).append("reference_telephone1",reference_telephone1).append("reference_relationship1",reference_relationship1).append("reference_name2",reference_name2).append("reference_address2",reference_address2).append("reference_telephone2",reference_telephone2)
           .append("reference_relationship2",reference_relationship2).append("declation_name",declation_name).append("photo",data1).append("photo_name",z).append("photo_name1",f6).append("status",ll);
          
        coll.insert(doc);
        System.out.println("************");
       // System.out.println("this is obj id"+id);
        System.out.println("********************");
       
        System.out.println("application inserted successfully");
        DBCursor cursor = coll.find();
       
        try {
            while (cursor.hasNext()) {
            DBObject object = cursor.next();
             data=object.get("_id").toString();
            System.out.println("this is the object id"+data);
            System.out.println(object.get("UserName") + " " + object.get("Email") + "<br/>");
           
            %>
	    	<script type="text/javascript">
        alert("Your application to be successfully submitted........");
        window.location='success.jsp';</script>
        <%
            }
          
        } finally { cursor.close(); }
     }catch(Exception zz){
	     System.err.println( zz.getClass().getName() + ": " + zz.getMessage() );
	  }  %>

</html>