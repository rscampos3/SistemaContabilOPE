package com.gerenciamento.contabil.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity//faz com que outros componentes de segurança sejam carregados, permitindo que seja usado na action de todos os formularios do spring  o servletRelativeAction
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Override//As regras de autenticação e autorização será configurado apartir do objeto HttpSecurity
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()//retorna o objeto que pode ser configurados sendo as regras de acesso
		.antMatchers("/form").hasRole("ADMIN") //está dizendo que além de estar logado o usuario precisa ser ADMIN	para acessar o endereço
		.antMatchers("/home").hasRole("ADMIN")
		.antMatchers("/**").permitAll()
		.antMatchers(HttpMethod.POST,"/produtos").hasRole("ADMIN")//Caso o endereco seja acessado através do verbo POST, só liberamos acesso  caso tenha sido disparado por um usuario perfil ADMIN
		.antMatchers("/produtos/**").permitAll()//Está dizendo que todos os outros comecem com produtos estão liberados 
		.anyRequest().authenticated()//o metodo anyRequest diz que toda reques deve ser feito por alguém autenticado
		.and().formLogin()//o metodo formLogin indica que o sistema da suporte a autenticação  baseada em um formulario comum
		.and()
		.formLogin()//retorna um objeto do tipo logoutConfigurer, podendo assim trocar as configuraçoes que vem por default para a url de login
		.loginPage("/login")//recebe o argumento a URL que deve ser usada para tela de login
		.permitAll().successHandler(new RedirectAfterLogin());//informa que esse endereço  está liberado para todos os usuarios
		
		//o metodo httBasic indica que que suporta o modelo de autenticação, de mesmo nome, provido pelo proprio protocolo HTTP
		//O metodo and ele serve para voltar ao objeto do tipo HttpSecurity
	}
	
	@Autowired
	private UserDetailsService users;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth)	throws Exception {

//		auth.userDetailsService(users).passwordEncoder(new BCryptPasswordEncoder());//caso tenha a necessidade de criptografar
		auth.userDetailsService(users);
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}
	
}
