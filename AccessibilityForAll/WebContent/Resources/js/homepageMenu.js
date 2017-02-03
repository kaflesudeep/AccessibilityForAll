$(document).ready(function(){
	$("#elementsPage").hide();
	$("#newsPage").hide();
	$("#aboutPage").hide();
	$("#contactsPage").hide();
}); 


$(document).ready(function(){
	$("#homeM").click(function(){
		$("#homePage").show(); 
		$("#elementsPage").hide();
		$("#newsPage").hide();
		$("#aboutPage").hide();
 		$("#contactsPage").hide();
	});
	
	$("#elementsM").click(function(){
		$("#homePage").hide(); 
		$("#elementsPage").show();
		$("#newsPage").hide();
		$("#aboutPage").hide();
 		$("#contactsPage").hide();
	}); 
	
	$("#newsM").click(function(){
		$("#homePage").hide(); 
		$("#elementsPage").hide();
		$("#newsPage").show();
		$("#aboutPage").hide();
 		$("#contactsPage").hide();
	}); 
	
	$("#aboutM").click(function(){
		$("#homePage").hide(); 
		$("#elementsPage").hide();
		$("#newsPage").hide();
		$("#aboutPage").show();
 		$("#contactsPage").hide();
	}); 
	
	$("#contactsM").click(function(){
		$("#homePage").hide(); 
		$("#elementsPage").hide();
		$("#newsPage").hide();
		$("#aboutPage").hide();
 		$("#contactsPage").show();
		
	}); 	
}); 

