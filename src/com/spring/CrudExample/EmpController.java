package com.spring.CrudExample;
import java.security.Principal;
import java.util.ArrayList;  
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.servlet.ModelAndView;  
import com.spring.CrudExample.Emp;  
import com.spring.dao.EmpDao;
import com.spring.dao.NewDao; 

@Controller  
public class EmpController {
	@Autowired  
    NewDao dao;//will inject dao from xml file  
      
    /*It displays a form to input data, here "command" is a reserved request attribute 
     *which is used to display object data into form 
     */  
    @RequestMapping("/signup")  
    public ModelAndView showSignUpform(){  
    	
     return new ModelAndView("signup","command",new User());
    	    }
   
    @RequestMapping("/signIn")  
    public ModelAndView showLoginform(@ModelAttribute("user") User user){  
        return new ModelAndView("signIn","command",new User());
  
    }
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(ModelMap model, Principal principal) {
    	System.out.println("Inside Index >>>>>>>>");
    	
   
    return "index";

    }
    
    
    
    /*It saves object into database. The @ModelAttribute puts request data 
     *  into model object. You need to mention RequestMethod.POST method  
     *  because default request is GET*/  
    
    @RequestMapping(value="/register",method = RequestMethod.POST)  
    public ModelAndView registerUser(@ModelAttribute("user") User user){ 
    	String bookingId = user.getBookingId();
    	System.out.println("Register User>>>>>>"+bookingId);
    	CustomerBooking cust=dao.ifUserExists(user);
    	if (cust != null){
        	System.out.println("Result>>>>>>"+cust.getCust_id());

            int insert = dao.register(user);    	
        	 return new ModelAndView("home","command",cust);
    	}else{
    		//not valid customer
			return new ModelAndView("error","command",cust);
    	}
    }  
    
    @RequestMapping(value="/login",method = RequestMethod.POST)  
    public ModelAndView loginUser(@ModelAttribute("user") User user){ 
    	System.out.println("Login User>>>>>>"+user.getBookingId());
    	CustomerBooking cust=dao.ifUserExists(user);

    	//CustomerBooking cust=dao.getCustDetails(user.getBookingId());
    	if (cust != null){
        	System.out.println("Result>>>>>>"+cust.getCust_id());

            //int insert = dao.register(user);    	
        	 return new ModelAndView("home","command",cust);
    	}else{
    		//not valid customer
			return new ModelAndView("error","command",cust);
    	}
       // return new ModelAndView("home","command",cust);    //will redirect to home request mapping  
    }  
    
    /* It logs in the User to Home page*/  
    /* It displays object data into form for the given id.  
     * The @PathVariable puts URL data into variable.*/  
    @RequestMapping(value="/home",method = RequestMethod.POST)  
    public ModelAndView userHome(@PathVariable String bookingId){ 
    	String hardBkId;
    	hardBkId = "TC44441234";
        //CustomerBooking cust=dao.getCustDetails(bookingId);           //booking_id = 'TC44441234';
    	CustomerBooking cust=dao.getCustDetails(hardBkId);
        return new ModelAndView("home","command",cust);  
    }  
    
    @RequestMapping(value = "/submitFeedback",method = RequestMethod.POST)
    public String submitFeedback(@ModelAttribute("feedback") CustomerBooking feedback) {
    	System.out.println("RATING >>>>>>>>"+feedback.getRateValueInput());
    	
    	System.out.println("Inside feedback submitted >>>>>>>>");
    	String review = feedback.getFeedback();
    	System.out.println("COMMENTS>>>>>>>>>>>>>>>>>>"+ review);
    	int feedbackObj=dao.submitFeedback(feedback); 
    	System.out.println("Inserted into table FEEDBACK>>");
    	if ( 3 > feedback.getRateValueInput()){
    		return "handleNegReview"; 
    	}
    	else if (4 <= feedback.getRateValueInput()){
    		return "handlePosReview"; 
    	}
    //	return new ModelAndView("postReview","command",review);     
    	return "redirect:/static/general.html";
    	
   }
   
    /*@RequestMapping(value="/handlePosReview",method = RequestMethod.POST)  
    public ModelAndView handlePosReview(@ModelAttribute("cust") CustomerBooking cust){ 
    	System.out.println("handlePosReview>>>>>>>>>>>>>>>>>>");
        return new ModelAndView("handlePosReview","command",cust);    
    } 
    @RequestMapping(value="/handleNegReview",method = RequestMethod.POST)  
    public ModelAndView handleNegReview(@ModelAttribute("cust") CustomerBooking cust){ 
    	System.out.println("handleNegReview>>>>>>>>>>>>>>>>>>");
        return new ModelAndView("handleNegReview","command",cust);   
    } 
    */
    
    @RequestMapping(value="/logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        HttpSession httpSession = request.getSession();
        httpSession.invalidate();
        return "error";
    }

    
}
