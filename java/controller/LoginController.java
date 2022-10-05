package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Account;

@Controller
public class LoginController {
	
	@RequestMapping(value= {"/","/login"})
	public String login() {	
		return "login";
	}
	
	@RequestMapping(value= {"/login"}, method = RequestMethod.POST)
	public String doLogin(Model model, @ModelAttribute("account") Account account) {
		
		if(account != null) {
			String username = account.getUsername();
			String password = account.getPassword();
			
			if(username != null && password != null &&!username.equals("") && !password.equals("")) {
				if(username.equalsIgnoreCase("admin") && password.equals("admin")) {
					model.addAttribute("username", username);
					return "admin";
				} else {
					model.addAttribute("errormessage", "Username or password is invalid.");
					return "login";
				}				
			}
		}		
		
		model.addAttribute("errormessage", "Please enter username and password.");
		return "login";
	}

}
