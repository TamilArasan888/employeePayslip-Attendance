package com.chainsys.emppayslipattend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	@GetMapping("/")
	public String index() {
		return "index-page";
	}
	
	@GetMapping("/index")
    public String index(Model model) {
        return "index";
    }  
	@GetMapping("/home")
    public String home(Model model) {
        return "home";
    }    
}
