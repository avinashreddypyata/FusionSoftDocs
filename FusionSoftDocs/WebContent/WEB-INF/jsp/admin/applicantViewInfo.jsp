<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>FusionSoft Inc. | View experience</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #3 for user experience sample" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="http://localhost:854/LoginPage/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="http://localhost:854/LoginPage/assets/pages/css/experience-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="http://localhost:854/LoginPage/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="http://localhost:854/LoginPage/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">
        <div class="page-wrapper">
        <jsp:include page="header.jsp"></jsp:include>
            <div class="page-wrapper-row full-height">
                <div class="page-wrapper-middle">
                    <!-- BEGIN CONTAINER -->
                    <div class="page-container">
                        <!-- BEGIN CONTENT -->
                       
                        <div class="page-content-wrapper">
                            <!-- BEGIN CONTENT BODY -->
                              <div class="page-head">
                                <div class="container">
                                    <!-- BEGIN PAGE TITLE -->
                                    <div class="page-title">
                                        <h1>Document
                                        </h1>
                                    </div>
                                    <!-- END PAGE TITLE -->
                                </div>
                            </div>
                            <!-- BEGIN PAGE HEAD-->
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
                                            <span>Documents</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                        <div class="profile">
                                            <div class="tabbable-line tabbable-full-width">
                                               <ul class="nav nav-tabs">
                                               <li data-toggle="tab" class="active">
                                                        <a href = "applicantViewInfo" >OverView</a>
                                                    </li>
                                               <li>
                                                        <a href = "applicantEditProfile" >AccountInfo</a>
                                                    </li>
                                                    <li>
                                                        <a href = "applicantqualification"> Qualifications </a>
                                                    </li>
                                                     <li >
                                                        <a href = "applicantexperience">Experience</a>
                                                    </li>
                                                    <li >
                                                        <a href = "applicantimmigration">Immigration</a>
                                                    </li>
                                                    <li >
                                                        <a href = "applicantdocument">Documents</a>
                                                    </li>
                                                </ul>
                                 <div class="tab-content">
                                                    <div class="tab-pane active" id="tab_1_1">
                                                      <div class="mt-content-body">
                                            <div class="row">
                                                <div class="col-md-6 col-sm-6">
                                                    <div class="portlet light ">
                                                        <div class="portlet-title">
                                                            <div class="caption caption-md">
                                                                <i class="icon-bar-chart font-dark hide"></i>
                                                                <span class="caption-subject font-green-steel bold uppercase">Personal Info</span>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                            <div class="scroller" style="height: 338px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                                                <div class="general-item-list">
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Full Name
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${profile.firstname} ${profile.lastname}</div>
                                                                    </div>
                                                                   <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Email
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${profile.email} </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Address
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${profile.address} ${profile.city} ${profile.state} ${profile.country} ${profile.zip}</div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                               Admin Notes
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${profile.adminnotes} </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                              User Notes
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${profile.usernotes} </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                               <div class="col-md-6 col-sm-6">
                                                    <div class="portlet light ">
                                                        <div class="portlet-title">
                                                            <div class="caption caption-md">
                                                                <i class="icon-bar-chart font-dark hide"></i>
                                                                <span class="caption-subject font-green-steel bold uppercase">Immigration Info</span>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                            <div class="scroller" style="height: 338px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                                                <div class="general-item-list">
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Passport Number
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.passportnumber} </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Place Of Issuance
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.placeofissuance} </div>
                                                                    </div>
                                                                   <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Passport Issued Date
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.issueddate} </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Passport Expiry Date
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.expirydate} </div>
                                                                    </div>
                                                                   <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Current Status
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.currentstatus} </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Status Expiry Date
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body">  ${immigration.statusexpiry}  </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                I94 Number
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.i94number}  </div>
                                                                    </div>
                                                                    <div class="item">
                                                                        <div class="item-head">
                                                                            <div class="item-details">
                                                                                Last Entry Date
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-body"> ${immigration.lastentrydate} </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-md-6 col-sm-6">
                                                    <div class="portlet light ">
                                                        <div class="portlet-title">
                                                            <div class="caption caption-md">
                                                                <i class="icon-bar-chart font-dark hide"></i>
                                                                <span class="caption-subject font-green-steel bold uppercase">Experience History</span>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                            <div class="table-scrollable table-scrollable-borderless">
                                                                <table class="table table-hover table-light">
                                                                    <thead>
                                                                        <tr class="uppercase">
                                                                            <th> Employer/Organisation </th>
                                                                            <th> JoinDate </th>
                                                                            <th> End Date </th>
                                                                            <th> Role </th>
                                                                        </tr>
                                                                    </thead>
                                                                    <c:forEach items="${experiences}" var="experience">
                                                                    <tr>
                                                                        <td>
                                                                            <c:out value="${experience.employer}" />
                                                                        </td>
                                                                        <td> <c:out value="${experience.joineddate}" /> </td>
                                                                        <td> <c:out value="${experience.enddate}" />  </td>
                                                                        <td>  <c:out value="${experience.role}" /> </td>
                                                                        
                                                                    </tr>
                                                                    </c:forEach>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                 <div class="col-md-6 col-sm-6">
                                                    <div class="portlet light ">
                                                        <div class="portlet-title">
                                                            <div class="caption caption-md">
                                                                <i class="icon-bar-chart font-dark hide"></i>
                                                                <span class="caption-subject font-green-steel bold uppercase">Education History</span>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                            <div class="table-scrollable table-scrollable-borderless">
                                                                <table class="table table-hover table-light">
                                                                    <thead>
                                                                        <tr class="uppercase">
                                                                            <th> Course </th>
                                                                            <th>Education </th>
                                                                             <th> GPA </th>
                                                                    <th> Start Date </th>
                                                                    <th> End Date </th>
                                                                    <th> University </th>
                                                                    <th> Location </th>
                                                                        </tr>
                                                                    </thead>
                                                                    <c:forEach items="${educationalqualifications}" var="educationalqualification">
                                                                    <tr>
                                                                       <td><c:out value="${educationalqualification.course}"/> </td>
                                                                    <td>
                                                                        <c:out value="${educationalqualification.levelofeducation}"/> 
                                                                    </td>
                                                                    <td>
                                                                       <c:out value="${educationalqualification.startdate}" /> 
                                                                    </td>
                                                                     <td>
                                                                       <c:out value="${educationalqualification.graduationdate}" /> 
                                                                    </td>
                                                                    <td> <c:out value="${educationalqualification.graduationdate}" /> </td>
                                                                    <td> <c:out value="${educationalqualification.university}" /> </td>
                                                                    <td> <c:out value="${educationalqualification.location}" /> </td>
                                                                    </tr>
                                                                    </c:forEach>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                       
                                        </div>
                                                    </div>
                                                    <!--tab_1_2-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END PAGE CONTENT INNER -->
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
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
         <!--[if lt IE 9]>
<script src="http://localhost:854/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:854/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:854/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
           <script src="http://localhost:854/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
            <!-- END CORE PLUGINS -->
            <!-- BEGIN PAGE LEVEL PLUGINS -->
            <script src="http://localhost:854/LoginPage/assets/global/scripts/datatable.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="http://localhost:854/LoginPage/assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL PLUGINS -->
            <!-- BEGIN THEME GLOBAL SCRIPTS -->
            <script src="http://localhost:854/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
            <!-- END THEME GLOBAL SCRIPTS -->
            <!-- BEGIN PAGE LEVEL SCRIPTS -->
            <script src="http://localhost:854/LoginPage/assets/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL SCRIPTS -->
            <!-- BEGIN THEME LAYOUT SCRIPTS -->
            <script src="http://localhost:854/LoginPage/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>