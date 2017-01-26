<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accessibility For All Home</title>
</head>
<body>
 <div id= 'header'>
 
 <%@include file="AccessibilityForAll_Header.jsp" %>
 
 </div>
 
 
<div id= 'mainbody'>   
<!-- depending upon the menu click change the jsp file from this section. -->
 
 <%@include file="AccessibilityForAll_HomePageBody.jsp" %>
 
 </div>
 
  
  
<aside>
  <%@include file="AccessibilityForAll_UsefulLinksjsp.jsp" %>
</aside>

 <div id= 'footer'>
 
<%@include file="AccessibilityForAll_Footer.jsp" %>
 
 </div>



</body>

</html>