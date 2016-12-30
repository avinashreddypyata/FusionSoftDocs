<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
        <link href="/LoginPage/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
          <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="/LoginPage/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/LoginPage/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="/LoginPage/assets/pages/css/profile-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="/LoginPage/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/LoginPage/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
        <script src="/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="/LoginPage/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="/LoginPage/assets/visatravelformjsfiles/datepicker.js"></script>
     
    <link rel="stylesheet" type="text/css" href="/LoginPage/assets/visatravelformjsfiles/theme/default/css/default.css"
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
                                        <img src="/LoginPage/assets/layouts/layout3/img/fs-logo.png" alt="logo" class="logo-default">
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
                                               
                                                <span class="username username-hide-mobile">Nick</span>
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
                                            <a href="editorcreatenewapplication">Application
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                        <a href="editorcreatenewcontact">Contact
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li >
                                         <a href="editorcreatenewpassport">Passport
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                         <a href="traveldetails">Travel 
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li >
                                       <a href="educationdetails">Education
                                               
                                            </a>
                                        </li>
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active">
                                      <a href="experiencedetails">Experience
                                                
                                            </a>
                                        </li>
                                        <li >
                                      <a href="certificateDetails">Certification</a>
                                        </li>
                                        <li>
                                      <a href="addnewdocument">Documents
                                          
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
                         
                            <!-- END PAGE HEAD-->
                            <!-- BEGIN PAGE CONTENT BODY -->
                            <div class="page-content">
                                <div class="container">
                                <div class="row">
                                            <div class="col-md-12">
                                               <div class="btn-group">
                                                                        <a id="sample_editable_1_new" class="btn sbold green" href="editorcreatenewtravel"> Add More Travel History
                                                                            <i class="fa fa-plus"></i>
                                                                        </a>
                                                                        
                                                                    </div>
                                  <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                <i class="fa fa-briefcase"></i>Experience Documents</th>
                                                                                            <th class="hidden-xs">
                                                                                                <i class="fa fa-question"></i> Description </th>
                                                                                            <th>
                                                                                                <i class="fa fa-bookmark"></i> Status </th>
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                      <tbody>
                                                                                        <c:forEach items="${documents.experiencedocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td class="hidden-xs"> ${document.keywords} </td>
                                                                                            <td></td>
                                                                                            <td>
                                                                                                <div class="btn-group">
                                                                            <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Actions
                                                                                <i class="fa fa-angle-down"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu pull-left" role="menu">
                                                                                <li>
                                                                                    <a href="downloadDoc?docid=${document.docid}">
                                                                                        <i class="icon-docs"></i> Download </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="deleteDoc?docid=${document.docid}">
                                                                                        <i class="icon-tag"></i> Delete </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                     <form action ="educationdetails">
<button type="submit" data-loading-text="Loading..." class="demo-loading-btn btn btn-primary"> Loading state </button>

  </form>
                                </div>
                            </div>
                             <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                <i class="fa fa-briefcase"></i>Education Documents</th>
                                                                                            <th class="hidden-xs">
                                                                                                <i class="fa fa-question"></i> Description </th>
                                                                                            <th>
                                                                                                <i class="fa fa-bookmark"></i> Status </th>
                                                                                            <th> Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                        <tbody>
                                                                                    <c:forEach items="${documents.educationaldocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td class="hidden-xs"> ${document.keywords} </td>
                                                                                            <td></td>
                                                                                            <td>
                                                                                                <div class="btn-group">
                                                                            <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Actions
                                                                                <i class="fa fa-angle-down"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu pull-left" role="menu">
                                                                                <li>
                                                                                    <a href="downloadDoc?docid=${document.docid}">
                                                                                        <i class="icon-docs"></i> Download </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="deleteDoc?docid=${document.docid}">
                                                                                        <i class="icon-tag"></i> Delete </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                     <form action ="educationdetails">
<button type="submit" data-loading-text="Loading..." class="demo-loading-btn btn btn-primary"> Loading state </button>

  </form>
                                </div>
                            </div>
                             <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
 <thead>
                                                                                    
                                                                                        <tr>
                                                                                            <th>
                                                                                                <i class="fa fa-briefcase"></i>Miscellaneous Documents</th>
                                                                                            <th class="hidden-xs">
                                                                                                <i class="fa fa-question"></i> Description </th>
                                                                                            <th>
                                                                                                <i class="fa fa-bookmark"></i> Status </th>
                                                                                            <th> </th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                          <c:forEach items="${documents.miscellaneousdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td class="hidden-xs"> ${document.keywords} </td>
                                                                                            <td></td>
                                                                                            <td>
                                                                                               <div class="btn-group">
                                                                            <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Actions
                                                                                <i class="fa fa-angle-down"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu pull-left" role="menu">
                                                                                <li>
                                                                                    <a href="downloadDoc?docid=${document.docid}">
                                                                                        <i class="icon-docs"></i> Download </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="deleteDoc?docid=${document.docid}">
                                                                                        <i class="icon-tag"></i> Delete </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                      
                                                                                    </tbody>
                                                                                </table>
                                     <form action ="educationdetails">
<button type="submit" data-loading-text="Loading..." class="demo-loading-btn btn btn-primary"> Loading state </button>

  </form>
                                </div>
                            </div>
                            <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
 <thead>
                                                                                    
                                                                                        <tr>
                                                                                            <th>
                                                                                                <i class="fa fa-briefcase"></i>Miscellaneous Documents</th>
                                                                                            <th class="hidden-xs">
                                                                                                <i class="fa fa-question"></i> Description </th>
                                                                                            <th>
                                                                                                <i class="fa fa-bookmark"></i> Status </th>
                                                                                            <th> </th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                          <c:forEach items="${documents.miscellaneousdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td class="hidden-xs"> ${document.keywords} </td>
                                                                                            <td></td>
                                                                                            <td>
                                                                                               <div class="btn-group">
                                                                            <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Actions
                                                                                <i class="fa fa-angle-down"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu pull-left" role="menu">
                                                                                <li>
                                                                                    <a href="downloadDoc?docid=${document.docid}">
                                                                                        <i class="icon-docs"></i> Download </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="deleteDoc?docid=${document.docid}">
                                                                                        <i class="icon-tag"></i> Delete </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                      
                                                                                    </tbody>
                                                                                </table>
                                     <form action ="educationdetails">
<button type="submit" data-loading-text="Loading..." class="demo-loading-btn btn btn-primary"> Loading state </button>

  </form>
                                </div>
                            </div>
                            <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
 <thead>
                                                                                    
                                                                                        <tr>
                                                                                            <th>
                                                                                                <i class="fa fa-briefcase"></i>Other Documents</th>
                                                                                            <th class="hidden-xs">
                                                                                                <i class="fa fa-question"></i> Description </th>
                                                                                            <th>
                                                                                                <i class="fa fa-bookmark"></i> Status </th>
                                                                                            <th> </th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                          <c:forEach items="${documents.otherdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td class="hidden-xs"> ${document.keywords} </td>
                                                                                            <td></td>
                                                                                            <td>
                                                                                               <div class="btn-group">
                                                                            <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Actions
                                                                                <i class="fa fa-angle-down"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu pull-left" role="menu">
                                                                                <li>
                                                                                    <a href="downloadDoc?docid=${document.docid}">
                                                                                        <i class="icon-docs"></i> Download </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="deleteDoc?docid=${document.docid}">
                                                                                        <i class="icon-tag"></i> Delete </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                      
                                                                                    </tbody>
                                                                                </table>
                                     <form action ="educationdetails">
<button type="submit" data-loading-text="Loading..." class="demo-loading-btn btn btn-primary"> Loading state </button>

  </form>
                                </div>
                            </div>
                                                </div>
                                                </div>
                               
<div class="btn-group btn-group btn-group-justified">
                                                                 
                                                                    <a href="javascript:;" class="btn blue"> Home </a>
                                                                    <a href="javascript:;" class="btn green"> Save Changes And Return </a>
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
									solutions for technology & engineering services, staffing
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
        <!--[if lt IE 9]>
<script src="/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
          <!-- BEGIN CORE PLUGINS -->
            <script src="/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
            <!-- END CORE PLUGINS -->
            <!-- BEGIN PAGE LEVEL PLUGINS -->
            <script src="/LoginPage/assets/global/scripts/datatable.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL PLUGINS -->
            <!-- BEGIN THEME GLOBAL SCRIPTS -->
            <script src="/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
            <!-- END THEME GLOBAL SCRIPTS -->
            <!-- BEGIN PAGE LEVEL SCRIPTS -->
            <script src="/LoginPage/assets/pages/scripts/table-datatables-rowreorder.min.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL SCRIPTS -->
            <!-- BEGIN THEME LAYOUT SCRIPTS -->
            <script src="/LoginPage/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
            <script src="/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        
    </body>

</html>