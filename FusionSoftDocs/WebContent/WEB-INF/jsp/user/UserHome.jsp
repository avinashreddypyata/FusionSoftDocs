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
        <script src="http://maps.google.com/maps/api/js?libraries=places&key=AIzaSyCoQaQ7_auZERrZRV3j0QzK1i553InKWAs" type="text/javascript"></script>
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
<script src="http://localhost:854/LoginPage/assets/contactformdisplayjsfiles/datepicker.js"></script>
     
    <link rel="stylesheet" type="text/css" href="http://localhost:854/LoginPage/assets/contactformdisplayjsfiles/theme/default/css/default.css"
    id="theme" />
    <link rel="stylesheet" type="text/css" href="http://localhost:854/LoginPage/assets/contactformdisplayjsfiles/theme/default/css/default.css"
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
                                        <img src="http://localhost:854/LoginPage/assets/layouts/layout3/img/fs-logo.png" alt="logo" class="logo-default">
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
                                                <img alt="" class="img-circle" src="http://localhost:854/LoginPage/assets/layouts/layout3/img/avatar9.jpg">
                                                <span class="username username-hide-mobile">Nick</span>
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-default">
                                             
                                                <li>
                                                    <a href="page_user_login_1.html">
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
                                        <li aria-haspopup="true" class="menu-dropdown classic-menu-dropdown ">
                                            <a> Home
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Application
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li >
                                        <a>Contact
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active">
                                         <a>Passport
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                         <a>Travel 
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                       <a>Education
                                               
                                            </a>
                                        </li>
                                        <li>
                                      <a>Experience
                                                
                                            </a>
                                        </li>
                                        <li >
                                      <a>Certification</a>
                                        </li>
                                        <li>
                                      <a>Documents
                                          
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
                                <div class="row">
                            <div class="col-md-6">
                                <!-- BEGIN Portlet PORTLET-->
                                <div class="portlet">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>Load On Demand </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" data-url="portlet_ajax_content_3.html" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body portlet-empty"> <form class="fb-100-item-column selected-object" id="docContainer" action=""
enctype="multipart/form-data" method="POST" novalidate="novalidate" data-form="preview">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="common/images/image_default.png"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1" style="opacity: 1;">
        <div class="fb-header fb-item-alignment-center">
          <h2 style="display: inline;">
            Passport Details Form
          </h2>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item2">
        <div class="fb-grouplabel">
          <label id="item2_label_0" style="display: inline;">Latest Passport Number</label>
        </div>
        <div class="fb-input-box">
          <input name="latestpassportnumber" id="item2_text_1" required type="text"
          maxlength="254" placeholder="Latest Passport Number" data-hint="" autocomplete="off"
          />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item3">
        <div class="fb-grouplabel">
          <label id="item3_label_0" style="display: inline;">Passport Issuance Date</label>
        </div>
        <div class="fb-input-date">
          <input name="passportissuancedate" class="datepicker" id="item3_date_1"
          required type="text" data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">Passport Expiry Date</label>
        </div>
        <div class="fb-input-date">
          <input name="passportexpirydate" class="datepicker" id="item4_date_1"
          required type="text" data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Passport Issued Location</label>
        </div>
        <div class="fb-input-box">
          <input name="passportissuedlocation" id="item5_text_1" required type="text"
          maxlength="254" placeholder="Passport Issued Location" data-hint="" autocomplete="off"
          />
        </div>
      </div>
    </div>
  </div>
  <div class="fb-captcha fb-item-alignment-center" id="fb-captcha_control"
  style="display: none; cursor: default;">
    <img src="editordata/images/recaptchawhite.png" />
  </div>
  <div class="fb-footer fb-item-alignment-center" id="fb-submit-button-div"
  style="min-height: 1px;">
    <input class="fb-button-special" id="fb-submit-button" style="background-image: url('theme/default/images/btn_submit.png');"
    type="submit" data-regular="url('file:///C:/Users/abhi/AppData/Local/Temp/FormBuilder/theme/default/images/btn_submit.png')"
    value="Next" />
  </div>
</form> </div>
                                </div>
                                <!-- END Portlet PORTLET-->
                            </div>
                            <div class="col-md-6">
                                <!-- BEGIN Portlet PORTLET-->
                                <div class="portlet solid green" id="my_portlet">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>Custom Reload Handler </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula,
                                            eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. </p>
                                    </div>
                                </div>
                                <!-- END Portlet PORTLET-->
                            </div>
                        </div>
                                <div class="row">
                            <div class="col-md-6">
                                <!-- BEGIN Portlet PORTLET-->
                                <div class="portlet box blue">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>Scrollable Content </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" data-load="true" data-url="portlet_ajax_content_1.html" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body portlet-empty"> 
                                    <form class="fb-toplabel fb-100-item-column selected-object" id="docContainer"
action="" enctype="multipart/form-data" method="POST" novalidate="novalidate"
data-form="preview">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="common/images/image_default.png"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1">
        <div class="fb-header fb-item-alignment-center">
          <h2 style="display: inline;">
            Contact Information
          </h2>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item21" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item21_label_0">Phone Number</label>
        </div>
        
      </div>
      <div class="fb-item fb-33-item-column" id="item22">
        <div class="fb-grouplabel">
          <label id="item22_label_0" style="display: inline;">Home Phone(Optional)</label>
        </div>
        890099999
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Email</label>
        </div>
       South Carolina hjgsadsdhdjksa
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
        1631 Deer Field Point hjgdyusadiusadsaodiusadosaid
      </div>
      <div class="fb-item fb-33-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">City</label>
        </div>
        Hyderabad
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">State</label>
        </div>
       South Carolina hjgsadsdhdjksa
      </div>
      <div class="fb-item fb-33-item-column" id="item7" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Zip Code</label>
        </div>
        ${zipcode} 90899
      </div>
      <div class="fb-item fb-33-item-column" id="item25" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item25_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <input name="text25" id="item25_text_1" type="text" maxlength="254" placeholder=""
          data-hint="" autocomplete="off" />
        </div>
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
        <div class="fb-textarea">
          <textarea name="address2" id="item10_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          maxlength="1000" placeholder="" data-hint=""></textarea>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item11" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item11_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <input name="city2" id="item11_text_1" type="text" maxlength="254" placeholder="City"
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item12" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item12_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <input name="state2" id="item12_text_1" type="text" maxlength="254" placeholder="State"
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item13" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item13_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <input name="zipcode2" id="item13_text_1" type="text" maxlength="254"
          placeholder="Zip Code" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item26" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item26_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <input name="text26" id="item26_text_1" type="text" maxlength="254" placeholder=""
          data-hint="" autocomplete="off" />
        </div>
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
        <div class="fb-textarea">
          <textarea name="address3" id="item16_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          maxlength="1000" placeholder="" data-hint=""></textarea>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item17" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item17_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <input name="city3" id="item17_text_1" type="text" maxlength="254" placeholder="City"
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item18" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item18_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <input name="state3" id="item18_text_1" type="text" maxlength="254" placeholder="State"
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item19" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item19_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <input name="zipcode3" id="item19_text_1" type="text" maxlength="254"
          placeholder="Zip Code" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item28" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item28_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <input name="text28" id="item28_text_1" type="text" maxlength="254" placeholder=""
          data-hint="" autocomplete="off" />
        </div>
      </div>
    </div>
  </div>
  <div class="fb-captcha fb-item-alignment-center" id="fb-captcha_control"
  style="display: none; cursor: default;">
    <img src="editordata/images/recaptchawhite.png" />
  </div>
  <div class="fb-item-alignment-left fb-footer" id="fb-submit-button-div"
  style="min-height: 1px;">
  </div>
</form>
                                    
                                    
                                    </div>
                                </div>
                                <!-- END Portlet PORTLET-->
                            </div>
                            <div class="col-md-6">
                                <!-- BEGIN Portlet PORTLET-->
                                <div class="portlet box red">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>Advance Form </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload" data-load="true" data-url="portlet_ajax_content_2.html"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body form portlet-empty"> <form class="fb-toplabel fb-100-item-column fb-large selected-object"
id="docContainer" style="width: 90%; max-width: 800px;" action="" enctype="multipart/form-data"
method="POST" novalidate="novalidate" data-form="preview" data-percentage="90">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="common/images/image_default.png"/></a>
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
      <div class="fb-item fb-25-item-column" id="item2">
        <div class="fb-grouplabel">
          <label id="item2_label_0" style="color: rgb(10, 10, 10); display: inline;">Application Type</label>
        </div>
        <div class="fb-dropdown">
          <select name="applicationtype" id="item2_select_1" required data-hint="">
            <option id="item2_0_option" selected value="">
              Choose one
            </option>
            <option id="item2_1_option" value="New">
              New
            </option>
            <option id="item2_2_option" value="Transfer">
              Transfer
            </option>
            <option id="item2_3_option" value="Extension">
              Extension
            </option>
            <option id="item2_4_option" value="Masters to H1">
              Masters to H1
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-25-item-column" id="item3">
        <div class="fb-grouplabel">
          <label id="item3_label_0" style="display: inline;">Prefix</label>
        </div>
        <div class="fb-dropdown">
          <select name="prefix" id="item3_select_1" required data-hint="">
            <option id="item3_0_option" selected value="">
              Choose one
            </option>
            <option id="item3_1_option" value="Mr">
              Mr
            </option>
            <option id="item3_2_option" value="Mrs">
              Mrs
            </option>
            <option id="item3_3_option" value="Option 3">
              Option 3
            </option>
            <option id="item3_4_option" value="Dr">
              Dr
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">First Name</label>
        </div>
        <div class="fb-input-box">
          <input name="firstname" id="item4_text_1" required type="text" maxlength="254"
          placeholder="First Name" data-hint="" autocomplete="on" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item5" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Middle Name</label>
        </div>
        <div class="fb-input-box">
          <input name="middlename" id="item5_text_1" type="text" maxlength="254"
          placeholder="middlename" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Last Name</label>
        </div>
        <div class="fb-input-box">
          <input name="lastname" id="item6_text_1" required type="text" maxlength="254"
          placeholder="Last Name" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item7">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Maiden Name(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <input name="maidenname" id="item7_text_1" type="text" maxlength="254"
          placeholder="Maiden Name" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item8">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">Full Name(Exactly As In Passport)</label>
        </div>
        <div class="fb-input-box">
          <input name="fullname" id="item8_text_1" required type="text" maxlength="254"
          placeholder="Full Name" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item10" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Date Of Birth</label>
        </div>
        <div class="fb-input-date">
          <input name="dateofbirth" class="datepicker" id="item10_date_1" type="text"
          data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item40" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item40_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-date">
          <input name="text40" class="datepicker" id="item40_text_1" type="text"
          data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item22">
        <div class="fb-grouplabel">
          <label id="item22_label_0" style="display: inline;">Province Of Birth(City, State)</label>
        </div>
        <div class="fb-input-box">
          <input name="text22" id="item22_text_1" type="text" maxlength="254" placeholder=""
          data-hint="Please fill them according to passport" autocomplete="off" />
          <div class="fb-hint" style="color: rgb(136, 136, 136); font-style: normal; font-weight: normal;">
            Please fill them according to passport
          </div>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item41">
        <div class="fb-grouplabel">
          <label id="item41_label_0" style="display: inline;">Citizenship</label>
        </div>
        <div class="fb-input-box">
          <input name="text41" id="item41_text_1" type="text" maxlength="254" placeholder=""
          data-hint="Please fill them according to passport" autocomplete="off" />
          <div class="fb-hint" style="color: rgb(136, 136, 136); font-style: normal; font-weight: normal;">
            Please fill them according to passport
          </div>
        </div>
      </div>
      <div class="fb-item fb-33-item-column" id="item24" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item24_label_0" style="display: inline;">Have You Visited US Before Or Are You Currently Living In United States</label>
        </div>
        <div class="fb-dropdown">
          <select name="usvisit" id="item24_select_1" required data-hint="">
            <option id="item24_0_option" selected value="">
              Choose one
            </option>
            <option id="item24_1_option" value="Yes">
              Yes
            </option>
            <option id="item24_2_option" value="No">
              No
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item25">
        <div class="fb-grouplabel">
          <label id="item25_label_0" style="display: inline;">Social Security Number(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <input name="socialsecuritynumber" id="item25_text_1" type="text" maxlength="254"
          placeholder="Social Security Number" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item26">
        <div class="fb-grouplabel">
          <label id="item26_label_0" style="display: inline;">Latest I94 Number</label>
        </div>
        <div class="fb-input-box">
          <input name="i94number" id="item26_text_1" type="text" maxlength="254"
          placeholder="I94 Number" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item27">
        <div class="fb-grouplabel">
          <label id="item27_label_0" style="display: inline;">Last Entry To United States</label>
        </div>
        <div class="fb-input-date">
          <input name="lastentrytounitedstates" class="datepicker" id="item27_date_1"
          required type="text" data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item28" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item28_label_0" style="display: inline;">A#</label>
        </div>
        <div class="fb-input-box">
          <input name="a" id="item28_text_1" type="text" maxlength="254" placeholder=""
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item29" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item29_label_0" style="display: inline;">EAD Valid Upto</label>
        </div>
        <div class="fb-input-date">
          <input name="eadvalidupto" class="datepicker" id="item29_date_1" type="text"
          data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item34" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item34_label_0" style="display: inline;">Current Employer Petition Number</label>
        </div>
        <div class="fb-input-box">
          <input name="currentemployerpetitionnumber" id="item34_text_1" type="text"
          maxlength="254" placeholder="Current Employer Petition Number" data-hint=""
          autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item33" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item33_label_0" style="display: inline;">Current Visa Expiry Date</label>
        </div>
        <div class="fb-input-date">
          <input name="currentvisaexpiry" class="datepicker" id="item33_date_1"
          required type="text" data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-33-item-column fb_cond_applied" id="item31">
        <div class="fb-grouplabel">
          <label id="item31_label_0" style="display: inline;">Current Visa Status</label>
        </div>
        <div class="fb-dropdown">
          <select name="currentvisastatus" id="item31_select_1" required data-hint="">
            <option id="item31_0_option" selected value="">
              Choose one
            </option>
            <option id="item31_1_option" value="H1">
              H1
            </option>
            <option id="item31_2_option" value="H4">
              H4
            </option>
            <option id="item31_3_option" value="F1">
              F1
            </option>
            <option id="item31_4_option" value="B1">
              B1
            </option>
            <option id="item31_5_option" value="B2">
              B2
            </option>
            <option id="item31_6_option" value="L1">
              L1
            </option>
            <option id="item31_7_option" value="Other">
              Other
            </option>
          </select>
        </div>
      </div>
    </div>
  </div>
</form></div>
                                </div>
                                <!-- END Portlet PORTLET-->
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
        <script src="http://localhost:854/LoginPage/assets/contactformdisplayjsfiles/formvalidation.js"></script>
        <!--[if lt IE 9]>
<script src="http://localhost:854/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:854/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:854/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        
    </body>

</html>