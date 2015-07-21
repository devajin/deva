<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%
String ServerIP = request.getSession().getServletContext().getContextPath();
/* String LocalAddr = request.getServerName(); */
String contextRoot = request.getLocalAddr();
String ServerURL = "http://192.168.100.188";
String ResourcesURL = "192.168.100.188/resources";
Map<String, Object> maplist = (Map<String, Object>)request.getAttribute("data");
String docpath = "/admin";  

%>

<c:set var="v1" ><%= request.getAttribute("data") %> </c:set>

<!DOCTYPE html>
<html lang="kor">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SPT - Bootstrap Admin page</title>
	
    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../resources/css/metisMenu.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="../resources/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../resources/css/morris.css" rel="stylesheet">
	
	<!-- DataTables CSS -->
    <link href="../resources/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../resources/css/dataTables.responsive.css" rel="stylesheet">


    <!-- Custom Fonts -->
    <link href="../resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<%-- <%=ServerIP %>
----
<%=contextRoot %>
<%= maplist.get("seccess") %>
<br>
<%= maplist.get("name") %>
<br>
<%= maplist.get("principal") %>
<br>
<%= maplist.get("") %>
------
${v1 }
<br>

--- --%>

<%-- <%= request.getAttribute("data") %> --%>
<style type="text/css">
	 .img-responsive {
           height:100%;
           width:100%;
        }
	.img-responsive-10 {
           height:50%;
           width:50%;
        }
     .image-container
      {
        height:3em;
        width:19em;
      }
  
	</style>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header row">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/admin/start"> 
                	
                	<div class="image-container col-lg-3 col-md-6" >
		                	<img src="../resources/imge/bi_5.png" class="img-responsive-10" >
		            </div>
                	
		            <div class="image-container col-lg-3 col-md-6" >
		                
		            </div>
		            
		            
                </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li id=""><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                       
                        <li>
                            <a href="<%=docpath %>/users"><i class="fa  fa-underline  fa-fw"></i> Users Info</a>
                        </li>
                        <li>
                            <a href=""> <i class="fa fa-sitemap fa-fw"></i> Hub & Sensor <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=docpath %>/hub"> <i class="fa fa-h-square fa"></i>  Hub</a>
                                </li>
                                <li>
                                    <a href="<%=docpath %>/sensor"> <i class="fa fa-weibo fa"></i>  Sensor</a>
                                </li>
                             </ul>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-table fa-fw"></i> Tables</a>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-clipboard fa-fw"></i> BBS <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li> 
                                    <a href="<%=docpath %>/notice"><i class="fa fa-rss fa"></i> 공지사항 NOTICE</a>
                                </li>
                                <li>
                                    <a href="<%=docpath %>/freeboard"><i class="fa fa-comment fa"></i> 자유게시판 FREE BOARD</a>
                                </li>
                             </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
        
        
        
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">HUB REGIST</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
        
	<!-- /.row -->
                        	<form action="">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            HUB 추가
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" style="padding-bottom: 0">
                        
                        	
                        	
                        		<div class="form-group">
					    			<label for="hubidInput">HUB ID</label>
					    			<input type="text" class="form-control" id="hubidInput" name="hub_id"  placeholder="Hub id" value="">
					  			</div>
								<div class="form-group">
								    <label for="useridInput">User ID</label>
								    <input type="text" class="form-control" id="useridInput" name="hub_user" placeholder="User id" value="">
								</div>
								
								<div class="form-group">
								    <label for="useridInput">Hub Nick name</label>
								    <input type="text" class="form-control" id="useridInput" name="hub_nick"  placeholder="Hub Nick name" value="">
								</div>
								
								<div class="form-group">
								    <label for="hubpwInput">HUB Password</label>
							   		<input type="text" class="form-control" id="hubpwInput"  name="hub_pw"  placeholder="Hub password" value="">
								</div>
		                        <div class="form-group">
								    <label for="hubpwInput">HUB Password reEnter</label>
							   		<input type="text" class="form-control" id="hubpwInput"  placeholder="Hub password reEnter" value="">
								</div>	
                        		
                        
                           
                        </div>
                       
                        <!-- /.panel-body -->
                        <!-- row -->
			<div class="row">
				<div class="col-sm-6" style="padding-bottom: 1em">
					<div class="dataTables_paginate paging_simple_numbers pull-left" id="" style="margin-left: 1em;" >
						<ul class="pagination" >
						<button type="button"  class="btn btn-success" id="hubRegistBtn"><i class="fa fa-check fa-fw" ></i> 확  인</button>
						<button type="button"  class="btn btn-danger" id="hubRegistCancel"><i class="fa fa-times fa-fw" ></i> 취  소</button>
						</ul>
					</div>
				</div>
			</div>
                            </form>
						
                    </div>
                    
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
			
			<!-- row -->
			
	</div>
	</div>
 <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/js/metisMenu.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../resources/js/raphael-min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/js/sb-admin-2.js"></script>
    
    <script src="../resources/js/jquery.bootpag.js"></script>
    
    
    <script>
    
    
    
	</script>
    
    
</body>
</html>