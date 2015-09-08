package com.gerenciamento.contabil.conf;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement //indica que está sendo usado o controle transacional do Spring
public class JPAConfiguration {
	
	@Bean //Indica que os objetos criados por eles vão ser gerenciado pelo Spring onde pode ser injetado em qualquer ponto do codigo
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(){
		
		//Objeto responsave por configurar as dependencias e apontamento de objetos necessarios para acesso a dados.
		// sendo assim o objeto é a abstração do persistence.xml
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		
		//É adicionado o data sorce com contem a configuração para acesso ao Banco de dados escolhido.
		em.setDataSource(dataSource());
		
		//São adicionados os modelos de tabelas para persistencia
		em.setPackagesToScan(new String[]{"com.gerenciamento.contabil.models"});
		
		//A classe HibernateJpaVendorAdapter representa  a escolha de implementação da JPA, nessa coso vamos utilizar o HIBERNATE 
		JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		em.setJpaProperties(additionalProperties());
		
		return em;
	}

	//Configurando dataSorce respovel por determinar a base que será acessado, podendo também utilizar a mesma configuração 
	//para configurar outro framework ou até mesmo JDBC puro.
	
	@Bean
	public DataSource dataSource() {
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/gerenciamentocontabil");
		dataSource.setUsername("root");
		dataSource.setPassword("82970035");
		return dataSource;
	}
	
	//Configurando Propriedades da Conexao
	private Properties additionalProperties() {
		
		Properties properties = new Properties();
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		properties.setProperty("hibernate.show_sql", "true");
		
		return properties;
	}
	
	//A classe PlatformTransactionManager indica qual tipo de controle transacional será usado defino no retorno do metodo seguinte
	//sendo o ponto central do spring para o controle. No caso está sendo usado a implementação JPA... podendo utilizar a implementaçao 
	//direta do hibernate ou JDBC.
	@Bean
	public PlatformTransactionManager transactionManager(EntityManagerFactory emf){
		
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(emf);
		return transactionManager;
	}

	
}
