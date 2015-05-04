<jsp:directive.include file="includes/top.jsp" />

  <c:if test="${!empty param.login_error}">	
			<div align="center">	
			<p/><img src="Imagenes/Iconos/candado_roto.jpg" width="40" height="40" ><span class="label label-danger">Incorreto nombre de usuario y/o contrase&ntilde;a</span>
			</div>			
  </c:if>
  	
  <div class="container" align="center">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" align="center">                    
            <div class="panel panel-info" >
               <div class="panel-heading">
                   <div class="panel-title">Inicio de sesi&oacute;n</div>                        
               </div>     

               <div class="panel-body-confianza">
                  <img src="Imagenes/Confianza/img2.jpg" width=100%>
				  <img src="Imagenes/Confianza/im3.jpg" >		
				  <form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true">								         
				  
				    <section class="row">
				      <label for="username"><spring:message code="screen.welcome.label.netid" /></label>
				      <c:choose>
				        <c:when test="${not empty sessionScope.openIdLocalId}">
				          <strong>${sessionScope.openIdLocalId}</strong>
				          <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
				        </c:when>
				        <c:otherwise>
				          <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
				          <form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
				        </c:otherwise>
				      </c:choose>
				    </section>
				    
				    <section class="row">
				      <label for="password"><spring:message code="screen.welcome.label.password" /></label>				     
				      <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
				      <form:password cssClass="required" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
				    </section>
				        
				    <section class="row btn-row">
				      <input type="hidden" name="lt" value="${loginTicket}" />
				      <input type="hidden" name="execution" value="${flowExecutionKey}" />
				      <input type="hidden" name="_eventId" value="submit" />
				
				    </section>
				    
				    <div class="form-group">
                        <!-- Button -->
						<p/>
                        <div class="col-sm-12 controls" align="center" >
                            <input name="submit" type="submit" value="<spring:message code="screen.welcome.button.login"/>" />
                        </div>
                    </div>
                    <img src="Imagenes/Confianza/im4.jpg" > 
				  </form:form>
  </div></div></div></div>
<jsp:directive.include file="includes/bottom.jsp" />
