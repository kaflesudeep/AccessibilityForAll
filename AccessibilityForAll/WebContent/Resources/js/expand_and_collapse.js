$(document).ready(function(){
	$('body').click('a[href="#"]', function(e) {e.preventDefault() });  // this code prevent from focus jump
	
	$(".expand_collapse_link").click(function(){
         var toggle_section_id= $(this).next().attr('id'); 
  
         $('#'+toggle_section_id).toggle();
         var text = $(this).text(); 
         if (text=="Expand +"){
         $(this).text("Collapse -"); 
         }else{
           $(this).text("Expand +");
         }        
    });
});