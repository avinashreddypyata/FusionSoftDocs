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
                                        <h1>Overview
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
                                            <span>Overview</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                        <div class="profile">
                                            <div class="tabbable-line tabbable-full-width">
                                                <ul class="nav nav-tabs">
                                               <li data-toggle="tab" class="active">
                                                        <a href = "overview" >Overview</a>
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
                                                    <li >
                                                        <a href = "traveldetails"> Travel </a>
                                                    </li>
                                                    <li  >
                                                        <a href = "educationdetails"> Education </a>
                                                    </li>
                                                    <li >
                                                        <a href = "experiencedetails"> Experience </a>
                                                    </li>
                                                    <li >
                                                        <a href = "certificateDetails"> Certifications </a>
                                                    </li>
                                                    <li >
                                                        <a href = "applicantdocument"> Documents </a>
                                                    </li>
                                                    
                                                </ul>
                                 <div class="tab-content">
                                                   <div class="page-content">
                            <!-- -beginning row -->
                              <div class="row">
                               <div class="col-md-6">
                               <div class="portlet box blue">
                               <div class="portlet-title">
                               <div class="caption">
                               <i class="fa fa-gift"></i>Passport Details </div>
           
                               </div>
                               <!-- - portlet body beginning -->
                               <div class="portlet-body portlet-empty">
                               <form class="fb-100-item-column selected-object" id="docContainer" action=""
enctype="multipart/form-data" method="POST" novalidate="novalidate" data-form="preview">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1" style="opacity: 1;">
        <div class="fb-header fb-item-alignment-center">
         
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item2">
        <div class="fb-grouplabel">
          <label id="item2_label_0" style="display: inline;">Latest Passport Number</label>
        </div>
        ${passport.latestpassportnumber}
      </div>
      <div class="fb-item fb-50-item-column" id="item3">
        <div class="fb-grouplabel">
          <label id="item3_label_0" style="display: inline;">Passport Issuance Date</label>
        </div>
         ${passport.passportissuancedate}
      </div>
      <div class="fb-item fb-50-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">Passport Expiry Date</label>
        </div>
       ${passport.passportexpirydate}
      </div>
      <div class="fb-item fb-50-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Passport Issued Location</label>
        </div>
          ${passport.passportissuedlocation}
      </div>
    </div>
  </div>
 
</form>
                               </div>
                               <!-- -portlet body end -->
                               </div>
                               <!-- -portlet ending -->
                               </div>
                               <!-- -column ending -->
                               <div class="col-md-6">
                               <!-- BEGIN Portlet PORTLET-->
                               <div class="portlet light portlet-fit ">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class=" icon-layers font-green"></i>
                                        <span class="caption-subject font-green bold uppercase">Status</span>
                                       
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="mt-element-ribbon bg-grey-steel">
                                                <div class="ribbon ribbon-right ribbon-vertical-right ribbon-shadow ribbon-border-dash-vert ribbon-color-primary uppercase">
                                                    <div class="ribbon-sub ribbon-bookmark"></div>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <p class="ribbon-content"><strong>${applicationstatus}</strong></p>
                                                
                                            </div>
                                                       <form action="assigntoeducationevaluation" id="education" method="post"><input type="hidden" value="${applicant.userid}" name="userid"></form>
                                                             <form action="assigntoattorney" id = "attorney" method="post">
                                                             <input type="hidden" value="${applicant.userid}" name="userid">
                                                             </form>
                                                                
                                                                <button type="submit" class="btn blue btn-outline" form="attorney">Assign To Attorney</button>
                                                                <button type="submit" class="btn green btn-outline" form="education" >Assign To Education Evaluation</button>
                                                                <button type="submit" class="btn red btn-outline" form="reject">Reject</button>
                                                             
                                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <!-- END Portlet PORTLET-->
                               </div>
                               </div>
                                 <!-- -ending row -->
                                
                                <!--  beginning row -->
                                
                                <div class="row">
                                <div class="col-md-6">
                                <div class="portlet box blue">
                                <div class="portlet-title">
                                <div class="caption">  <i class="fa fa-gift"></i>Contact Information
                                </div>
                                </div>
                                <!-- -ending portlet title -->
                                <!-- beginning portlet body -->
                                <div class="portlet-body portlet-empty">
                                                           <form class="fb-toplabel fb-100-item-column selected-object" id="docContainer"
action="" enctype="multipart/form-data" method="POST" novalidate="novalidate"
data-form="preview">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1">
        <div class="fb-header fb-item-alignment-center">
         
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item21" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item21_label_0">Phone Number</label>
        </div>
        ${contact.phonenumber}
        
      </div>
      <div class="fb-item fb-33-item-column" id="item22">
        <div class="fb-grouplabel">
          <label id="item22_label_0" style="display: inline;">Home Phone(Optional)</label>
        </div>
        ${contact.homephonenumber}
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Email</label>
        </div>
        ${contact.email}
      </div>
      <div class="fb-item" id="item24">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">Address1</label>
        </div>
         ${contact.address1}
      </div>
      <div class="fb-item fb-33-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">City</label>
        </div>
           ${contact.city}
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">State</label>
        </div>
       ${contact.state}
      </div>
      <div class="fb-item fb-33-item-column" id="item7" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Zip Code</label>
        </div>
          ${contact.zipcode}
      </div>
      <div class="fb-item fb-33-item-column" id="item25" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item25_label_0" style="display: inline;">Country</label>
        </div>
          ${contact.country}
      </div>
      <div class="fb-item" id="item9">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item10" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Address2(Optional)</label>
        </div>
          ${contact.address2}
      </div>
      <div class="fb-item fb-33-item-column" id="item11" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item11_label_0" style="display: inline;">City</label>
        </div>
         ${contact.city2}
      </div>
      <div class="fb-item fb-33-item-column" id="item12" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item12_label_0" style="display: inline;">State</label>
        </div>
          ${contact.state2}
      </div>
      <div class="fb-item fb-33-item-column" id="item13" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item13_label_0" style="display: inline;">Zip Code</label>
        </div>
          ${contact.zipcode2}
      </div>
      <div class="fb-item fb-33-item-column" id="item26" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item26_label_0" style="display: inline;">Country</label>
        </div>
        ${contact.country2}
      </div>
      <div class="fb-item" id="item15">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item16" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item16_label_0" style="display: inline;">Address3(Optional)</label>
        </div>
          ${contact.address3}
      </div>
      <div class="fb-item fb-33-item-column" id="item17" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item17_label_0" style="display: inline;">City</label>
        </div>
           ${contact.city3}
      </div>
      <div class="fb-item fb-33-item-column" id="item18" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item18_label_0" style="display: inline;">State</label>
        </div>
         ${contact.state3}
      </div>
      <div class="fb-item fb-33-item-column" id="item19" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item19_label_0" style="display: inline;">Zip Code</label>
        </div>
         ${contact.zipcode3}
      </div>
      <div class="fb-item fb-33-item-column" id="item28" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item28_label_0" style="display: inline;">Country</label>
        </div>
        ${contact.country3}
      </div>
    </div>
  </div>
</form>
                                </div>
                                <!-- ending portlet body -->
                                </div>
                                </div>
                      <div class="col-md-6">
                                <div class="portlet box blue">
                                <div class="portlet-title">
                                <div class="caption">  <i class="fa fa-gift"></i>Application Details
                                </div>
                                </div>
                                <!-- -ending portlet title -->
                                <!-- beginning portlet body -->
                                <div class="portlet-body portlet-empty">
                                                           <form class="fb-toplabel fb-100-item-column selected-object" id="docContainer"
action="" enctype="multipart/form-data" method="POST" novalidate="novalidate"
data-form="preview">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1">
        <div class="fb-header fb-item-alignment-center">
         
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item21" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item21_label_0">Application Type</label>
        </div>
       ${applicant.applicationtype}
        
      </div>
      <div class="fb-item fb-33-item-column" id="item22">
        <div class="fb-grouplabel">
          <label id="item22_label_0" style="display: inline;">Prefix</label>
        </div>
         ${applicant.prefix}
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">First Name</label>
        </div>
          ${applicant.firstname}
      </div>
      <div class="fb-item" id="item24">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">Middle Name</label>
        </div>
        ${applicant.middlename}
      </div>
      <div class="fb-item fb-33-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Last Name</label>
        </div>
           ${applicant.lastname}
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Maiden Name</label>
        </div>
       ${applicant.maidenname}
      </div>
      <div class="fb-item fb-33-item-column" id="item7" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Full Name</label>
        </div>
          ${applicant.fullname}
      </div>
      <div class="fb-item fb-33-item-column" id="item25" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item25_label_0" style="display: inline;">Date Of Birth</label>
        </div>
           ${applicant.dateofbirth}
      </div>
      <div class="fb-item" id="item9">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item10" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Province Of Birth</label>
        </div>
           ${applicant.provinceofbirth}
      </div>
      <div class="fb-item fb-33-item-column" id="item11" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item11_label_0" style="display: inline;">City</label>
        </div>
         ${contact.city2}
      </div>
      <div class="fb-item fb-33-item-column" id="item12" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item12_label_0" style="display: inline;">Citizenship</label>
        </div>
          ${applicant.citizenship}
      </div>
      <div class="fb-item fb-33-item-column" id="item13" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item13_label_0" style="display: inline;">Have You Visited US Before Or Are You Currently Living In United States</label>
        </div>
           ${applicant.usvisit}
      </div>
      <div class="fb-item fb-33-item-column" id="item26" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item26_label_0" style="display: inline;">Social Security Number</label>
        </div>
       ${applicant.socialsecuritynumber}
      </div>
      <div class="fb-item" id="item15">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item16" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item16_label_0" style="display: inline;">Latest I94 Number</label>
        </div>
          ${applicant.latesti94number}
      </div>
      <div class="fb-item fb-33-item-column" id="item17" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item17_label_0" style="display: inline;">Last Entry To United States</label>
        </div>
            ${applicant.lastentrydatetous}
      </div>
      <div class="fb-item fb-33-item-column" id="item18" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item18_label_0" style="display: inline;">A#</label>
        </div>
         ${applicant.aliennumber}
      </div>
      <div class="fb-item fb-33-item-column" id="item19" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item19_label_0" style="display: inline;">EAD Valid Upto</label>
        </div>
        ${applicant.aliennumber}
      </div>
      <div class="fb-item fb-33-item-column" id="item28" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item28_label_0" style="display: inline;">Current Employer Petition Number</label>
        </div>
       ${applicant.currentemployerpetitionnumber}
      </div>

<div class="fb-item fb-33-item-column" id="item19" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item19_label_0" style="display: inline;">Current Visa Expiry Date</label>
        </div>
         ${applicant.currentvisaexpirydate}
      </div>

<div class="fb-item fb-33-item-column" id="item19" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item19_label_0" style="display: inline;">Current Visa Status</label>
        </div>
         ${applicant.currentvisastatus}
      </div>

    </div>
  </div>
  
 
</form>
                                </div>
                                <!-- ending portlet body -->
                                </div>
                                </div>
                                </div>
                                <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Details</span>
                                    </div>
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

                                                                </tr>
															</c:forEach>
                                                            </tbody>
                                    </table>
                                </div>
                            </div>
                               <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Experience Documents</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                Document</th>
                                                                                            <th >
                                                                                                Description </th>
                                                                                          
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents.experiencedocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                            
                                                                                            <td>
                                                                                                
                                                                            <form action="downloadDoc" method="POST">
                                                                            <input type="hidden" value="${document.docid}" name="docid" ></input>
                                                                                        <button type="submit" class="btn green btn-outline">Download</button>
                                                                                        </form>
                                                                         
                                                                        
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                </div>
                               
                                               <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Education Documents</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                Document</th>
                                                                                            <th>
                                                                                                Description </th>
                                                                                            
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents.educationdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td> ${document.keywords} </td>
                                                                                            
                                                                                            <td>
                                                                                                <form action="downloadDoc" method="POST">
                                                                            <input type="hidden" value="${document.docid}" name="docid" ></input>
                                                                                        <button type="submit" class="btn green btn-outline">Download</button>
                                                                                        </form>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                </div>
                               
                                               <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Passport Documents</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                Document</th>
                                                                                            <th >
                                                                                                Description </th>
                                                                                            
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents.passportdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                          
                                                                                            <td>
                                                                                                <form action="downloadDoc" method="POST">
                                                                            <input type="hidden" value="${document.docid}" name="docid" ></input>
                                                                                        <button type="submit" class="btn green btn-outline">Download</button>
                                                                                        </form>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                </div>
                                
                                
                                               <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Travel Documents</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                Document</th>
                                                                                            <th >
                                                                                                Description </th>
                                                                                          
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents.traveldocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                           
                                                                                            <td>
                                                                                                <form action="downloadDoc" method="POST">
                                                                            <input type="hidden" value="${document.docid}" name="docid" ></input>
                                                                                        <button type="submit" class="btn green btn-outline">Download</button>
                                                                                        </form>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                </div>
                               
                                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Certificate Documents</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                Document</th>
                                                                                            <th >
                                                                                                Description </th>
                                                                                          
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents.certificatedocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                           
                                                                                            <td>
                                                                                               <form action="downloadDoc" method="POST">
                                                                            <input type="hidden" value="${document.docid}" name="docid" ></input>
                                                                                        <button type="submit" class="btn green btn-outline">Download</button>
                                                                                        </form>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
                                </div>
                               
                                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Other Documents</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                                        <tr>
                                                                                            <th>
                                                                                                Document</th>
                                                                                            <th >
                                                                                                Description </th>
                                                                                          
                                                                                            <th>Actions</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents.otherdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                           
                                                                                            <td>
                                                                               <form action="downloadDoc" method="POST">
                                                                            <input type="hidden" value="${document.docid}" name="docid" ></input>
                                                                                        <button type="submit" class="btn green btn-outline">Download</button>
                                                                                        </form>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </c:forEach>
                                                                                    </tbody>
                                    </table>
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
        <script src="http://localhost:854/LoginPage/assets/applicationformjsfiles/conditions.js"></script>
        <script src="http://localhost:854/LoginPage/assets/applicationformjsfiles/formvalidation.js"></script>
        <!--[if lt IE 9]>
<script src="http://localhost:854/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:854/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:854/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        
    </body>

</html>