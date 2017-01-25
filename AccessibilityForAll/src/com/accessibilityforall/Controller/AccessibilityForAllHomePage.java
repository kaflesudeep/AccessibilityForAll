package com.accessibilityforall.Controller;

	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.servlet.ModelAndView;
	import org.springframework.web.servlet.mvc.AbstractController;

	
	 


		@Controller
		public class AccessibilityForAllHomePage extends HttpServlet {
		 
			@RequestMapping("/welcome")
			public ModelAndView helloworld() {
					 
				ModelAndView modelandview = new ModelAndView("AccessibilityForAll_HomePage"); // jsp name without .jsp
				modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
				
				return modelandview;
			}
}
