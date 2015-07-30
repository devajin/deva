<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib  prefix="security" uri="http://www.springframework.org/security/tags"%>    

<%

String LocalAddr = request.getServerName();
String remoteAddr = request.getRemoteAddr();
String remoteHost = request.getRemoteHost();
String contextRoot = request.getContextPath();
String req = "${req.}";
/* String contextUri = Con */
String docpath = request.getContextPath();




%>
request.getContext ::: > <%= contextRoot %></br>
server ip ::: >   <%= LocalAddr %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
</br>
<div>
<i></i>pageContext path <b>${pageContext.request.contextPath}</b></i></br>
<i></i>remote host :  <b><%=remoteHost %>></b></i></br>
<i></i>remote addr :  <b><%=remoteAddr %>></b></i></br>

</div>
</br>
<head>

       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    

   <title>SPT - Bootstrap Admin page</title>
	

    <!-- Bootstrap Core CSS -->
    <link href="..<%=docpath %>/resources/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="shortcut icon" href="..<%=docpath %>/resources/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="..<%=docpath %>/resources/imge/favicon.ico"  type="image/x-icon">
    
    <!-- MetisMenu CSS -->
    <link href="..<%=docpath %>/resources/css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="..<%=docpath %>/resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="..<%=docpath %>/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="j_spring_security_check" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="ID" name="j_username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="j_password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="..<%=docpath %>/resources/js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="..<%=docpath %>/resources/js/sb-admin-2.js"></script>

</body>

</html>
