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
        <title>FusionSoft | Inc</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #3 for user profile sample" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
         <link href="/FSDocs/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/clockface/css/clockface.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="/FSDocs/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/FSDocs/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="/FSDocs/assets/pages/css/profile-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="/FSDocs/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/FSDocs/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/FSDocs/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
      
        
        <!-- END THEME LAYOUT SCRIPTS -->

     
    <link rel="stylesheet" type="text/css" href="/FSDocs/assets/applicationformjsfiles/theme/default/css/default.css"
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
                                        <img src="/FSDocs/assets/layouts/layout3/img/fs-logo.png" alt="logo" class="logo-default">
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
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active ">
                                            <a>Application
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li >
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
                                        <li>
                                       <a href="educationdetails">Education
                                               
                                            </a>
                                        </li>
                                        <li>
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
                         
                            <!-- END PAGE HEAD-->
                            <!-- BEGIN PAGE CONTENT BODY -->
                            <div class="page-content">
                                <div class="container">
                                 <form:form class="fb-toplabel fb-100-item-column fb-large selected-object" action="saveorupdateapplication"
id="docContainer" style="width: 90%; max-width: 800px;" enctype="multipart/form-data"
method="POST" novalidate="novalidate" data-form="preview" data-percentage="90" modelAttribute="applicant">
<form:hidden path="userid" value="${applicant.userid}"/>
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="/FSDocs/assets/applicationformjsfiles/common/images/image_default.png"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1">
        <div class="fb-header fb-item-alignment-center">
          <h2 style="display: inline;">
            Applicant Details
          </h2>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item2">
        <div class="fb-grouplabel">
          <label id="item2_label_0" style="color: rgb(10, 10, 10); display: inline;">Application Type</label>
        </div>
        <div class="fb-dropdown">
          <form:select name="applicationtype" id="item2_select_1" required="required" data-hint="" path="applicationtype">
            <form:option id="item2_1_option" value="New">
              New
            </form:option>
            <form:option id="item2_2_option" value="Transfer">
              Transfer
            </form:option>
            <form:option id="item2_3_option" value="Extension">
              Extension
            </form:option>
            <form:option id="item2_4_option" value="Masters to H1">
              Masters to H1
            </form:option>
          </form:select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item3">
        <div class="fb-grouplabel">
          <label id="item3_label_0" style="display: inline;">Prefix</label>
        </div>
        <div class="fb-dropdown">
          <form:select name="prefix" id="item3_select_1" required="required" data-hint="" path="prefix">
            <form:option id="item3_1_option" value="Mr">
              Mr
            </form:option>
            <form:option id="item3_2_option" value="Mrs">
              Mrs
            </form:option>
            <form:option id="item3_3_option" value="Option 3">
              Option 3
            </form:option>
            <form:option id="item3_4_option" value="Dr">
              Dr
            </form:option>
          </form:select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">First Name</label>
        </div>
        <div class="fb-input-box">
          <form:input name="firstname" id="item4_text_1" required="required" type="text" maxlength="254"
          placeholder="First Name" data-hint="" autocomplete="on" path="firstname"/> 
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Middle Name</label>
        </div>
        <div class="fb-input-box">
          <form:input name="middlename" id="item5_text_1" type="text" maxlength="254"
          placeholder="middlename" data-hint="" autocomplete="off" path="middlename" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Last Name</label>
        </div>
        <div class="fb-input-box">
          <form:input name="lastname" id="item6_text_1" required="required" type="text" maxlength="254"
          placeholder="Last Name" data-hint="" autocomplete="off" path="lastname"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item7">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Maiden Name(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="maidenname" id="item7_text_1" type="text" maxlength="254"
          placeholder="Maiden Name" data-hint="" autocomplete="off" path="maidenname"/>
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item8">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">Full Name(Exactly As In Passport)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="fullname" id="item8_text_1" required="required" type="text" maxlength="254"
          placeholder="Full Name" data-hint="" autocomplete="off" path="fullname"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item10" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Date Of Birth</label>
        </div>
        <div class="fb-input-date">
        </div>
         <div class="input-group input-medium date date-picker" data-date="12-02-2012" data-date-format="mm/dd/yyyy" data-date-viewmode="years">
                                                            <form:input type="text" class="form-control" readonly="true" path="dateofbirth"/>
                                                            <span class="input-group-btn">
                                                                <button class="btn default" type="button">
                                                                    <i class="fa fa-calendar"></i>
                                                                </button>
                                                            </span>
                                                        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item21">
        <div class="fb-grouplabel">
          <label id="item21_label_0" style="display: inline;">Country Of Birth</label>
        </div>
        <div class="fb-input-box">
          <form:input name="countryofbirth" id="item25_text_1" type="text" maxlength="254"
          placeholder="Country Of Birth" data-hint="" autocomplete="off" path="countryofbirth" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item22">
        <div class="fb-grouplabel">
          <label id="item22_label_0" style="display: inline;">Province Of Birth(City, State)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="text22" id="item22_text_1" type="text" maxlength="254" placeholder=""
          data-hint="Please fill them according to passport" autocomplete="off" path="provinceofbirth"/>
          <div class="fb-hint" style="color: rgb(136, 136, 136); font-style: normal; font-weight: normal;">
            Please fill them according to passport
          </div>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item23">
        <div class="fb-grouplabel">
          <label id="item23_label_0" style="display: inline;">Citizenship</label>
        </div>
<%--        <jsp:include page="Countries.jsp"></jsp:include> --%>
<div class="fb-input-box">
          <form:input name="citizenship" id="item25_text_1" type="text" maxlength="254"
          placeholder="Citizenship" data-hint="" autocomplete="off" path="citizenship" />
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item24" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item24_label_0" style="display: inline;">Have You Visited US Before Or Are You Currently Living In United States</label>
        </div>
        <div class="fb-dropdown">
          <form:select name="usvisit" id="usvisit" required="required" data-hint="" path="usvisit">
            
            <form:option id="yes" value="Yes">
              Yes
            </form:option>
            <form:option id="no" value="No">
              No
            </form:option>
          </form:select>
        </div>
      </div>
      <div id ="personalinfo">
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item25">
        <div class="fb-grouplabel">
          <label id="item25_label_0" style="display: inline;">Social Security Number(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="socialsecuritynumber" id="item25_text_1" type="text" maxlength="254"
          placeholder="Social Security Number" data-hint="" autocomplete="off" path="socialsecuritynumber" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item26">
        <div class="fb-grouplabel">
          <label id="item26_label_0" style="display: inline;">Latest I94 Number</label>
        </div>
        <div class="fb-input-box">
          <form:input name="i94number" id="item26_text_1" type="text" maxlength="254"
          placeholder="I94 Number" data-hint="" autocomplete="off" path="latesti94number" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item27">
        <div class="fb-grouplabel">
          <label id="item27_label_0" style="display: inline;">Last Entry To United States</label>
        </div>
        <div class="fb-input-date">
          <form:input name="lastentrytounitedstates" class="datepicker" id="item27_date_1"
           type="text" data-hint="" path="lastentrydatetous"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item28" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item28_label_0" style="display: inline;">A#</label>
        </div>
        <div class="fb-input-box">
          <form:input name="a" id="item28_text_1" type="text" maxlength="254" placeholder=""
          data-hint="" autocomplete="off" path="aliennumber"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item29" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item29_label_0" style="display: inline;">EAD Valid Upto</label>
        </div>
        <div class="fb-input-date">
          <form:input name="eadvalidupto" class="datepicker" id="item29_date_1" type="text"
          data-hint="" path="eadvalidupto"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item34" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item34_label_0" style="display: inline;">Current Employer Petition Number</label>
        </div>
        <div class="fb-input-box">
          <form:input name="currentemployerpetitionnumber" id="item34_text_1" type="text"
          maxlength="254" placeholder="Current Employer Petition Number" data-hint=""
          autocomplete="off" path="currentemployerpetitionnumber"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item33" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item33_label_0" style="display: inline;">Current Visa Expiry Date</label>
        </div>
        <div class="fb-input-date">
          <form:input name="currentvisaexpiry" class="datepicker" id="item33_date_1"
           type="text" data-hint="" path="currentvisaexpirydate"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item31">
        <div class="fb-grouplabel">
          <label id="item31_label_0" style="display: inline;">Current Visa Status</label>
        </div>
        <div class="fb-dropdown">
          <form:select name="currentvisastatus" id="item31_select_1"  data-hint="" required="required" path="currentvisastatus">
           
            <form:option id="item31_1_option" value="H1">
              H1
            </form:option>
            <form:option id="item31_2_option" value="H4">
              H4
            </form:option>
            <form:option id="item31_3_option" value="F1">
              F1
            </form:option>
            <form:option id="item31_4_option" value="B1">
              B1
            </form:option>
            <form:option id="item31_5_option" value="B2">
              B2
            </form:option>
            <form:option id="item31_6_option" value="L1">
              L1
            </form:option>
            <form:option id="item31_7_option" value="Other">
              Other
            </form:option>
          </form:select>
        </div>
      </div>
      </div>
      <div class="fb-item" id="item39">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
    </div>
  </div>
  <div class="fb-captcha fb-item-alignment-center" id="fb-captcha_control"
  style="display: none; cursor: default;">
    <img src="/FSDocs/assets/applicationformjsfiles/editordata/images/recaptchawhite.png" />
  </div>
  <div class="fb-footer fb-item-alignment-center" id="fb-submit-button-div"
  style="min-height: 1px;">
    <input class="fb-button-special" id="fb-submit-button" style="border-width: 0px; font-family: Helvetica, Arial; font-size: 11px;background-image: url('/FSDocs/assets/applicationformjsfiles/theme/default/images/btn_submit.png');"
    type="submit" data-regular="url('/FSDocs/assets/applicationformjsfiles/theme/default/images/btn_submit.png')"
    value="SaveAndContinue" />
  </div>
 </form:form>
<div class="btn-group btn-group btn-group-justified">
                                                                    <a href="home" class="btn blue"> Home </a>
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
        <script src="/FSDocs/assets/applicationformjsfiles/conditions.js"></script>
        <script src="/FSDocs/assets/applicationformjsfiles/formvalidation.js"></script>
        <!--[if lt IE 9]>
<script src="/FSDocs/assets/global/plugins/respond.min.js"></script>
<script src="/FSDocs/assets/global/plugins/excanvas.min.js"></script> 
<script src="/FSDocs/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
         <!-- BEGIN CORE PLUGINS -->
        <script src="/FSDocs/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="/FSDocs/assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/FSDocs/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="/FSDocs/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="/FSDocs/assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
       
<!-- <script src = "https://code.jquery.com/jquery-1.10.2.js"></script> -->
<!-- <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
    </body>

</html>