<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" />
		<link href="<c:url value="/resources/css/bootstrap_.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/bootstrap-responsive.css"/>" rel="stylesheet">   
		<script src="http://code.jquery.com/jquery-latest.js"></script>  
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> 
		<link rel="stylesheet" media="screen and (max-width: 1200px) and (min-width: 601px)" href="<c:url value="/resources/css/responsiveform1.css"/>" />
		<link rel="stylesheet" media="screen and (max-width: 600px) and (min-width: 351px)" href="<c:url value="/resources/css/responsiveform2.css"/>" />
		<link rel="stylesheet" media="screen and (max-width: 350px)" href="<c:url value="/resources/css/responsiveform3.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/calendar.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/custom_2.css"/>" />
		<script src="<c:url value="/resources/js/modernizr.custom.63321.js"/>"></script>
	</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Gerenciamento Contábil</title>
</head>

<body>


<nav class="navbar navbar-default navbar-fixed-top">

  <div class="container">
 
 <img class="logo" src="img/logo.png" alt="Sistema Gerenciamento Contabil">

  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
  <div id="navbar" class="navbar-collapse collapse" id="navbar-main">
          
          
          <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="movimentoCaixa.html">Movimento Caixa</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Relatórios<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="fechamentoRelatorio.html">Fechamento</a></li>
                <li><a href="relatorioSemanal.html">Semanal</a></li>
                <li><a href="relatorioDiario.html">Diário</a></li>
                <li><a href="relatorioPersonalizado.html">Personalizado</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sócios<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="manutencaoSocios.html">Manutenção</a></li>
                <li><a href="movimentoSocios.html">Movimentos</a></li>
                <li><a href="relatorioSocios.html">Relatórios</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Usuários<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="cadastroUsuarios.html">Cadastrar</a></li>
                <li><a href="editaUsuarios.html">Editar</a></li>
                <li><a href="excluiUsuarios.html">Excluir</a></li>
              </ul>
            </li>

          </ul>
          
          <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="movimentoCaixa.html">Movimento Caixa</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Relatórios<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="fechamentoRelatorio.html">Fechamento</a></li>
                <li><a href="relatorioSemanal.html">Semanal</a></li>
                <li><a href="relatorioDiario.html">Diário</a></li>
                <li><a href="relatorioPersonalizado.html">Personalizado</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sócios<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="manutencaoSocios.html">Manutenção</a></li>
                <li><a href="movimentoSocios.html">Movimentos</a></li>
                <li><a href="relatorioSocios.html">Relatórios</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Usuários<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="cadastroUsuarios.html">Cadastrar</a></li>
                <li><a href="editaUsuarios.html">Editar</a></li>
                <li><a href="excluiUsuarios.html">Excluir</a></li>
              </ul>
            </li>

          </ul>
          
          <ul class="nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Usuário<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="configuracao.html"><span class="glyphicon glyphicon-cog"></span> Configuração</a></li>
                <li><a href="login.html"><span class="glyphicon glyphicon-off"></span> Logout</a></li>

              </ul>
            </li>
          </ul>

        </div><!--/.nav-collapse -->
  </div>
</nav> 
 


<div class="row-fluid">
  <div class="col-md-3">
  
 <div class="left_row">
  	<div class="left_row_first">
     
   <div class="title_row">
   <span>Agenda</span>
   </div>
      <section class="main">
				<div class="custom-calendar-wrap">
					<div id="custom-inner" class="custom-inner">
						<div class="custom-header clearfix">
							<nav>
								<span id="custom-prev" class="custom-prev"></span>
								<span id="custom-next" class="custom-next"></span>
							</nav>
							<h2 id="custom-month" class="custom-month"></h2>
							<h3 id="custom-year" class="custom-year"></h3>
						</div>
						<div id="calendar" class="fc-calendar-container"></div>
					</div>
				</div>
			</section>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.calendario.js"></script>
		<script type="text/javascript" src="js/data.js"></script>
		<script type="text/javascript">	
			$(function() {
			
				var transEndEventNames = {
						'WebkitTransition' : 'webkitTransitionEnd',
						'MozTransition' : 'transitionend',
						'OTransition' : 'oTransitionEnd',
						'msTransition' : 'MSTransitionEnd',
						'transition' : 'transitionend'
					},
					transEndEventName = transEndEventNames[ Modernizr.prefixed( 'transition' ) ],
					$wrapper = $( '#custom-inner' ),
					$calendar = $( '#calendar' ),
					cal = $calendar.calendario( {
						onDayClick : function( $el, $contentEl, dateProperties ) {

							if( $contentEl.length > 0 ) {
								showEvents( $contentEl, dateProperties );
							}

						},
						caldata : codropsEvents,
						displayWeekAbbr : true
					} ),
					$month = $( '#custom-month' ).html( cal.getMonthName() ),
					$year = $( '#custom-year' ).html( cal.getYear() );

				$( '#custom-next' ).on( 'click', function() {
					cal.gotoNextMonth( updateMonthYear );
				} );
				$( '#custom-prev' ).on( 'click', function() {
					cal.gotoPreviousMonth( updateMonthYear );
				} );

				function updateMonthYear() {				
					$month.html( cal.getMonthName() );
					$year.html( cal.getYear() );
				}

				// just an example..
				function showEvents( $contentEl, dateProperties ) {

					hideEvents();
					
					var $events = $( '<div id="custom-content-reveal" class="custom-content-reveal"><h4>Events for ' + dateProperties.monthname + ' ' + dateProperties.day + ', ' + dateProperties.year + '</h4></div>' ),
						$close = $( '<span class="custom-content-close"></span>' ).on( 'click', hideEvents );

					$events.append( $contentEl.html() , $close ).insertAfter( $wrapper );
					
					setTimeout( function() {
						$events.css( 'top', '0%' );
					}, 25 );

				}
				function hideEvents() {

					var $events = $( '#custom-content-reveal' );
					if( $events.length > 0 ) {
						
						$events.css( 'top', '100%' );
						Modernizr.csstransitions ? $events.on( transEndEventName, function() { $( this ).remove(); } ) : $events.remove();

					}

				}
			
			});
		</script>
    </div>
  </div>
  
    <div class="left_row_second">
    <div class="title_row">
   <span>Agenda</span>
   </div>
</div>
</div>
  <div class="col-md-9">
  
  <div class="middle_row">
  <div class="middle_row_content">
  <h3>Seja bem vindo, Usuário</h3>
  
<p>Em construção</p>

  </div>
  </div>
  
  </div>



  <!--
<div class="top">
	<div class="logo">
    </div>
    
    <div class="user">
    </div>
</div>






<div class="left-column">

</div>




<div class="center-content">
</div>



<div class="right-column">
</div>





<div class="footer">
</div>

-->
</body>
</html>
