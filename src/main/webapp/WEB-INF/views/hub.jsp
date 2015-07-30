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
String ServerURL = "52.69.148.233";
String ResourcesURL = "192.168.100.188/resources";
Map<String, Object> maplist = (Map<String, Object>)request.getAttribute("data");
String docpath = request.getContextPath();  


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
    <link href="..<%=docpath %>/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="..<%=docpath %>/resources/css/metisMenu.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="..<%=docpath %>/resources/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="..<%=docpath %>/resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="..<%=docpath %>/resources/css/morris.css" rel="stylesheet">
	
	<!-- DataTables CSS -->
    <link href="..<%=docpath %>/resources/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="..<%=docpath %>/resources/css/dataTables.responsive.css" rel="stylesheet">


    <!-- Custom Fonts -->
    <link href="..<%=docpath %>/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
		                	<img src="..<%=docpath %>/resources/img/bi_5.png" class="img-responsive-10" >
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
                        <li id=""><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                    <h1 class="page-header">HUB Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
        
	<!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            SPT DataTables HUB information
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" style="padding-bottom: 0">
                        <div class="row">
                        	<div class="col-sm-6">
                        		
                        	</div>
                        	<div class="col-sm-6  ">
                        			
		                        		
		                        		<div id="" class="dataTables_filter"  >
		                        			
		                        			<label>
		                        			
		                        			<div class="btn-group">
											       <input type="search" class="input-sm" placeholder="" id="inputSearchWord" > 
											      <a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#" >SELECT<span class="caret"></span></a>
											      
											      <ul class="dropdown-menu" id="search-dropdown-menu">
											        <li value="user"><a href="#"> <i class="fa fa-github-alt fa-fw" ></i> User ID</a></li>
											        <li><a href="#"> <i class="fa fa-sitemap fa-fw"></i> Hub ID</a></li>
											        
											      </ul>
											    </div>
											    											    
											    <div class="btn-group">
											      <button type="button" id="btnSearch" class="btn btn-primary">Search</button>
											 </div>
													
		                        			</label>
		                        		</div>
		                        	<!-- 	<div id="" class="dataTables_filter col-sm-3" >
		                        			<input type="search" class="form-control input-sm" placeholder="" >
		                        		
		                        		
		                        		
		                        		</div> -->
		                        	
                        			</div>
                        		
                        </div>
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-hub">
                                    <thead>
                                        <tr>
                                            <th>Hub ID</th>
                                            <th>User ID</th>
                                            <th>Hub password</th>
                                            <th>Update </th>
                                            <th>생성일</th>
                                            <th>delete</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbodydata">
                                       
                                        
                                     
                                    </tbody>
                                </table>
                            </div>
                           
                        </div>
                        <!-- /.panel-body -->
                        <!-- row -->
			<div class="row">
				<div class="col-sm-6">
					<div class="dataTables_paginate paging_simple_numbers pull-left" id="" style="margin-left: 1em;" >
						<ul class="pagination" >
							<a href="<%=docpath %>/Hub/addHub">
								<button type="button"  class="btn btn-success" id="registHubBtn"><i class="fa fa-check fa-fw" ></i> Hub 등록</button>
							</a>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="dataTables_paginate paging_simple_numbers pull-right" id="pagingContent" style="margin-right: 1em;" >
						<ul class="pagination" id="pageList" >
						</ul>
					</div>
				</div>
			</div>
						
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


<!-- modal -->

<!-- Modal -->
<div class="modal fade" id="hubinfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="hubinfoModalLabel"> </h4>
      </div>
      <div class="modal-body" id="hubinfoModalBody">
		  
		  
		  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




<!-- Modal -->
  


<!-- alert  Modal -->
<div class="modal fade" id="alertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="alertModalLabel"> 알  림 </h4>
      </div>
      <div class="modal-body" id="alertModalBody">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

<!-- hub delete  -->
<div class="modal fade" id="hubdelModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="hubdelModalLabel">Hub 삭제</h4>
      </div>
      <div class="modal-body" id="hubdelModalBody">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취  소</button>
        <button type="button" class="btn btn-danger" id="hubdelBtn" >확  인</button>
      </div>
    </div>
  </div>
</div>



    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="..<%=docpath %>/resources/js/metisMenu.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="..<%=docpath %>/resources/js/raphael-min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="..<%=docpath %>/resources/js/sb-admin-2.js"></script>
    
    <script src="..<%=docpath %>/resources/js/jquery.bootpag.js"></script>
    
    
    <script>
    var page;
    
    $(document).ready(function(){
    	hubListCall();
    });
    
    
    /* 검색 */
    $(".dropdown-menu li a").click(function(){
    	  var selText = $(this).text();
    	  $(this).parents('.btn-group').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');
    });

    $("#btnSearch").click(function(){
    	console.log($('.btn-select').text()+", "+$('#inputSearchWord').val());
    	var type=$('.btn-select').text(), keyword=$('#inputSearchWord').val();
    	
    	if(type=="SELECT"){
    		alert("select 선택하삼")
    	}else{
    		console.log("--------------------------------");
    		type = (type.indexOf("Hub")!=-1) ? "hubid" : "hubuser";
    		console.log(type);
    		hubListCall(type, keyword);
    	}
    	
    	
    });
    
    
    
    // 리스트 
    function hubListCall(type, keyword, page){
		
    	for (var i=0, len = arguments.length ; i < len ; i ++){
	    	//console.log(len);
    		//console.log(arguments[i]);
    		//console.log(typeof(arguments[i])=="function");
    	}
    	
    	if(!page){
    	var page="1";
    		
    	}
    	
    	if(!keyword || !type ){
    		console.log(page);
    		var keyword ="", type="";
    		
    	}else if(!keyword && !type){
    		console.log(keyword,type)
    	}/* else if(arguments[0]=="function"){
    		var keyword ="", type="";
    	} */
    	
    	var hubdata = {page : page, keyword : keyword, type : type };
    	//console.log(hubdata);
    	$.ajax({
			type: "POST",dataType: "json",
			url: "http://<%= contextRoot%><%=docpath %>/Hub/getHubList",
			data: hubdata,
			success: function(data) {
				
				var contents="";
				$('#tbodydata').empty();
				 /* data.isComplet = 1; */ 
				if(data.isComplet == 0){
				 console.log("----------- success" );
						$.each(data.result, function(i, val){
							var isOdd = (0==i/2) ? 'odd' : 'even' ;
							contents +=  '<tr class="'+isOdd+' gradeX" id="'+val.hub_id+'">'+
		                    '<td>'+val.hub_id+'</td>'+
		                    '<td>'+val.hub_user+'</td>'+
		                    '<td class="center">'+val.hub_pw+'</td>'+
		                    '<td class="center">'+val.hub_udate+'</td>'+
		                    '<td class="center">'+val.hub_intidate+'</td>'+
		                    '<td class="center"><button type="button" class="btn btn-danger" id="hubdel'+val.hub_id+'">삭제</button> </td>'+
		                '</tr>';
							
						});
						
						$('#tbodydata').append(contents);
						
						
						var totalCount = data.result[0].totcnt/10;
						newDrowPage(parseInt(totalCount)+1 , page);
				}else if(data.isComplet == 1){
					console.log("----------- filed " );
					var messageText = "알 수 없는 오류로 데이터를 읽어 오지 못했습니다."
					
						$('#altModalBody').append(messageText);
					$('#alertModal').modal('show', function(){
						console.log(messageText);	
					});
				}
				

			},
			error: function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); }
		});
    	
    	
    	
    };
    
    // 삭제 버튼
    $('#dataTables-hub').on('click', '#tbodydata > tr > td > button', function(e){
    	
    	$('#hubdelModalBody').empty();
    	console.log($(this).attr('id').substring(6));
    	var hubid = $(this).attr('id').substring(6);
    	var textcontent = '<h3><span class="label label-warning">'+hubid+'</span></h3>'+
    						'해당 hub를 삭제 하시겠습니까?</br>'+
    						'hub에 등록된 <b style="color:red;">센서(sensor)도</b> 함께 삭제 됩니다.</br>';
    	
    
    	$('#hubdelModalBody').append(textcontent);
    	$('#hubdelModal').modal('show');
    	
    	e.stopPropagation(); // 이벤트 버블링 
        e.preventDefault();
    });
    
    
    $('#hubdelBtn').on('click', function(){
    	
    	var hubid ='TEST';
    	console.log(hubid);
    	hubdelete(hubid);
    });
    
    // 삭제 function
    function hubdelete(hubid){
		    
    		$.ajax({
					type: "POST",dataType: "json",
					url: "http://<%= contextRoot%><%=docpath %>/Hub/removeHub",
					data: hubid,
					success: function(data) {
						
						var contents="";
						$('#tbodydata').empty();
						 /* data.isComplet = 1; */ 
						if(data.isComplet == 0){
							
						}
				
					},error: function(request,status,error){
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); }
				});
    	
    }
    
    
    
    
    //테이블 row 클릭시 이벤트 발생
    $('#dataTables-hub').on('click', '#tbodydata > tr', function(e){
    	//console.log($(this).attr('id'));
    	var hubid = $(this).attr('id')
    	
    	e.stopPropagation(); // 이벤트 버블링 
        e.preventDefault();
    	    	
    	// 클릭시 모달로 수정 가능하게 설정
    	$.ajax({
			type: "POST",dataType: "json",
			url: "http://<%= contextRoot%><%=docpath %>/Hub/viewHub",
			data: {hub_id : hubid },
			success: function(data) {
				var contents="";
				$('#hubinfoModalLabel').empty();
				$('#hubinfoModalBody').empty();
				//console.log(" result data ::>> ", data.isComplet);
				//console.log(" result data ::>> ", data.result);
				
				if(data.isComplet==0){
				
				$('#hubinfoModalLabel').append('HUB Information') ;
				
				 contents ='<div class="form-group">'+
					    		'<label for="hubidInput">HUB ID</label>'+
					    		'<input type="text" class="form-control" id="hubidInput" disabled value="'+data.result.hub_id+'">'+
					  		'</div>'+
							'<div class="form-group">'+
							    '<label for="useridInput">User ID</label>'+
							    '<input type="text" class="form-control" id="useridInput" value="'+data.result.hub_user+'">'+
							'</div>'+
								'<div class="form-group">'+
							    '<label for="hubpwInput">HUB Password</label>'+
						    '<input type="text" class="form-control" id="hubpwInput" value="'+data.result.hub_pw+'">'+
							'</div>'+
							'<div class="form-group">'+
								    '<label for="hubupdateInput">수정일</label>'+
								    '<input type="text" class="form-control" id="hubupdateInput" disabled value="'+data.result.hub_udate+'" >'+
							'</div>'+
							'<div class="form-group">'+
								    '<label for="useridInput">생성일</label>'+
								    '<input type="text" class="form-control" id="useridInput" disabled value="'+data.result.hub_intidate+'" >'+
							'</div>';
				
				 
				 
				 
				$('#hubinfoModalBody').append(contents); 
				
				
				$('#hubinfoModal').modal('show')
				}else{
					
					//isComplet : 1
					// 데이터 이상 모달창으로 이상 여부 알려줌
					
				} 
				
				
			},
			
			error: function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); }
		});
			
    	
    });
    

    
    // 페이징 라이브러리 부분-------------------------------------------
    
    $('#pageList').on('click', 'ul > li', function(e){
    	//console.log($(this).attr('data-lp'));
    	var page = $(this).attr('data-lp');
    	var type=$('.btn-select').text(), keyword=$('#inputSearchWord').val();
    	type="",keyword=""
    	hubListCall(type, keyword, page);
     
    });
    
    
    
    
    function newDrowPage(totalCount, selectPage){
    	console.log(totalCount, selectPage);
    	$('#pageList').bootpag({
    		   total: totalCount,
    		   page: selectPage,
    		   maxVisible: 10
    		}).on('page', function(event, num){
    		   //$("#pagingContent").html("Page " + num); // or some ajax content loading...
    		});
    }
    
    
    
    function drawPage(Page, totalCount){
    	console.log("argments  : " + Page);
    	console.log("argments  : " + totalCount);
    	var countList = 10;
    	var countPage = 10;
    	var totalPage = parseInt(totalCount/ countList); 
    	//console.log(totalPage);
    	 if(totalCount % countList > 0){
    		//console.log(totalCount % countList);
    		totalPage++;	
    	}
    	console.log(totalPage); 
    	
    	 if(totalPage > Page ){
    		console.log(Page);   	
    		Page = totalPage;
    	} 
    	
    	
    	var pervStep = Page / 10 + 1;
    	var nextStep = pervStep + countPage - 1;
    	
    	pervStep = parseInt(pervStep);
    	nextStep = parseInt(nextStep);
    	
     	console.log("total : " + parseInt(totalPage));
    	console.log("page : "+parseInt(Page));
    	console.log("per : "+parseInt(pervStep));
    	console.log("next : "+parseInt(nextStep)); 
    	
    	 if(nextStep > totalPage){
			nextStep = totalPage;
    		
    	} 
    	
    	
    	var liList ="";
  
    	if (pervStep > 1 || Page > 1) {

    		 var liID = Page - 1;
    		 liList = '<li class="paginate_button previous" tabindex="0" id="dataTables_previous_'+ liID+'">'+
								'<a href="#">Previous</a>'+
				  		'</li>';

    	 }else{
    		 liList = '<li class="paginate_button previous disabled"  tabindex="0" id="dataTables-previous">'+
								'<a href="#">Previous</a>'+
						'</li>';
    	 }
    	    	
    	 
     	for (var iCount = pervStep; iCount <= nextStep; iCount++) { //
    	    if (iCount == Page) {
    	      
    	        console.log("<b>" + iCount + "</b>");
    	        liList += '<li class="paginate_button active"  tabindex="0">'+
								'<a href="#">'+iCount+'</a>'+
							'</li>';
    	        
    	    } else {
    	        console.log("<i> " + iCount + "</i> ");
    	        liList += '<li class="paginate_button "  tabindex="0">'+
								'<a href="#">'+iCount+'</a>'+
							'</li>';
    	    } 
    	  
    	} //end for 
     	
     	
    
    	console.log("page ::>> "+ Page);
    	console.log("totalPage ::>> "+ totalPage);
    	console.log("nextStep ::>> "+ nextStep);
    	
     	 if(Page < totalPage ){
    		 console.log("다음 page + = 1");
    		 var liID = Page + 1;
    		 liList += '<li class="paginate_button next"  tabindex="0" id="dataTables-next-"'+liID+'>'+
								'<a href="#">Next</a>'+
						'</li>';
    		 
     	 }else if(nextStep >= totalPage){
     		console.log("다음 page = disabled");
     		liList += '<li class="paginate_button next disabled"  tabindex="0" id="dataTables-next">'+
								'<a href="#">Next</a>'+
						'</li>';
    	 }
    	console.log(liList); 
    		
    	$('#pageList').empty();
    	 $('#pageList').append(liList);    	 
    	
    }
    
 // 페이징 라이브러리 부분-------------------------------------------
    
    </script>
    
    
</body>
</html>