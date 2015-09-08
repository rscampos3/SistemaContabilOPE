package com.gerenciamento.contabil.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gerenciamento.contabil.daos.ProductDAO;
import com.gerenciamento.contabil.models.BookType;
import com.gerenciamento.contabil.models.Product;

@Controller
@Transactional // O annotation é nessacessario porque indicar que vai existir transação "CRUD" dentro da class
				//assim como a @persistenceContext a @Transactional pertence a uma especificação do JavaEE, sendo nesse caso O JTA.
public class ProductsController {
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/produtos")
	public String save(Product product){
		productDAO.save(product);
		return "products/ok";
	}
	
	@RequestMapping("/form")
	public ModelAndView form(){
		ModelAndView modelAndView = new ModelAndView("products/form");
		modelAndView.addObject("types", BookType.values());
		
		return modelAndView;
	}
}
