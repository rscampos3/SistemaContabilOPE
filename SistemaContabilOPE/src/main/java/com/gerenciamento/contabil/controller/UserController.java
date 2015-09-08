package com.gerenciamento.contabil.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gerenciamento.contabil.daos.UserDAO;
import com.gerenciamento.contabil.models.User;

@Controller
@Transactional
public class UserController {

	@Autowired
	UserDAO userDao;
	
	@RequestMapping("cadastroUser")
	public String save(User user){
		userDao.saveUser(user);
		
		return "produtos/ok";
	}
	
	@RequestMapping("cadastroUser2")
	public String templat(){
		System.out.println("faslkdjflaks");
		return "cadastroUser";
	}

}
