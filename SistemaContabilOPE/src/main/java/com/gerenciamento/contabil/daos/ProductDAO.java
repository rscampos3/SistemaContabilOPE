package com.gerenciamento.contabil.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.gerenciamento.contabil.models.Product;

@Repository// É necessario para indicar que essa classe realizara CRUD
public class ProductDAO {
	
	// Para que posso perdir a injeção do EntityManager sera usado o seguinte annotation, normalmente utilizado dentro de servidores
	//javaEE. Ele indica que a classe está recebendo um EntityManager
	@PersistenceContext 
	private EntityManager manager;
	
	public void save(Product product){
		manager.persist(product);
	}
}
