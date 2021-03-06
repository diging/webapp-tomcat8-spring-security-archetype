#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link rel="stylesheet" href="<c:url value="/resources/font-awesome-4.6.3/css/font-awesome.min.css" />" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    
    <title>My new webapp</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<c:url value="/resources/bootstrap/assets/css/ie10-viewport-bug-workaround.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/bootstrap/grid.css" />" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="<c:url value="/resources/bootstrap/assets/js/ie8-responsive-file-warning.js" />"></script><![endif]-->
    <script src="<c:url value="/resources/bootstrap/assets/js/ie-emulation-modes-warning.js" />"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 	<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/bootstrap/js/main.js" />"></script>
  </head>

  <body>
    <div class="container" style="padding-bottom: 150px;">

      <div class="page-header">
      <nav>
          <ul class="nav nav-pills pull-right">
          <li role="presentation">
          		<a href="<c:url value="/" />" >Home</a>
          	</li>
          	
          	<sec:authorize access="isAuthenticated()">
          	<li role="presentation">
         	 	<form action="<c:url value="/logout" />" method="POST">
         	 	<input type="hidden" name="${symbol_dollar}{_csrf.parameterName}" value="${symbol_dollar}{_csrf.token}"/>
  				<button class="btn-link" type="submit" title="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</button>
         	 	</form>
         	 </li>
          </sec:authorize>
          </ul>
         
        </nav>
        
        <h1><a class="appName" href="<c:url value="/" />">My new webapp</a></h1>
        <p class="lead">This is awesome.</p>   
      </div>
      
      
	  <c:if test="${symbol_dollar}{show_alert}" >
	  <div class="alert alert-${symbol_dollar}{alert_type}" role="alert">${symbol_dollar}{alert_msg}</div>
	  </c:if>
      <tiles:insertAttribute name="content" />

    </div> <!-- /container -->
    
    <footer class="footer">
      <div class="container">
      
        <div class="row">
        <div class="col-md-12">
		<hr style="margin-bottom: 25px;">
		<p class="text-muted pull-left">
		
	    <p class="text-muted">
	    
	         
	   	<sec:authorize access="isAnonymous()">
	   	
		<form name='f' class="form-inline pull-right" action="<c:url value="/login/authenticate" />" method="POST">
			Login:
			<input type="hidden" name="${symbol_dollar}{_csrf.parameterName}" value="${symbol_dollar}{_csrf.token}"/>
  			<input placeholder="Username" class="form-control input-sm" type="text" id="username" name="username"/>        
		    <input placeholder="Password" class="form-control input-sm" type="password" id="password" name="password"/>    
		    <button type="submit" class="btn btn-default btn-sm">Log in</button>
		</form>
		</sec:authorize>
        </p>
        </div>
        </div>
      </div>
    </footer>
    

     </body>
</html>
