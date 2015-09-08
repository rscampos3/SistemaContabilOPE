package com.gerenciamento.contabil.conf;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

//Toda Logica de segurança é iniciada em uma classe do spring FilterSecurityInterceptor que é um filtro da especificação de servlet
//No entando tanto a ServletSpringMVC e essa classe, implementam a interface WebApplicationInitializer que é carregado pelo spring
// para fazer os registros do servlet, mais ou invez de implementar diretamente a interface é herdada a classe a seguir
public class SpringSecurityFilterConfiguration extends AbstractSecurityWebApplicationInitializer {
	
	
}
