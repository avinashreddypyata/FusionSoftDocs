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
        <title>FusionSoft Inc. | Add/Edit Profile</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #3 for user profile sample" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="http://localhost:875/LoginPage/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:875/LoginPage/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:875/LoginPage/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:875/LoginPage/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="http://localhost:875/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="http://localhost:875/LoginPage/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="http://localhost:875/LoginPage/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="http://localhost:875/LoginPage/assets/pages/css/profile-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="http://localhost:875/LoginPage/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="http://localhost:875/LoginPage/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="http://localhost:875/LoginPage/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
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
                            <!-- BEGIN PAGE HEAD-->
                            <div class="page-head">
                                <div class="container">
                                    <!-- BEGIN PAGE TITLE -->
                                    <div class="page-title">
                                        <h1>${profile.firstname} ${profile.lastname}
                                            <small>${profile.email}, ${profile.phone}</small>
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
                                            <a href="applicants">Applicants</a>
                                            <i class="fa fa-circle"></i>
                                        </li>
                                        <li>
                                            <a href="applicantViewInfo">Applicant</a>
                                            <i class="fa fa-circle"></i>
                                        </li>
                                        <li>
                                            <span>Add/Edit Applicant</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                        <div class="profile">
                                            <div class="tabbable-line tabbable-full-width">
                                                <ul class="nav nav-tabs">
                                                    <li>
                                                        <a href="applicantViewInfo?userid=${profile.userid}"> Overview </a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#tab_1_3" data-toggle="tab"> Account </a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <!--tab_1_2-->
                                                    <div class="tab-pane active" id="tab_1_3">
                                                        <div class="row profile-account">
                                                            <div class="col-md-3">
                                                                <ul class="ver-inline-menu tabbable margin-bottom-10">
                                                                    <li class="active">
                                                                        <a data-toggle="tab" href="#tab_1-1">
                                                                            <i class="fa fa-cog"></i> Personal info </a>
                                                                        <span class="after"> </span>
                                                                    </li>
                                                                    <li>
                                                                        <a data-toggle="tab" href="#tab_3-3">
                                                                            <i class="fa fa-lock"></i> Change Password </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <div class="tab-content">
                                                                    <div id="tab_1-1" class="tab-pane active">
                                                                        <form:form role="form" method="post" modelAttribute="profile" action="applicantSaveProfile">
                                                                        <form:hidden path="userid" />
                                                                        
<!--                                                                          <div class="form-group"> -->
<!--                                                                                 <label class="control-label">UserName</label> -->
<%--                                                                                 <form:input path="username" type="text" class="form-control" id="username" placeholder="UserName" /> --%>
<%-- 																				<form:errors path="username" class="control-label" />  --%>
<!--                                                                             </div> -->
<!--                                                                              <div class="form-group"> -->
<!--                                                                                 <label class="control-label">Password</label> -->
<%--                                                                                 <form:input path="password" type="password" class="form-control" id="password" placeholder="Password" /> --%>
<%-- 																				<form:errors path="password" class="control-label" />  --%>
<!--                                                                             </div> -->
                                                                            
                                                                            <div class="form-group">
                                                                                <label class="control-label">First Name</label>
                                                                                <form:input path="firstname" type="text" class="form-control" id="firstname" placeholder="First Name" />
																				<form:errors path="firstname" class="control-label" /> 
                                                                            </div>
                                                                             <div class="form-group">
                                                                                <label class="control-label">Last Name</label>
                                                                                <form:input path="lastname" type="text" class="form-control" id="lastname" placeholder="Last Name" />
																				<form:errors path="lastname" class="control-label" /> 
                                                                            </div>
                                                                           <div class="form-group">
                                                                                <label class="control-label">Address</label>
                                                                                <form:input path="address" type="text" class="form-control" id="address" placeholder="Address" />
																				<form:errors path="address" class="control-label" /> 
                                                                            </div>
                                                                            
                                                                             <div class="form-group">
                                                                                <label class="control-label">City</label>
                                                                                <form:input path="city" type="text" class="form-control" id="city" placeholder="City" />
																				<form:errors path="city" class="control-label" /> 
                                                                            </div>
                                                                             <div class="form-group">
                                                                                <label class="control-label">Zip</label>
                                                                                <form:input path="zip" type="text" class="form-control" id="zip" placeholder="Zip" />
																				<form:errors path="zip" class="control-label" /> 
                                                                            </div>
                                                                             <div class="form-group">
                                                                                <label class="control-label">Email</label>
                                                                                <form:input path="email" type="text" class="form-control" id="email" placeholder="Email" />
																				<form:errors path="email" class="control-label" /> 
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label">Phone</label>
                                                                                <form:input path="phone" type="text" class="form-control" id="phone" placeholder="Phone" />
																				<form:errors path="phone" class="control-label" /> 
                                                                            </div>
                                                                             <div class="form-group">
                                                                                <label class="control-label">Admin Notes</label>
                                                                                <form:input path="adminnotes" type="text" class="form-control" id="adminnotes" placeholder="Admin Notes" />
																				<form:errors path="adminnotes" class="control-label" /> 
                                                                            </div>
                                                                            <div class="margiv-top-10">
                                                                                <button type="submit" class="btn green"> Save Changes </button>
                                                                                <a href="applicantViewInfo?userid=${profile.userid}" class="btn default"> Cancel </a>
                                                                            </div>
                                                                        </form:form>
                                                                    </div>
                                                                    <div id="tab_2-2" class="tab-pane">
                                                                        <p> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
                                                                            nesciunt laborum eiusmod. </p>
                                                                        <form action="#" role="form">
                                                                            <div class="form-group">
                                                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                                    <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                                                                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" /> </div>
                                                                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                                                    <div>
                                                                                        <span class="btn default btn-file">
                                                                                            <span class="fileinput-new"> Select image </span>
                                                                                            <span class="fileinput-exists"> Change </span>
                                                                                            <input type="file" name="..."> </span>
                                                                                        <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clearfix margin-top-10">
                                                                                    <span class="label label-danger"> NOTE! </span>
                                                                                    <span> Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only </span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="margin-top-10">
                                                                                <a href="javascript:;" class="btn green"> Submit </a>
                                                                                <a href="javascript:;" class="btn default"> Cancel </a>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <div id="tab_3-3" class="tab-pane">
                                                                        <form action="#">
                                                                            <div class="form-group">
                                                                                <label class="control-label">Current Password</label>
                                                                                <input type="password" class="form-control" /> </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label">New Password</label>
                                                                                <input type="password" class="form-control" /> </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label">Re-type New Password</label>
                                                                                <input type="password" class="form-control" /> </div>
                                                                            <div class="margin-top-10">
                                                                                <a href="javascript:;" class="btn green"> Change Password </a>
                                                                                <a href="javascript:;" class="btn default"> Cancel </a>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <div id="tab_4-4" class="tab-pane">
                                                                        <form action="#">
                                                                            <table class="table table-bordered table-striped">
                                                                                <tr>
                                                                                    <td> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus.. </td>
                                                                                    <td>
                                                                                        <div class="mt-radio-inline">
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios1" value="option1" /> Yes
                                                                                                <span></span>
                                                                                            </label>
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios1" value="option2" checked/> No
                                                                                                <span></span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td> Enim eiusmod high life accusamus terry richardson ad squid wolf moon </td>
                                                                                    <td>
                                                                                        <div class="mt-radio-inline">
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios21" value="option1" /> Yes
                                                                                                <span></span>
                                                                                            </label>
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios21" value="option2" checked/> No
                                                                                                <span></span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td> Enim eiusmod high life accusamus terry richardson ad squid wolf moon </td>
                                                                                    <td>
                                                                                        <div class="mt-radio-inline">
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios31" value="option1" /> Yes
                                                                                                <span></span>
                                                                                            </label>
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios31" value="option2" checked/> No
                                                                                                <span></span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td> Enim eiusmod high life accusamus terry richardson ad squid wolf moon </td>
                                                                                    <td>
                                                                                        <div class="mt-radio-inline">
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios41" value="option1" /> Yes
                                                                                                <span></span>
                                                                                            </label>
                                                                                            <label class="mt-radio">
                                                                                                <input type="radio" name="optionsRadios41" value="option2" checked/> No
                                                                                                <span></span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!--end profile-settings-->
                                                                            <div class="margin-top-10">
                                                                                <a href="javascript:;" class="btn green"> Save Changes </a>
                                                                                <a href="javascript:;" class="btn default"> Cancel </a>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!--end col-md-9-->
                                                        </div>
                                                    </div>
                                                    <!--end tab-pane-->
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
<script src="http://localhost:875/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:875/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:875/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="http://localhost:875/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="http://localhost:875/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="http://localhost:875/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="http://localhost:875/LoginPage/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="http://localhost:875/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>