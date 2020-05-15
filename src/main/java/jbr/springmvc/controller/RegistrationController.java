package jbr.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.User;
import jbr.springmvc.service.UserService;
import springmvc_example.view.ExcelUserListreportView;
import springmvc_example.view.PdfUserListreportView;

@Controller
public class RegistrationController {
  @Autowired
  public UserService userService;

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("register");
    mav.addObject("user", new User());

    return mav;
  }

  @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
      @ModelAttribute("user") User user,BindingResult bindingResult) {

    userService.register(user);

    //return new ModelAndView("welcome", "firstname", user.getFirstname());
    return new ModelAndView ();
    
  }
    
  @RequestMapping(value = "/report", method = RequestMethod.GET)
  public ModelAndView userListReport(HttpServletRequest request, HttpServletResponse response){
	
	String typeReport =	request.getParameter("type");
	
	if(typeReport !=null && typeReport.equals("xls"))
	{
	    return new ModelAndView(new ExcelUserListreportView());
	} 
	
	else {
		if(typeReport !=null && typeReport.equals("pdf"));{
	    return new ModelAndView(new PdfUserListreportView());  
	    
	    }
	
	}
  }
	
	@RequestMapping(value = "/PdfFile", method = RequestMethod.GET)
	  public ModelAndView addPdf(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("user") User user,BindingResult bindingResult) {

	    //userService.register(user);

	    //return new ModelAndView("welcome", "firstname", user.getFirstname());
	    return new ModelAndView ("PdfFile");
	    
	  }
    }
  
