<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  


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
        <meta content="Preview page of Metronic Admin Theme #3 for user profile sample" name="description" />
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
        <link href="http://localhost:854/LoginPage/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="http://localhost:854/LoginPage/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="http://localhost:854/LoginPage/assets/pages/css/profile-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="http://localhost:854/LoginPage/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:854/LoginPage/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="http://localhost:854/LoginPage/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
        <script src="http://localhost:854/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="http://localhost:854/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="http://localhost:854/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="http://localhost:854/LoginPage/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="http://localhost:854/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="http://localhost:854/LoginPage/assets/applicationformjsfiles/datepicker.js"></script>
     
    <link rel="stylesheet" type="text/css" href="http://localhost:854/LoginPage/assets/applicationformjsfiles/theme/default/css/default.css"
    id="theme" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>

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
                                        <h1>Application
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
                                            <span>Application</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                        <div class="profile">
                                            <div class="tabbable-line tabbable-full-width">
                                               <ul class="nav nav-tabs">
                                               <li>
                                                        <a href = "applicantViewInfo" >Overview</a>
                                                    </li>
                                               <li>
                                                        <a href = "editorcreatenewapplication" >Application</a>
                                               </li>
                                                    <li >
                                                        <a href = "editorcreatenewcontact"> Contact </a>
                                                    </li>
                                                     <li >
                                                        <a href = "editorcreatenewpassport">Passport</a>
                                                    </li>
                                                    <li data-toggle="tab" class="active">
                                                        <a href = "traveldetails"> Travel </a>
                                                    </li>
                                                    <li >
                                                        <a href = "applicantdocument"> Education </a>
                                                    </li>
                                                    <li >
                                                        <a href = "applicantdocument"> Certifications </a>
                                                    </li>
                                                    <li >
                                                        <a href = "applicantdocument"> Documents </a>
                                                    </li>
                                                    
                                                </ul>
                                 <div class="tab-content">
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
                                                                        Port Of Entry
                                                                    </th>
                                                                    <th> Entry Date To US </th>
                                                                    <th> Exit Date From Us</th>
                                                                    <th> Status At The Time Of Entry</th>
                                                                    <th> Status Valid From </th>
                                                                    <th> Status Valid Till </th>
                                                                    <th>Total Months Outside Us</th>
                                                                    <th>Actions</th>
                                                                </tr>
                                                            </thead>
                                        <tbody>
                                                               <c:forEach items="${traveldetails}" var="traveldetail">
                                                            
                                                                <tr class="odd gradeX">
                                                                    <td><c:out value="${traveldetail.portofentry}" /></td>
                                                                    <td>
                                                                        <c:out value="${traveldetail.entrydatetous}" /> 
                                                                    </td>
                                                                    <td>
                                                                        <c:out value="${traveldetail.exitdatefromus}" /> 
                                                                    </td>
                                                                    <td>
                                                                       <c:out value="${traveldetail.statusattimeofentry}" /> 
                                                                    </td>
                                                                    <td> <c:out value="${traveldetail.statusvalidfrom}" /> </td>
                                                                    <td> <c:out value="${traveldetail.statusvalidtill}" /> </td>
                                                                    <td> <c:out value="${traveldetail.totalmonthsoutsideus}" /> </td>
                                                                    <td>
                                                                        <div class="btn-group">
                                                                            <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Actions
                                                                                <i class="fa fa-angle-down"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu pull-left" role="menu">
                                                                                <li>
                                                                                    <a href="applicantEditexperience?expid=${experience.expid}">
                                                                                        <i class="icon-docs"></i> Edit </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="applicantDeleteexperience?expid=${experience.expid}">
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

                    <!-- END CONTAINER -->
            <jsp:include page="footer.jsp"></jsp:include>
         <!--[if lt IE 9]>
<script src="http://localhost:854/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:854/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:854/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
         <!-- BEGIN CORE PLUGINS -->
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
            <!-- END PAGE LEVEL PLUGINS -->
            <!-- BEGIN THEME GLOBAL SCRIPTS -->
            <script src="http://localhost:854/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
            <!-- END THEME GLOBAL SCRIPTS -->
            <!-- BEGIN PAGE LEVEL SCRIPTS -->
            <script src="http://localhost:854/LoginPage/assets/pages/scripts/table-datatables-rowreorder.min.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL SCRIPTS -->
            <!-- BEGIN THEME LAYOUT SCRIPTS -->
            <script src="http://localhost:854/LoginPage/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
            <script src="http://localhost:854/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
    </body>

</html>