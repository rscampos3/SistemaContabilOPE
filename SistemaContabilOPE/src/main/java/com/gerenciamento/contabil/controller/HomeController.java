package com.gerenciamento.contabil.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping("/login")
	public String home(){
		System.out.println("inicio");
		return "login";
	}
	
	@RequestMapping("/home")
	public String inicio(){
		
		return "home";
	}
}
