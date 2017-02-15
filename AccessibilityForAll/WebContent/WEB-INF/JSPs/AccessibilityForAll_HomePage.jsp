<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accessibility For All Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>
<%@ include file="/Resources/js/homepageMenu.js"%>
<%@ include file="/Resources/js/validate_Contactus.js"%>
<%@ include file="/Resources/js/expand_and_collapse.js"%>
</script>



<style><%@ include file="/Resources/css/homepage_layout.css"%>
<%@ include file="/Resources/css/homepage_menu.css"%>
<%@ include file="/Resources/css/screenreader.css"%>
		
</style>


</head>

<body>
	 <div class= 'header'>
		<%@include file="AccessibilityForAll_Header.jsp" %>
		
 </div>
 
 
 	 <div id= 'mainbody' class="clearfix">
	 	   
	 	   
	 	    <div class="column content" id="homePage" >   
			     <%@include file="AccessibilityForAll_HomePageBody.jsp" %> 
 			</div>
	  
	 
	       <div class="column content" id="elementsPage" >   
			      <%@include file="AccessibilityForAll_Elements.jsp" %> 
		   </div>
	  
	  		<div class="column content" id="newsPage" >   
			      <%@include file="AccessibilityForAll_News.jsp" %> 
			</div>
			 
			 <div class="column content" id="aboutPage" >   
			      <%@include file="AccessibilityForAll_About.jsp" %> 
			</div>
			
	 
	 		 <div class="column content" id="contactsPage" >   
			      <%@include file="AccessibilityForAll_Contactus.jsp" %> 
			</div>
	 
<!-- 	 sub menus  -->
	       <div class="column content" id="toolsandsetupPage" >   
			      <%@include file="subMenu_JSPs/AccessibilityForAll_ToolsAndSetup.jsp" %> 
		   </div>
		   
		   <div class="column content" id="testingkeysPage" >   
			      <%@include file="subMenu_JSPs/AccessibilityForAll_TestingKeys.jsp" %> 
		   </div>
		   
		   <div class="column content" id="guidelinesPage" >   
			      <%@include file="subMenu_JSPs/AccessibilityForAll_Guideline.jsp" %> 
		   </div>
		   
		   <div class="column content" id="helpfultipsPage" >   
			      <%@include file="subMenu_JSPs/AccessibilityForAll_HelpfulTips.jsp" %> 
		   </div>
	 
	 
	 
	 
	 
	 
		    <div class="column usefullink"> 
		    <%@include file="AccessibilityForAll_UsefulLinksjsp.jsp" %>
		    </div>
		  

        
       </div>
       
        <div class= 'footer' >
 		    <%@include file="AccessibilityForAll_Footer.jsp" %>
 		  </div> 

</body>
</html>