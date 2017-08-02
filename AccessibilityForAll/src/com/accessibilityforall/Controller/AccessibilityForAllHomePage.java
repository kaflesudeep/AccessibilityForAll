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

import com.accessibilityforall.DAO.AccessibilityForAll_ContactUS_DAO;
import com.accessibilityforall.DAOimpl.AccessibilityForAll_ContactUS_DAOImpl;


	
	 // testing 


		@Controller
		public class AccessibilityForAllHomePage extends HttpServlet {
		 
			@RequestMapping("/welcome")
			public ModelAndView homePage() {
					 
				ModelAndView modelandview = new ModelAndView("AccessibilityForAll_HomePage"); // jsp name without .jsp
				modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
				
				return modelandview;
			}
			
			
			@RequestMapping("/contactus")
			public ModelAndView submitQuestion(@ModelAttribute("userFeedbackSubmission") AccessibilityForAll_ContactUS_DAO userFeedbackSubmission) {
					
				
				// if we need to add this to the database at this point else we need to pass to the session. 
				AccessibilityForAll_ContactUS_DAOImpl contactUS_DAOImpl = new AccessibilityForAll_ContactUS_DAOImpl();
				
				
				
				// adding user info to the database.
				Long feedback_submission_id = contactUS_DAOImpl.add(userFeedbackSubmission);
					
				System.out.println(feedback_submission_id);
				
				
				ModelAndView modelandview = new ModelAndView("AccessibilityForAll_SubmitQuestion_Status"); // jsp name without .jsp
				modelandview.addObject("saving_feedback_status_ID", feedback_submission_id );
				
				return modelandview;
			}
}
