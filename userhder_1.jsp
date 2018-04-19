<%-- 
    Document   : userhder
    Created on : 18 Mar, 2016, 11:01:34 AM
    Author     : Manu Jose
--%>
<%-- 
    Document   : hder.jsp
    Created on : 18 Mar, 2016, 9:21:05 AM
    Author     : Manu Jose
--%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="../NiceAdmin/NiceAdmin/img/favicon.png">

    <title>Talk2MLA</title>

    <!-- Bootstrap CSS -->    
    <link href="../NiceAdmin/NiceAdmin/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="../NiceAdmin/NiceAdmin/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="../NiceAdmin/NiceAdmin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="../NiceAdmin/NiceAdmin/css/font-awesome.min.css" rel="stylesheet" />
    <!-- date picker -->
    
    <!-- color picker -->
    
    <!-- Custom styles -->
    <link href="../NiceAdmin/NiceAdmin/css/style.css" rel="stylesheet">
    <link href="../NiceAdmin/NiceAdmin/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

  </head>
  <body>

  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="index.html" class="logo">Talk2 <span class="lite">MLA</span></a>
            <!--logo end-->

            
            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                   
                    
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                           
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="../user/userhome.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Home</span>
                      </a>
                  </li>
				  
                  <li class="sub-menu">
                      <a href="../user/view mla.jsp" class="">
                          <i class="icon_desktop"></i>
                          <span>View MLA</span>
                          
                      </a>
                     
                  </li>
                   <li class="sub-menu">
                       <a href="../user/view funds.jsp" class="">
                          <i class="icon_desktop"></i>
                          <span>View Funds</span>
                          
                      </a>
                     
                  </li>
                 
                  
                  
                   <li class="sub-menu">
                       <a href="../user/view events.jsp" class="">
                          <i class="icon_table"></i>
                          <span>View Events</span>
                          
                      </a>
                      
                  </li>
                   <li class="sub-menu">
                       <a href="../user/request appoinment.jsp" class="">
                          <i class="icon_table"></i>
                          <span>Appointments</span>
                        </a>
                      
                  </li>
                   <li class="sub-menu">
                       <a href="../user/complaints.jsp" class="">
                          <i class="icon_table"></i>
                          <span>Messages</span>
                        </a>
                      
                  </li> 
               <li class="sub-menu"><jsp:useBean class="com.banking.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
 <% int i;
 i=0;
     int j;
     j=0;
      int c;
      c=0;
         String id2=session.getAttribute("id").toString();
        String id3=session.getAttribute("name").toString();
         String a="select cid from complaint where status=1 and fr1='"+id2+"'";
            ResultSet rs11=con.getData(a); 
           while(rs11.next())
               
           {
               i=i+1;
           
           }
            
           String b="select id from appointment where status=1 and frm='"+id3+"'";
            ResultSet rs12=con.getData(b); 
           while(rs12.next())
               
           {
               j=j+1;
           
           }
       
           c=i+j;
   
    %>
                       <a href="../user/notification.jsp" class="">
                          <i class="icon_table"></i> 
                          <span>Notifications&nbsp;&nbsp;<span class="label label-primary pull-right"><%=c%></span></span>
                        </a>
                      
                  </li>
                             
                  <li class="sub-menu">
                      <a href="../design2/page.jsp" class="">
                          <i class="icon_table"></i>
                          <span>Logout</span>
                          
                      </a>
                      
                  </li>
                  
                 
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

      <!--main content start-->
      
      <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                      
                      
                      
                      
                      
                  </div>
              </div>
              <!-- Basic Forms & Horizontal Forms-->
              
              <div class="row">
                    <div class="col-lg-12">
                      <section class="panel">
                          
                          <div class="panel-body">