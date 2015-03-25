<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html lang="es"> 
	<head>		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Seguros Confianza</title>						    	
	</head>		      
	
	<body>		
		<div id="encabezado">
			<header>
				<div>
					<!--logo-->
					<img alt="logo" src="Imagenes/Confianza/Header_Logofinal-01-01.png" style="float: left; margin-top:8px; margin-left:100px;" class="textotablas" height=58px width=245px> 
	  		    	<!--Honramos nuestro  nombre-->
					<img alt="bandera" src="Imagenes/Confianza/Honramos Nuestro NombreFB-01.png" style="float:right; margin-top:5px; margin-right:140px;" class="textotablas" height="64" width="315">
				</div>
			</header>
		</div><!--encabezado-->	
		
		<div id="menu">
				index			
				something
				<a href="<c:url value="j_spring_security_logout" />" > Logout</a>
				
		</div><!--menu ng-app="FrmMenuApp"-->	
		
		<div id="contenido" >
			<aside>
				<div ng-view></div>			
			</aside>
		</div><!--contenido-->					
		
	</body>
</html>
