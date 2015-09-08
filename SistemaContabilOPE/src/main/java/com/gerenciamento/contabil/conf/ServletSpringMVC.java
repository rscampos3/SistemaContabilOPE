package com.gerenciamento.contabil.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	// O seguinte metodo faz com que as classes sejam carregadas dentro de um Listener que é lido quando o servidor sobe, no caso do spring MVC
	// é a ContextLoaderListener
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[]{SecurityConfiguration.class,AppWebConfiguration.class,JPAConfiguration.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		//Informando ao Servlet quais as classes de configuração devem ser lidas para que seus respectivos metodos sejam
		// disponibilizando e gerenciado pelo container do spring
		return new Class[]{};
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
	}

}
