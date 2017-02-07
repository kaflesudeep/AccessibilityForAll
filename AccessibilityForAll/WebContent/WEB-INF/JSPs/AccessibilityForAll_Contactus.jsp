<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
$(document).ready(function(){
	$("<span aria-hidden='true'>*</span><span class='hidden'>Required Field</span>").css({"color": "red"}).appendTo(".required");
	
	$('#submit_button').on("click", function () {
	    var error_field= validateContactusForm(); 
         // Check if there are error fielsd of not
	    if (error_field.toLowerCase()  ===  "true") {
	   
	        return false;
	    }
	});
	// remove validation if the any text is entered.
	$("input").on("keypress", removevalidation); 
	
}); 
</script>


</head>
<body>

<div>
<h1>Contact Us</h1>

</div>
<div>
 <span id="GlobalError" > </span>
</div>
<div>
<form method="post" action="" >
<table>
		<tr> 
			<td><label id="label" class="required">First Name : </label> </td>
			<td><input type="text" name= "fName"  id="fname" > </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required">Last Name : </label> </td>
			<td><input type="text" name= "lName"  id="lname" > </td>
		</tr>
		
		<tr> 
			<td><label id="label"> Your Organization Name: </label> </td>
			<td><input type="text" name= "orginationname" id="orgName" >   </td>
		</tr>
		<tr id="passw"> 
			<td><label id="label" class="required"> Email Address: </label> </td>
			<td><input type="text" name= "emailAddress" id="emailAddress" >  </td>
		</tr>
        
        <tr>  
             <td><label id="label" class="required">Subject </label> </td>
	         <td>
	     	  <select id="label" name = "category" id="category" class="required">
          	    <option value="I have some Suggestion">I have some Suggestion</option>
                <option value="I have Some Question">I have Some question</option>
                <option value="Something Else">Something Else</option>
              </select>
              </td>
         </tr>
         
         <tr>
          <td><label id="label" class="required"> Description:  </label> </td>
          <td>        
            <input type="text" id="description" name= "description" value="" style="width:100px; height:40px;">
          </td>
         </tr>
</table>

 <input type="button" id = "submit_button" value="Next" />	
  </form>
</div>

</body>
</html>