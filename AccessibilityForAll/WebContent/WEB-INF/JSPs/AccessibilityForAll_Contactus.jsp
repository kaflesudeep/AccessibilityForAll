<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function() {
	$("<span>*</span>").insertAfter(".required").css({
		color: 'red'
	});

</script>
</head>
<body>

<div>
<h1>Contact Us</h1>
</div>
<div>
<form method="" action="">  
<table>
<tr> 
			<td><label id="label" class="required">Your Name : </label> </td>
			<td><input type="text" name= "userName"  id="username" > </td>
		</tr>
		
		<tr> 
			<td><label id="label"> Your Organization Name: </label> </td>
			<td><input type="text" name= "orginationname" id="orgName" >   </td>
		</tr>
		<tr id="passw"> 
			<td><label id="label" class="required"> Email Address: </label> </td>
			<td><input type="text" name= "emailAddreaa" id="emailAddress" >  </td>
		</tr>
        
        <tr>  
       <td><label id="label" class="required">Subject </label> </td>
	   <td>
	      <select id="label" name = "category" class="required">
            <option value="I have some Suggestion">I have some Suggestion</option>
             <option value="I have Some Question">I have Some question</option>
              <option value="Something Else">Something Else</option>
             
             
           </select> </td>
         </tr>
         
         <tr>
          <td><label id="label" class="required"> Description:  </label> </td>
         <td>
        
         <input type="text" id="player" value="" style="width:100px; height:40px;">
         </td>
         </tr>
         
		
</table>

 <input type="submit" id = "submit_button" value="Submit">
  </form>
</div>

</body>
</html>