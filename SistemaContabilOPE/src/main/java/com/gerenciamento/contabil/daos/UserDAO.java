package com.gerenciamento.contabil.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.gerenciamento.contabil.models.User;


@Repository
public class UserDAO implements UserDetailsService {
	
	@PersistenceContext
	private EntityManager em;

	@Override//O metodo a seguir força o retorno de um Objeto userdatails para o spring conseguir gerenciar as urls acessiveis para o usuario logado
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String jpql ="select u from User u where u.login = :login";
		
		List<User> users = em.createQuery(jpql, User.class)
								.setParameter("login", username).getResultList();
				
		
		if(users.isEmpty()) {
			throw new UsernameNotFoundException ("O usuario "+username+" não existe");
		}
		
		return users.get(0);
	}
	
	public void saveUser(User user){
		BCryptPasswordEncoder encode = new BCryptPasswordEncoder();
		System.out.println(user.getPassword());
		System.out.println(encode.encode(user.getPassword()));
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		em.persist(user);
	}
	
	
}
