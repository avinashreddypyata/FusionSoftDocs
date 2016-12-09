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
                                                    <li data-toggle="tab" class="active">
                                                        <a href = "editorcreatenewcontact"> Contact </a>
                                                    </li>
                                                     <li >
                                                        <a href = "editorcreatenewpassport">Passport</a>
                                                    </li>
                                                    <li >
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
                                                  <form:form class="fb-toplabel fb-100-item-column selected-object" id="docContainer"
action="saveorupdatecontact" enctype="multipart/form-data" method="POST" novalidate="novalidate"
data-form="preview" modelAttribute="contact">
<form:hidden path="userid" value="${contact.userid}"/>
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="http://localhost:854/LoginPage/assets/contactformjsfiles/common/images/image_default.png"/></a>
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
      <div class="fb-item fb-50-item-column" id="item21" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item21_label_0">Phone Number</label>
        </div>
        <div class="fb-phone">
          <form:input name="phonenumber" id="item21_tel_1" required="required" type="tel" placeholder="Phone Number"
          data-hint="" path="phonenumber"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item22">
        <div class="fb-grouplabel">
          <label id="item22_label_0" style="display: inline;">Home Phone(Optional)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="homephone" id="item22_text_1" type="text" maxlength="254"
          placeholder="Home Phone" data-hint="" autocomplete="off" path="homephonenumber"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item23">
        <div class="fb-grouplabel">
          <label id="item23_label_0">Email</label>
        </div>
        <div class="fb-input-box">
          <form:input name="email23" id="item23_email_1" required="required" type="email" maxlength="254"
          placeholder="you@domain.com" data-hint="" autocomplete="off" path ="email"/>
        </div>
      </div>
      <div class="fb-item" id="item24">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">Address1</label>
        </div>
        <div class="fb-textarea">
          <form:textarea name="address1" id="item4_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          required="required" maxlength="1000" placeholder="" data-hint="" path="address1"></form:textarea>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <form:input name="city" id="item5_text_1" required="required" type="text" maxlength="254"
          placeholder="City" data-hint="" autocomplete="off" path ="city"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <form:input name="state" id="item6_text_1" required="required" type="text" maxlength="254"
          placeholder="State" data-hint="" autocomplete="off" path ="state"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item7" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <form:input name="zipcode" id="item7_text_1"  type="text" maxlength="254"
          placeholder="Zip Code" data-hint="" autocomplete="off" path ="zipcode"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item8" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <form:input name="country" id="item7_text_1" required="required" type="text" maxlength="254"
          placeholder="Country" data-hint="" autocomplete="off" path ="country" />
        </div>
      </div>
      <div class="fb-item" id="item9">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item10" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Address2(Optional)</label>
        </div>
        <div class="fb-textarea">
          <textarea name="address2" id="item10_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          maxlength="1000" placeholder="" data-hint=""></textarea>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item11" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item11_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <form:input name="city2" id="item11_text_1" type="text" maxlength="254" placeholder="City"
          data-hint="" autocomplete="off" path ="city2"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item12" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item12_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <form:input name="state2" id="item12_text_1" type="text" maxlength="254" placeholder="State"
          data-hint="" autocomplete="off" path ="state2"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item13" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item13_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <form:input name="zipcode2" id="item13_text_1" type="text" maxlength="254"
          placeholder="Zip Code" data-hint="" autocomplete="off" path ="zipcode2"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item14" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item14_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <form:input name="country" id="item7_text_1"  type="text" maxlength="254"
          placeholder="Country" data-hint="" autocomplete="off" path ="country2"/>
        </div>
      </div>
      <div class="fb-item" id="item15">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item16" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item16_label_0" style="display: inline;">Address3(Optional)</label>
        </div>
        <div class="fb-textarea">
          <textarea name="address3" id="item16_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          maxlength="1000" placeholder="" data-hint=""></textarea>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item17" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item17_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <form:input name="city3" id="item17_text_1" type="text" maxlength="254" placeholder="City"
          data-hint="" autocomplete="off" path ="city3"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item18" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item18_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <form:input name="state3" id="item18_text_1" type="text" maxlength="254" placeholder="State"
          data-hint="" autocomplete="off" path ="state3"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item19" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item19_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <form:input name="zipcode3" id="item19_text_1" type="text" maxlength="254"
          placeholder="Zip Code" data-hint="" autocomplete="off" path ="zipcode3"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item20" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item20_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <form:input name="country" id="item7_text_1"  type="text" maxlength="254"
          placeholder="Country" data-hint="" autocomplete="off" path ="country3"/>
        </div>
      </div>
    </div>
  </div>
  <div class="fb-captcha fb-item-alignment-center" id="fb-captcha_control"
  style="display: none; cursor: default;">
    <img src="http://localhost:854/LoginPage/assets/contactformjsfiles/editordata/images/recaptchawhite.png" />
  </div>
  <div class="fb-footer fb-item-alignment-center" id="fb-submit-button-div"
  style="min-height: 1px;">
    <input class="fb-button-special" id="fb-submit-button" style="border-width: 0px; font-family: Helvetica, Arial; font-size: 11px;background-image: url('http://localhost:854/LoginPage/assets/applicationformjsfiles/theme/default/images/btn_submit.png');"
    type="submit" data-regular="url('http://localhost:854/LoginPage/assets/contactformjsfiles/theme/default/images/btn_submit.png')"
    value="SaveAndContinue" />
  </div>
</form:form>
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