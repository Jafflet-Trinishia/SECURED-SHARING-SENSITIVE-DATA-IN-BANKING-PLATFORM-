<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %> 
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import=" java.security.MessageDigest"%>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional/55 /EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


ArrayList list = new ArrayList();

		ServletContext context = getServletContext();
		String a=request.getParameter("file");
		session.setAttribute("video",a);
		System.out.println(a);
		String dirName =context.getRealPath("\\gallery\\"); 
			
		System.out.println(dirName);
		String paramname=null;
		String blood=null,datafile=null;
		
		String nationality=null,refno=null,FirstName=null,LastName=null,Pan_No=null,Mobile = null,Dob = null,Marital = null;
		String Gender = null,Dependents = null,curr_residential_address=null,curr_residential_phone=null,curr_residence=null;
		String offical_email=null,alternate_email=null,company_name=null,designation=null,office_address=null,existing_personal_loan=null;
		String existing_personal_loan_no=null,gross_salary=null,gross_income=null,years_current_job=null,retirement_age=null;
		String total_years_experience=null,business_salary=null,business_income=null,years_current_business=null,years_previous_business=null;
		String loan_amount1 =null,tenor =null,enduse=null,signature = null,emi =null,permanent_address =null,permanent_phone=null,vehicle_owenership=null;
		String work_form=null,business_form=null,business_type=null,existing_loan_no=null,existing_institution_name=null,existing_type_loan=null,existing_loan_amount=null;
		String existing_current_outstanding=null,existing_balance_toner=null,profestional=null,qualification=null,educational_instituate_name=null,year_passing=null,reference_name1=null;
		String reference_address1=null,reference_telepone1=null,reference_relationship1=null,reference_name2= null,reference_address2=null;
		String reference_telephone2 = null,reference_releationship2 =null,declation_name = null,file = null,permanent_residence=null,permanent_email = null,work_from=null,vehicle = null;
		String existing_cureent_outstanding = null,permanent_redidence=null;
	    String ll="waiting";
		int id=0;
		String date1=null;
		File file1 = null;
	try {
			

			MultipartRequest multi = new MultipartRequest(request,dirName,103333*1033324*103333324);
			
			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				
				if(paramname.equalsIgnoreCase("nationality"))
				{
					nationality=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("existing_cureent_outstanding"))
				{
					existing_cureent_outstanding=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("permanent_redidence"))
				{
					permanent_redidence=multi.getParameter(paramname);
				}
			
			
				if(paramname.equalsIgnoreCase("refno"))
				{
					refno=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("fname"))
				{
					FirstName=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("lname"))
				{
					LastName=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("pan_no"))
				{
					Pan_No=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("mob"))
				{
					Mobile=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("dob"))
				{
					Dob=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("marital"))
				{
					Marital=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("gender"))
				{
					Gender=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("dependents"))
				{
					Dependents=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("caddress"))
				{
					curr_residential_address=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("cphone"))
				{
					curr_residential_phone=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("cresidence"))
				{
					curr_residence=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("official_email"))
				{
					offical_email=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("alternate_email"))
				{
					alternate_email=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("company_name"))
				{
					company_name=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("designation"))
				{
					designation=multi.getParameter(paramname);
				}	
				if(paramname.equalsIgnoreCase("office_address"))
				{
					office_address=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_personal_loan"))
				{
					existing_personal_loan=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_personal_loan_no"))
				{
					existing_personal_loan_no=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("gross_salary"))
				{
					gross_salary=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("gross_income"))
				{
					gross_income=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("years_current_job"))
				{
					years_current_job=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("retirement_age"))
				{
					retirement_age=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("total_years_experience"))
				{
					total_years_experience=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("business_salary"))
				{
					business_salary=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("business_income"))
				{
					business_income=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("years_current_business"))
				{
					years_current_business=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("years_previous_business"))
				{
					years_previous_business=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("loan_amount1"))
				{
					loan_amount1=multi.getParameter(paramname);
					System.out.print("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$loan"+loan_amount1);
				}
				if(paramname.equalsIgnoreCase("tenor"))
				{
					tenor=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("enduse"))
				{
					enduse=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("signature"))
				{
					signature=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("emi"))
				{
					emi=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("permanent_address"))
				{
					permanent_address=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("permanent_phone"))
				{
					permanent_phone=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("permanent_residence"))
				{
					permanent_residence=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("permanent_email"))
				{
					permanent_email=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("vehicle"))
				{
					vehicle=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("vehicle_ownership"))
				{
					vehicle_owenership=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("work_from"))
				{
					work_from=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("business_from"))
				{
					business_form=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("business_type"))
				{
					business_type=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_loan_no"))
				{
					existing_loan_no=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_institution_name"))
				{
					existing_institution_name=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_type_loan"))
				{
					existing_type_loan=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_loan_amount"))
				{
					existing_loan_amount=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_current_outstanding"))
				{
					existing_current_outstanding=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("existing_balance_tonor"))
				{
					existing_balance_toner=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("professional"))
				{
					profestional=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("qualification"))
				{
					qualification=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("educational_instituate_name"))
				{
					educational_instituate_name=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("year_passing"))
				{
					year_passing=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("reference_name1"))
				{
					reference_name1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("reference_address1"))
				{
					reference_address1=multi.getParameter(paramname);
					System.out.print("address1"+reference_address1);
				}
				if(paramname.equalsIgnoreCase("reference_telephone1"))
				{
					reference_telepone1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("reference_relationship1"))
				{
					reference_relationship1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("reference_name2"))
				{
					reference_name2=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("reference_address2"))
				{
					reference_address2=multi.getParameter(paramname);
					System.out.println("reference adddress2:"+reference_address2);
				}
				if(paramname.equalsIgnoreCase("reference_telephone2"))
				{
					reference_telephone2=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("reference_relationship2"))
				{
					reference_releationship2=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("declation_name"))
				{
					declation_name=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("file"))
				{
					file=multi.getParameter(paramname);
				}
			}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			datafile = multi.getFilesystemName(paramname);
			session.setAttribute("datafile", datafile);
			String fPath = context.getRealPath("\\gallery\\"+datafile);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	
	        FileInputStream fs1 = null;

	   
	        DBCollection coll=null; %>
	        <%
	        try{   
	                MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
	                DB db = mongoClient.getDB("sensitive");
	        	 System.out.println("Connect to database successfully sensitive");
	                coll = db.getCollection("app");
	                System.out.println("Collection app selected successfully");
	                BasicDBObject doc = new BasicDBObject("nationality", nationality).
	                   append("refno",refno).append("FirstName",FirstName).append("LastName",LastName).append("Pan_No",Pan_No).append("Mobile",Mobile).
	                   append("Dob",Dob).append("Marital",Marital).append("Gender",Gender).append("Dependents",Dependents).append("curr_residential_address",curr_residential_address).append("curr_residential_phone",curr_residential_phone)
	                   .append("curr_residence",curr_residence).append("official_email",offical_email).append("alternate_email",alternate_email).append("company_name",company_name).append("designation",designation).append("office_address",office_address)
	                   .append("existing_personal_loan",existing_personal_loan).append("existing_personal_loan_no",existing_personal_loan_no).append("gross_salary",gross_salary).append("gross_income",gross_income).append("years_current_job",years_current_job).append("retirement_age",retirement_age)
	                   .append("total_years_experience",total_years_experience).append("business_salary",business_salary).append("business_income",business_income).append("years_current_business",years_current_business).append("years_previous_business",years_previous_business).append("loan_amount",loan_amount1)
	                   .append("tenor",tenor).append("enduse",enduse).append("signature",signature).append("emi",emi).append("permanent_address",permanent_address).append("permanent_phone",permanent_phone)
	                   .append("permanent_redidence",permanent_redidence).append("permanent_email",permanent_email).append("vehicle",vehicle).append("vehicle_ownership",vehicle_owenership).append("work_from",work_from).append("business_from",business_form)
	                   .append("business_Type",business_type).append("existing_loan_no",existing_loan_no).append("existing_institution_name",existing_institution_name).append("existing_type_loan",existing_type_loan).append("existing_loan_amount",existing_loan_amount).append("existing_cureent_outstanding",existing_cureent_outstanding)
	                   .append("existing_balance_tonor",existing_balance_toner).append("professional",profestional).append("qualification",qualification).append("educational_instituate_name",educational_instituate_name).append("year_passing",year_passing).append("reference_name1",reference_name1)
	                   .append("reference_address1",reference_address1).append("reference_telephone1",reference_telepone1).append("reference_relationship1",reference_relationship1).append("reference_name2",reference_name2).append("reference_address2",reference_address2).append("reference_telephone2",reference_telephone2)
	                   .append("reference_relationship2",reference_releationship2).append("declation_name",declation_name).append("photo",datafile).append("status",ll);
	                  
	                coll.insert(doc);
	           
	                System.out.println("application inserted successfully");
	                DBCursor cursor = coll.find();
	               
	                try {
	                    while (cursor.hasNext()) {
	                    DBObject object = cursor.next();
	                 String data=object.get("_id").toString();
	                    System.out.println("this is the object id"+data);
	                    System.out.println(object.get("UserName") + " " + object.get("Email") + "<br/>");
	                   
	                    %>
	        	    	<script type="text/javascript">
	                alert("Your application to be successfully submitted........");
	                window.location='success.jsp';</script>
	                <%
	                    }
	                  
	                } finally { cursor.close(); }
	             }
	        catch(Exception zz)
	        {
	        	     System.err.println( zz.getClass().getName() + ": " + zz.getMessage() );
	        	  }  


}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>
