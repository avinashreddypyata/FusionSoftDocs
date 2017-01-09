<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>FusionSoft | Inc</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #3 for user profile sample" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
       <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="http://localhost:80/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="http://localhost:80/LoginPage/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="http://localhost:80/LoginPage/assets/pages/css/profile-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="http://localhost:80/LoginPage/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:80/LoginPage/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="http://localhost:80/LoginPage/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
       
     
    <link rel="stylesheet" type="text/css" href="http://localhost:80/LoginPage/assets/visaExperienceformjsfiles/theme/default/css/default.css"
    id="theme" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    
    <!-- END HEAD -->

    <body class="page-container-bg-solid">
        <div class="page-wrapper">
            <div class="page-wrapper-row">
                <div class="page-wrapper-top">
                    <!-- BEGIN HEADER -->
                    <div class="page-header">
                        <!-- BEGIN HEADER TOP -->
                        <div class="page-header-top">
                            <div class="container">
                                <!-- BEGIN LOGO -->
                                <div class="page-logo">
                                    <a href="index.html">
                                        <img src="http://localhost:80/LoginPage/assets/layouts/layout3/img/fs-logo.png" alt="logo" class="logo-default">
                                    </a>
                                </div>
                                <!-- END LOGO -->
                                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                                <a href="javascript:;" class="menu-toggler"></a>
                                <!-- END RESPONSIVE MENU TOGGLER -->
                                <!-- BEGIN TOP NAVIGATION MENU -->
                                <div class="top-menu">
                                    <ul class="nav navbar-nav pull-right">
                                        <!-- BEGIN NOTIFICATION DROPDOWN -->
                                        <!-- DOC: Apply "dropdown-hoverable" class after "dropdown" and remove data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to enable hover dropdown mode -->
                                        <!-- DOC: Remove "dropdown-hoverable" and add data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to the below A element with dropdown-toggle class -->
                                        <!-- BEGIN USER LOGIN DROPDOWN -->
                                        <li class="dropdown dropdown-user dropdown-dark">
                                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                                <img alt="" class="img-circle" src="http://localhost:80/LoginPage/assets/layouts/layout3/img/user.jpg">
        
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-default">
                                             
                                                <li>
                                                    <a href="logout">
                                                        <i class="icon-key"></i> Log Out </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <!-- END USER LOGIN DROPDOWN -->
                                    </ul>
                                </div>
                                <!-- END TOP NAVIGATION MENU -->
                            </div>
                        </div>
                        <!-- END HEADER TOP -->
                        <!-- BEGIN HEADER MENU -->
                        <div class="page-header-menu">
                            <div class="container">
                                <!-- BEGIN MEGA MENU -->
                                <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
                                <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
                                <div class="hor-menu  ">
                                      <ul class="nav navbar-nav">
                                         <li>
                                            <a href="home"> Home
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="viewapplicant">Application
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li >
                                        <a href="viewcontact">Contact
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li  >
                                         <a href="viewpassport">Passport
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li  >
                                         <a href="traveldetails">Travel 
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li >
                                       <a href="educationdetails">Education
                                               
                                            </a>
                                        </li >
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active">
                                      <a href="experiencedetails">Experience
                                                
                                            </a>
                                        </li>
                                        <li >
                                      <a href="certificateDetails">Certification</a>
                                        </li>
                                        <li>
                                      <a href="applicantdocument">Documents
                                          
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </div>
                                <!-- END MEGA MENU -->
                            </div>
                        </div>
                        <!-- END HEADER MENU -->
                    </div>
                    <!-- END HEADER -->
                </div>
            </div>
            <div class="page-wrapper-row full-height">
                <div class="page-wrapper-middle">
                    <!-- BEGIN CONTAINER -->
                    <div class="page-container">
                        <!-- BEGIN CONTENT -->
                        <div class="page-content-wrapper">
                            <!-- BEGIN CONTENT BODY -->
                            <!-- BEGIN PAGE HEAD-->
                         <div class="page-head">
                                <div class="container">
                                    <!-- BEGIN PAGE TITLE -->
                                    <div class="page-title">
                                        <h1>Experience
                                            <small>Experience Information</small>
                                        </h1>
                                    </div>
                                    <!-- END PAGE TITLE -->
                                </div>
                            </div>
                            <!-- END PAGE HEAD-->
                            <!-- BEGIN PAGE CONTENT BODY -->
                            <div class="page-content">
                                <div class="container">
                                 <!-- BEGIN PAGE BREADCRUMBS -->
                                    <ul class="page-breadcrumb breadcrumb">
                                        <li>
                                            <a href="home">Home</a>
                                            <i class="fa fa-circle"></i>
                                        </li>
                                        <li>
                                            <span>Experience Information</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                <div class="row">
                                            <div class="col-md-12">
                                             
                                        <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Experience Details</span>
                                    </div>
                                   
                                </div>
     <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                <tr>
                                                                    <th>
                                                                        Employer
                                                                    </th>
                                                                    <th> City </th>
                                                                    <th> State</th>
                                                                    <th> Country</th>
                                                                    <th> Start Date</th>
                                                                    <th> End Date</th>
                                                                    <th>Designation</th>
                                                                    <th>Total Months Worked</th>
                                                                   
                                                                    <th>Action</th>
                                                                    <th>Action</th>
                                                                   
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                               <c:forEach items="${experiencedetails}" var="experiencedetail">
                                                            
                                                                <tr class="odd gradeX">
                                                                    <td><c:out value="${experiencedetail.employer}" /></td>
                                                                    <td>
                                                                        <c:out value="${experiencedetail.city}" /> 
                                                                    </td>
                                                                    <td>
                                                                        <c:out value="${experiencedetail.state}" /> 
                                                                    </td>
                                                                    <td>
                                                                       <c:out value="${experiencedetail.country}" /> 
                                                                    </td>
                                                                    <td> <c:out value="${experiencedetail.joineddate}" /> </td>
                                                                    <td> <c:out value="${experiencedetail.enddate}" /> </td>
                                                                    <td> <c:out value="${experiencedetail.designation}" /> </td>
                                                                    <td> <c:out value="${experiencedetail.totalmonthsworked}" /> </td>
                                                                    
                                                                   <td>

                                                              <form action="editexperience" method="POST">
                                                              <input type="hidden" value="${experiencedetail.expid}" name="expid">
                                                                <button type="submit" class="btn green btn-outline">Edit</button>
                                                                </form>
                                                                 
                                                                
                                                                    </td>
                                                                    <td>
<form action="deleteexperience" method="POST">
                                                              <input type="hidden" value="${experiencedetail.expid}" name="expid">
                                                                <button type="submit" class="btn red btn-outline">Delete</button>
                                                                </form>
                                                                </td>
                                                                </tr>
															</c:forEach>
                                                            </tbody>
                                    </table>
                                      <h3 class="form-section">Experience Documents Uploaded</h3>
                                     <div class="table-scrollable">
                                                                    <table class="table table-striped table-bordered table-advance table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th> Document </th>
                                                                            <th> Description </th>
                                                                            <th> Actions </th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${documents}" var="document">
                                                                        <tr class="odd gradeX">
                                                                            <td> <a href='downloadDoc?docid=<c:out value="${document.docid}" />' ><c:out value="${document.doctitle}" /></a> </td>
                                                                            <td>
                                                                                <c:out value="${document.keywords}" />
                                                                            </td>
                                                                            <td>
                                                                                <a href='deleteDoc?docid=<c:out value="${document.docid}" />' ><i class="icon-docs"></i>Delete</a>
                                                                            </td>
                                                                        </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                    </table>
                                                                </div>
                                    <div class="btn-group btn-group btn-group-justified">
                                                                  <a href="editorcreatenewexperience" class="btn green"><i class="fa fa-plus"></i> Add More Experience Details </a>
                                                                    <a href="logout" class="btn purple"> Save Progress And Return Later </a>
                                                                    <a href="certificateDetails" class="btn green"> Continue To Next Section</a>
                                                                </div>
                                </div>
                            </div>
                                                </div>
                                                </div>
                               

                                                                


                                </div>
                            </div>
                            <!-- END PAGE CONTENT BODY -->
                            <!-- END CONTENT BODY -->
                        </div>
                        <!-- END CONTENT -->
                    </div>
                    <!-- END CONTAINER -->
                </div>
            </div>
            <div class="page-wrapper-row">
                <div class="page-wrapper-bottom">
                    <!-- BEGIN FOOTER -->
                    <!-- BEGIN PRE-FOOTER -->
                <div class="page-prefooter">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                                    <h2>About</h2>
                                    <p> Fusionsoft is a minority owned business, incorporated in
									2005 and headquartered in Atlanta, Georgia, Fusionsoft delivers
									solutions for technology and engineering services, staffing
									services and solutions to public and private sector clients.
									Fusionsoft offers its clients professional consulting services
									and project management services </p>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                                    <h2>Contacts</h2>
                                    <address class="margin-bottom-40"> Phone: 770.881.8118
                                        <br> Email:
                                        <a href="mailto:admin@fusionsoftinc.com">admin@fusionsoftinc.com</a>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PRE-FOOTER -->
                    <!-- BEGIN INNER FOOTER -->
                    <div class="scroll-to-top">
                        <i class="icon-arrow-up"></i>
                    </div>
                    <!-- END INNER FOOTER -->
                    <!-- END FOOTER -->
                </div>
            </div>
        </div>

      
<script src="http://localhost:80/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:80/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:80/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 

        <!-- BEGIN CORE PLUGINS -->
            <script src="http://localhost:80/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
            <!-- END CORE PLUGINS -->
            <!-- BEGIN PAGE LEVEL PLUGINS -->
            <script src="http://localhost:80/LoginPage/assets/global/scripts/datatable.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
            <script src="http://localhost:80/LoginPage/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL PLUGINS -->
            <!-- BEGIN THEME GLOBAL SCRIPTS -->
            <script src="http://localhost:80/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
            <!-- END THEME GLOBAL SCRIPTS -->
            <!-- BEGIN PAGE LEVEL SCRIPTS -->
            <script src="http://localhost:80/LoginPage/assets/pages/scripts/table-datatables-rowreorder.min.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL SCRIPTS -->
            <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="http://localhost:80/LoginPage/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="http://localhost:80/LoginPage/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="http://localhost:80/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="http://localhost:80/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>