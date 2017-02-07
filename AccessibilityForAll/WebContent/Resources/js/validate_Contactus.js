
function validateContactusForm(){
	removevalidationall();
	var firstName= $('#fname').val();
	var lastName= $('#lname').val();
	var emailAdd= $('#emailAddress').val();
	var description_info= $('#description').val();
	
	var name_regex = /^[a-zA-Z]+$/;
	var email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	var alphanumeric = /^[a-zA-Z0-9\s\.\?]+$/;
	
	
	
	if (!(firstName.trim()).match(name_regex) || firstName.length == 0) {
	     $("#fname").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	     $("#fname").parent().append("<td id='error'>Please enter your valid first name.</td>").css({'color':'red'});
	     error_field="true"; 
		}
	  
	if (!(lastName.trim()).match(name_regex) || lastName.length == 0) {
	     $("#lname").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	     $("#lname").parent().append("<td id='error'>Please enter your valid last name.</td>").css({'color':'red'});
	     error_field="true";
	    }
	
	if (!(emailAdd.trim()).match(email_regex) || emailAdd.length == 0) {
	     $("#emailAddress").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	     $("#emailAddress").parent().append("<td id='error'>Please enter your valid email Address.</td>").css({'color':'red'});
	     error_field="true";
	    }
	
	if (!(description_info.trim()).match(alphanumeric) || description_info.length == 0) {
	 
	     $("#description").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	     $("#description").parent().append("<td id='error'>Please enter your valid Description, only alphanumeric, dot, ?, space.</td>").css({'color':'red'});
	     error_field="true";
	    }
	 if(error_field.toLowerCase()  ===  "true"){
		 $("#GlobalError").append("<p id='error'>There is error in your page. Enter correct information before submition. </p>").css({'color':'red'});
	}

	
	
}; 

function removevalidation (){
	
	   $(this).closest("tr").find("#error").remove();
	   $(this).closest("input").css({"border":"", "background-color":""});
	 }


function removevalidationall (){
	   $("#GlobalError").children("#error").remove();
	   $("tr").find("#error").remove();
	   $("*").css({"border":"", "background-color":""});
	 }