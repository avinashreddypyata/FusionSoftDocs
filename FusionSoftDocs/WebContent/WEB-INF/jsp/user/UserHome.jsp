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
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
        <link rel="stylesheet" type="text/css" href="/FSDocs/assets/contactformdisplayjsfiles/theme/default/css/default.css"
    id="theme" />
    <link rel="stylesheet" type="text/css" href="/FSDocs/assets/contactformdisplayjsfiles/theme/default/css/default.css"
    id="theme" />
    
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" />
         </head>
    
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
                                           <img alt="" class="img-circle" src="/FSDocs/assets/layouts/layout3/img/user.jpg">
                 
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
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active">
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
                                        <li >
                                         <a href="viewpassport">Passport
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
                            <!-- -beginning row -->
                              <div class="row">
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
                               <!-- -portlet ending -->
                               </div>
                               <!-- -column ending -->
                               <div class="col-md-6">
                               <!-- BEGIN Portlet PORTLET-->
                                <div class="portlet light portlet-fit bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-microphone font-green"></i>
                                        <span class="caption-subject bold font-green uppercase">Application Time Line</span>
                                    </div>
                              
                                </div>
                                <div class="portlet-body">
                                    <div class="timeline">
                                        <!-- TIMELINE ITEM -->
                                        <div class="timeline-item">
                                            <div class="timeline-badge">
                                                <img class="timeline-badge-userpic" src="/FSDocs/assets/layouts/layout3/img/user.jpg"> </div>
                                            <div class="timeline-body">
                                                <div class="timeline-body-arrow"></div>
                                                <div class="timeline-body-head">
                                                    <div class="timeline-body-head-caption">
                                                        <a href="javascript:;" class="timeline-body-title font-blue-madison">${applicant.fullname}</a>
                                                        
                                                    </div>
                                                   
                                                </div>
                                                <div class="timeline-body-content">
                                                    <span class="font-grey-cascade"> 
                                                    <p>${applicant.adminverification }</p>
                                                   
                                                     </span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END TIMELINE ITEM -->
                                        <!-- TIMELINE ITEM -->
                                        <div class="timeline-item">
                                            <div class="timeline-badge">
                                                <img class="timeline-badge-userpic" src="/FSDocs/assets/pages/media/users/attorney.jpg"> </div>
                                            <div class="timeline-body">
                                                <div class="timeline-body-arrow"> </div>
                                                <div class="timeline-body-head">
                                                    <div class="timeline-body-head-caption">
                                                        <a href="javascript:;" class="timeline-body-title font-blue-madison">Attorney</a>
                                                        
                                                    </div>
                                                    <div class="timeline-body-head-actions"> </div>
                                                </div>
                                                <div class="timeline-body-content">
                                                    <span class="font-grey-cascade">
                                                 
                                                    <p>${applicant.attorneyverificationstatus} </p>
                                                    
                                                       
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END TIMELINE ITEM -->
                                        <!-- TIMELINE ITEM WITH GOOGLE MAP -->
                                        <div class="timeline-item">
                                            <div class="timeline-badge">
                                                <img class="timeline-badge-userpic" src="/FSDocs/assets/pages/media/users/education.png"> </div>
                                            <div class="timeline-body">
                                                <div class="timeline-body-arrow"> </div>
                                                <div class="timeline-body-head">
                                                    <div class="timeline-body-head-caption">
                                                        <a href="javascript:;" class="timeline-body-title font-blue-madison">Education Evaluation</a>
                                                    </div>
                                                   
                                                </div>
                                                <div class="timeline-body-content">
                                                <span class="font-grey-cascade">
                                                   <p>${applicant.educationevaluationstatus} </p>
                                                   </span>
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END TIMELINE ITEM WITH GOOGLE MAP -->
                                        <!-- TIMELINE ITEM -->
                                     
                                        <!-- END TIMELINE ITEM -->
                                        <!-- TIMELINE ITEM -->
                                  
                                        <!-- END TIMELINE ITEM -->
                                        <!-- TIMELINE ITEM -->
                                       
                                        <!-- END TIMELINE ITEM -->
                                        <!-- TIMELINE ITEM -->
                                     
                                        <!-- END TIMELINE ITEM -->
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
                                 <div class="portlet light ">
                                     
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Experience Details</span>
                                    </div>
                                    <div class="tools"> </div>
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
                                                                    <th>Uploaded Document</th>
                                                                   
                                                                   
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
                                                                    <td> <c:out value="${experiencedetail.documenttitle}" /> </td>
                                                              

                                                              
                                                                </tr>
															</c:forEach>
                                                            </tbody>
                                    </table>
                                </div>
                            </div>
                                   <div class="portlet light ">
                                         
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Certificate Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                <tr>
                                                                    <th>
                                                                        Certification
                                                                    </th>
                                                                    <th>Specialisation</th>
                                                                    <th>Organisation</th>
                                                                    <th>Address</th>
                                                                    <th>City</th>
                                                                    <th> State</th>
                                                                    <th>Zipcode</th>
                                                                    <th>Country</th>
                                                                    <th>Month Of Passing</th>
                                                                    <th>Year Of Passing</th>
                                                                    <th>Document Uploaded</th>
                                                                  
                                                                   
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                               <c:forEach items="${certificationdetails}" var="certificationdetail">
                                                            
                                                                <tr class="odd gradeX">
                                                                    <td><c:out value="${certificationdetail.certificationName}" /></td>
                                                                    <td>
                                                                        <c:out value="${certificationdetail.specialisation}" /> 
                                                                    </td>
                                                                    <td>
                                                                        <c:out value="${certificationdetail.organisation}" /> 
                                                                    </td>
                                                                    <td>
                                                                       <c:out value="${certificationdetail.address}" /> 
                                                                    </td>
                                                                    <td> <c:out value="${certificationdetail.city}" /> </td>
                                                                    <td> <c:out value="${certificationdetail.state}" /> </td>
                                                                    <td> <c:out value="${certificationdetail.zipcode}" /> </td>
                                                                    <td> <c:out value="${certificationdetail.country}" /> </td>
                                                                    <td> <c:out value="${certificationdetail.monthOfPassing}" /> </td>
                                                                    <td> <c:out value="${certificationdetail.yearOfPassing}" /> </td>
                                                                    <td> <c:out value="${certificationdetail.documenttitle}" /> </td>
                                                                
                                                                 
                                                                </tr>
															</c:forEach>
                                                            </tbody>
                                    </table>
                                </div>
                            </div>
                                                   <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Education Details</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
<thead>
                                                                <tr>
                                                                    <th>
                                                                        Level Of Education
                                                                    </th>
                                                                    <th> Specialization </th>
                                                                    <th> University/School/College</th>
                                                                    <th> University Address</th>
                                                                    <th> Year Of Passing</th>
                                                                    <th> Month Of Passing </th>
                                                                    <th>US Sevis Number</th>
                                                                    <th>G.P.A</th>
                                                                    <th>Upload Doc</th>
                                                                  
                                                                   
                                                                </tr>
                                                            </thead>
                                       <tbody>
                                                                 <c:forEach items="${educationdetails}" var="educationdetail">
                                                            
                                                               <tr class="odd gradeX">
                                                                    <td><c:out value="${educationdetail.levelofeducation}" /></td>
                                                                    <td>
                                                                        <c:out value="${educationdetail.course}" /> 
                                                                    </td>
                                                                    <td>
                                                                        <c:out value="${educationdetail.university}" /> 
                                                                    </td>
                                                                    <td>
                                                                       <c:out value="${educationdetail.address}" /> <c:out value="${educationdetail.city}" /> <c:out value="${educationdetail.state}" /> <c:out value="${educationdetail.zipcode}" /> <c:out value="${educationdetail.country}" />
                                                                    </td>
                                                                    <td> <c:out value="${educationdetail.yearofpassing}" /> </td>
                                                                    <td> <c:out value="${educationdetail.monthofpassing}" /> </td>
                                                                    <td> <c:out value="${educationdetail.ussevisnumber}" /> </td>
                                                                     <td> <c:out value="${educationdetail.gpa}" /> </td>
                                                                      <td> <c:out value="${educationdetail.documenttitle}" /> </td>
                                                           
                                                                </tr>
															</c:forEach>
                                                            </tbody>
                                    </table>

                                </div>
                            </div>
                               <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <span class="caption-subject bold uppercase">Uploaded Documents</span>
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
                                                                                                Type Of The Document</th>
                                                                                            <th >
                                                                                                Description </th>
                                                                                          
                                                                                              <th>
                                                                             Action </th>
                                                                       
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach items="${documents}" var="document">
                                                                                        <tr>
                                                                                        
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                      <td>
                                                                        <c:out value="${document.doctype}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                            
                                                                                            <td>
                                                                                       <form action="downloadDoc" method="POST">
                                                                       
                                                                            <input type="hidden" value="${document.docid}" name="docid"></input>
                                                                            
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
                                <!-- -page content ending -->
                              
                            </div>
                            <!-- END PAGE CONTENT  wrapper BODY -->
                            <!-- END CONTENT BODY -->
                        </div>
                        <!-- END CONTAINER -->
                    </div>
                    <!-- END page wrapper middle -->
                </div>
                <!-- -page wrapper row full height -->
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
<script src="/FSDocs/assets/global/plugins/respond.min.js"></script>
<script src="/FSDocs/assets/global/plugins/excanvas.min.js"></script> 
<script src="/FSDocs/assets/global/plugins/ie8.fix.min.js"></script> 

 <script src="/FSDocs/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="/FSDocs/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/FSDocs/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
      <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="/FSDocs/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        
        
    </body>
    </html>
    