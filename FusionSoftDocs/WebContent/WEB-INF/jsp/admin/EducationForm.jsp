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
<script src="http://localhost:854/LoginPage/assets/educationformjsfiles/datepicker.js"></script>
     
    <link rel="stylesheet" type="text/css" href="http://localhost:854/LoginPage/assets/educationformjsfiles/theme/default/css/default.css"
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
                                        <li>
                                         <a>Passport
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                         <a>Travel 
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active">
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
                                <div class="container">
                                <form class="fb-toplabel fb-100-item-column selected-object" id="docContainer"
action="" enctype="multipart/form-data" method="POST" novalidate="novalidate"
data-form="preview">
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="http://localhost:854/LoginPage/assets/educationformjsfiles/common/images/image_default.png"/></a>
  </div>
  <div class="section" id="section1">
    <div class="column ui-sortable" id="column1">
      <div class="fb-item fb-100-item-column" id="item1">
        <div class="fb-header fb-item-alignment-center">
          <h2>
            Educational Form
          </h2>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item2">
        <div class="fb-grouplabel">
          <label id="item2_label_0">Select an option</label>
        </div>
        <div class="fb-dropdown">
          <select name="select2" id="item2_select_1" required data-hint="">
            <option id="item2_0_option" selected value="">
              Choose one
            </option>
            <option id="item2_1_option" value="High School or Equivalent">
              High School or Equivalent
            </option>
            <option id="item2_2_option" value="12th/Intermediate">
              12th/Intermediate
            </option>
            <option id="item2_3_option" value="Associate Degree">
              Associate Degree
            </option>
            <option id="item2_4_option" value="Bachelor&#39;s Degree">
              Bachelor&#39;s Degree
            </option>
            <option id="item2_5_option" selected value="Masters Degree">
              Masters Degree
            </option>
            <option id="item2_6_option" value="Ph.d">
              Ph.d
            </option>
            <option id="item2_7_option" value="PostDoc">
              PostDoc
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item3">
        <div class="fb-grouplabel">
          <label id="item3_label_0" style="display: inline;">Specialisation/Subject</label>
        </div>
        <div class="fb-input-box">
          <input name="text3" id="item3_text_1" type="text" maxlength="254" placeholder="Specialisation/Subject"
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">University/School/College</label>
        </div>
        <div class="fb-input-box">
          <input name="university" id="item5_text_1" type="text" maxlength="254"
          placeholder="University/School/College" data-hint="" autocomplete="off"
          />
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item7" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Exact University/College/School Address</label>
        </div>
        <div class="fb-textarea">
          <textarea name="universityaddress" id="item7_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          required maxlength="1000" placeholder="" data-hint=""></textarea>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item8">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <input name="city" id="item8_text_1" required type="text" maxlength="254"
          placeholder="City" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item9">
        <div class="fb-grouplabel">
          <label id="item9_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <input name="state" id="item9_text_1" required type="text" maxlength="254"
          placeholder="State" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item15" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item15_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <input name="zipcode" id="item15_text_1" type="text" maxlength="254" placeholder="Zip Code"
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item10">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-dropdown">
          <select name="country" id="item10_select_1" required data-hint="">
            <option id="item10_0_option" selected value="">
              Choose one
            </option>
            <option id="item10_1_option" selected value="Afghanistan">
              Afghanistan
            </option>
            <option id="item10_2_option" value="Albania">
              Albania
            </option>
            <option id="item10_3_option" value="Algeria">
              Algeria
            </option>
            <option id="item10_4_option" value="American Samoa">
              American Samoa
            </option>
            <option id="item10_5_option" value="Andorra">
              Andorra
            </option>
            <option id="item10_6_option" value="Angola">
              Angola
            </option>
            <option id="item10_7_option" value="Anguilla">
              Anguilla
            </option>
            <option id="item10_8_option" value="Antarctica">
              Antarctica
            </option>
            <option id="item10_9_option" value="Antigua And Barbuda">
              Antigua And Barbuda
            </option>
            <option id="item10_10_option" value="Argentina">
              Argentina
            </option>
            <option id="item10_11_option" value="Armenia">
              Armenia
            </option>
            <option id="item10_12_option" value="Aruba">
              Aruba
            </option>
            <option id="item10_13_option" value="Australia">
              Australia
            </option>
            <option id="item10_14_option" value="Austria">
              Austria
            </option>
            <option id="item10_15_option" value="Azerbaijan">
              Azerbaijan
            </option>
            <option id="item10_16_option" value="Bahamas">
              Bahamas
            </option>
            <option id="item10_17_option" value="Bahrain">
              Bahrain
            </option>
            <option id="item10_18_option" value="Bangladesh">
              Bangladesh
            </option>
            <option id="item10_19_option" value="Barbados">
              Barbados
            </option>
            <option id="item10_20_option" value="Belarus">
              Belarus
            </option>
            <option id="item10_21_option" value="Belgium">
              Belgium
            </option>
            <option id="item10_22_option" value="Belize">
              Belize
            </option>
            <option id="item10_23_option" value="Benin">
              Benin
            </option>
            <option id="item10_24_option" value="Bermuda">
              Bermuda
            </option>
            <option id="item10_25_option" value="Bhutan">
              Bhutan
            </option>
            <option id="item10_26_option" value="Bolivia">
              Bolivia
            </option>
            <option id="item10_27_option" value="Bosnia And Herzegovina">
              Bosnia And Herzegovina
            </option>
            <option id="item10_28_option" value="Botswana">
              Botswana
            </option>
            <option id="item10_29_option" value="Bouvet Island">
              Bouvet Island
            </option>
            <option id="item10_30_option" value="Brazil">
              Brazil
            </option>
            <option id="item10_31_option" value="British Indian Ocean Territory">
              British Indian Ocean Territory
            </option>
            <option id="item10_32_option" value="Brunei">
              Brunei
            </option>
            <option id="item10_33_option" value="Bulgaria">
              Bulgaria
            </option>
            <option id="item10_34_option" value="Burkina Faso">
              Burkina Faso
            </option>
            <option id="item10_35_option" value="Burundi">
              Burundi
            </option>
            <option id="item10_36_option" value="Cambodia">
              Cambodia
            </option>
            <option id="item10_37_option" value="Cameroon">
              Cameroon
            </option>
            <option id="item10_38_option" value="Canada">
              Canada
            </option>
            <option id="item10_39_option" value="Cape Verde">
              Cape Verde
            </option>
            <option id="item10_40_option" value="Cayman Islands">
              Cayman Islands
            </option>
            <option id="item10_41_option" value="Central African Republic">
              Central African Republic
            </option>
            <option id="item10_42_option" value="Chad">
              Chad
            </option>
            <option id="item10_43_option" value="Chile">
              Chile
            </option>
            <option id="item10_44_option" value="China">
              China
            </option>
            <option id="item10_45_option" value="Christmas Island">
              Christmas Island
            </option>
            <option id="item10_46_option" value="Cocos (Keeling) Islands">
              Cocos (Keeling) Islands
            </option>
            <option id="item10_47_option" value="Columbia">
              Columbia
            </option>
            <option id="item10_48_option" value="Comoros">
              Comoros
            </option>
            <option id="item10_49_option" value="Congo">
              Congo
            </option>
            <option id="item10_50_option" value="Cook Islands">
              Cook Islands
            </option>
            <option id="item10_51_option" value="Costa Rica">
              Costa Rica
            </option>
            <option id="item10_52_option" value="Cote D&#39;Ivorie (Ivory Coast)">
              Cote D&#39;Ivorie (Ivory Coast)
            </option>
            <option id="item10_53_option" value="Croatia (Hrvatska)">
              Croatia (Hrvatska)
            </option>
            <option id="item10_54_option" value="Cuba">
              Cuba
            </option>
            <option id="item10_55_option" value="Cyprus">
              Cyprus
            </option>
            <option id="item10_56_option" value="Czech Republic">
              Czech Republic
            </option>
            <option id="item10_57_option" value="Democratic Republic Of Congo (Zaire)">
              Democratic Republic Of Congo (Zaire)
            </option>
            <option id="item10_58_option" value="Denmark">
              Denmark
            </option>
            <option id="item10_59_option" value="Djibouti">
              Djibouti
            </option>
            <option id="item10_60_option" value="Dominica">
              Dominica
            </option>
            <option id="item10_61_option" value="Dominican Republic">
              Dominican Republic
            </option>
            <option id="item10_62_option" value="East Timor">
              East Timor
            </option>
            <option id="item10_63_option" value="Ecuador">
              Ecuador
            </option>
            <option id="item10_64_option" value="Egypt">
              Egypt
            </option>
            <option id="item10_65_option" value="El Salvador">
              El Salvador
            </option>
            <option id="item10_66_option" value="Equatorial Guinea">
              Equatorial Guinea
            </option>
            <option id="item10_67_option" value="Eritrea">
              Eritrea
            </option>
            <option id="item10_68_option" value="Estonia">
              Estonia
            </option>
            <option id="item10_69_option" value="Ethiopia">
              Ethiopia
            </option>
            <option id="item10_70_option" value="Falkland Islands (Malvinas)">
              Falkland Islands (Malvinas)
            </option>
            <option id="item10_71_option" value="Faroe Islands">
              Faroe Islands
            </option>
            <option id="item10_72_option" value="Fiji">
              Fiji
            </option>
            <option id="item10_73_option" value="Finland">
              Finland
            </option>
            <option id="item10_74_option" value="France">
              France
            </option>
            <option id="item10_75_option" value="France, Metropolitan">
              France, Metropolitan
            </option>
            <option id="item10_76_option" value="French Guinea">
              French Guinea
            </option>
            <option id="item10_77_option" value="French Polynesia">
              French Polynesia
            </option>
            <option id="item10_78_option" value="French Southern Territories">
              French Southern Territories
            </option>
            <option id="item10_79_option" value="Gabon">
              Gabon
            </option>
            <option id="item10_80_option" value="Gambia">
              Gambia
            </option>
            <option id="item10_81_option" value="Georgia">
              Georgia
            </option>
            <option id="item10_82_option" value="Germany">
              Germany
            </option>
            <option id="item10_83_option" value="Ghana">
              Ghana
            </option>
            <option id="item10_84_option" value="Gibraltar">
              Gibraltar
            </option>
            <option id="item10_85_option" value="Greece">
              Greece
            </option>
            <option id="item10_86_option" value="Greenland">
              Greenland
            </option>
            <option id="item10_87_option" value="Grenada">
              Grenada
            </option>
            <option id="item10_88_option" value="Guadeloupe">
              Guadeloupe
            </option>
            <option id="item10_89_option" value="Guam">
              Guam
            </option>
            <option id="item10_90_option" value="Guatemala">
              Guatemala
            </option>
            <option id="item10_91_option" value="Guinea">
              Guinea
            </option>
            <option id="item10_92_option" value="Guinea-Bissau">
              Guinea-Bissau
            </option>
            <option id="item10_93_option" value="Guyana">
              Guyana
            </option>
            <option id="item10_94_option" value="Haiti">
              Haiti
            </option>
            <option id="item10_95_option" value="Heard And McDonald Islands">
              Heard And McDonald Islands
            </option>
            <option id="item10_96_option" value="Honduras">
              Honduras
            </option>
            <option id="item10_97_option" value="Hong Kong">
              Hong Kong
            </option>
            <option id="item10_98_option" value="Hungary">
              Hungary
            </option>
            <option id="item10_99_option" value="Iceland">
              Iceland
            </option>
            <option id="item10_100_option" value="India">
              India
            </option>
            <option id="item10_101_option" value="Indonesia">
              Indonesia
            </option>
            <option id="item10_102_option" value="Iran">
              Iran
            </option>
            <option id="item10_103_option" value="Iraq">
              Iraq
            </option>
            <option id="item10_104_option" value="Ireland">
              Ireland
            </option>
            <option id="item10_105_option" value="Israel">
              Israel
            </option>
            <option id="item10_106_option" value="Italy">
              Italy
            </option>
            <option id="item10_107_option" value="Jamaica">
              Jamaica
            </option>
            <option id="item10_108_option" value="Japan">
              Japan
            </option>
            <option id="item10_109_option" value="Jordan">
              Jordan
            </option>
            <option id="item10_110_option" value="Kazakhstan">
              Kazakhstan
            </option>
            <option id="item10_111_option" value="Kenya">
              Kenya
            </option>
            <option id="item10_112_option" value="Kiribati">
              Kiribati
            </option>
            <option id="item10_113_option" value="Kosovo">
              Kosovo
            </option>
            <option id="item10_114_option" value="Kuwait">
              Kuwait
            </option>
            <option id="item10_115_option" value="Kyrgyzstan">
              Kyrgyzstan
            </option>
            <option id="item10_116_option" value="Laos">
              Laos
            </option>
            <option id="item10_117_option" value="Latvia">
              Latvia
            </option>
            <option id="item10_118_option" value="Lebanon">
              Lebanon
            </option>
            <option id="item10_119_option" value="Lesotho">
              Lesotho
            </option>
            <option id="item10_120_option" value="Liberia">
              Liberia
            </option>
            <option id="item10_121_option" value="Libya">
              Libya
            </option>
            <option id="item10_122_option" value="Liechtenstein">
              Liechtenstein
            </option>
            <option id="item10_123_option" value="Lithuania">
              Lithuania
            </option>
            <option id="item10_124_option" value="Luxembourg">
              Luxembourg
            </option>
            <option id="item10_125_option" value="Macau">
              Macau
            </option>
            <option id="item10_126_option" value="Macedonia">
              Macedonia
            </option>
            <option id="item10_127_option" value="Madagascar">
              Madagascar
            </option>
            <option id="item10_128_option" value="Malawi">
              Malawi
            </option>
            <option id="item10_129_option" value="Malaysia">
              Malaysia
            </option>
            <option id="item10_130_option" value="Maldives">
              Maldives
            </option>
            <option id="item10_131_option" value="Mali">
              Mali
            </option>
            <option id="item10_132_option" value="Malta">
              Malta
            </option>
            <option id="item10_133_option" value="Marshall Islands">
              Marshall Islands
            </option>
            <option id="item10_134_option" value="Martinique">
              Martinique
            </option>
            <option id="item10_135_option" value="Mauritania">
              Mauritania
            </option>
            <option id="item10_136_option" value="Mauritius">
              Mauritius
            </option>
            <option id="item10_137_option" value="Mayotte">
              Mayotte
            </option>
            <option id="item10_138_option" value="Mexico">
              Mexico
            </option>
            <option id="item10_139_option" value="Micronesia">
              Micronesia
            </option>
            <option id="item10_140_option" value="Moldova">
              Moldova
            </option>
            <option id="item10_141_option" value="Monaco">
              Monaco
            </option>
            <option id="item10_142_option" value="Mongolia">
              Mongolia
            </option>
            <option id="item10_143_option" value="Montserrat">
              Montserrat
            </option>
            <option id="item10_144_option" value="Morocco">
              Morocco
            </option>
            <option id="item10_145_option" value="Mozambique">
              Mozambique
            </option>
            <option id="item10_146_option" value="Myanmar (Burma)">
              Myanmar (Burma)
            </option>
            <option id="item10_147_option" value="Namibia">
              Namibia
            </option>
            <option id="item10_148_option" value="Nauru">
              Nauru
            </option>
            <option id="item10_149_option" value="Nepal">
              Nepal
            </option>
            <option id="item10_150_option" value="Netherlands">
              Netherlands
            </option>
            <option id="item10_151_option" value="Netherlands Antilles">
              Netherlands Antilles
            </option>
            <option id="item10_152_option" value="New Caledonia">
              New Caledonia
            </option>
            <option id="item10_153_option" value="New Zealand">
              New Zealand
            </option>
            <option id="item10_154_option" value="Nicaragua">
              Nicaragua
            </option>
            <option id="item10_155_option" value="Niger">
              Niger
            </option>
            <option id="item10_156_option" value="Nigeria">
              Nigeria
            </option>
            <option id="item10_157_option" value="Niue">
              Niue
            </option>
            <option id="item10_158_option" value="Norfolk Island">
              Norfolk Island
            </option>
            <option id="item10_159_option" value="North Korea">
              North Korea
            </option>
            <option id="item10_160_option" value="Northern Mariana Islands">
              Northern Mariana Islands
            </option>
            <option id="item10_161_option" value="Norway">
              Norway
            </option>
            <option id="item10_162_option" value="Oman">
              Oman
            </option>
            <option id="item10_163_option" value="Pakistan">
              Pakistan
            </option>
            <option id="item10_164_option" value="Palau">
              Palau
            </option>
            <option id="item10_165_option" value="Panama">
              Panama
            </option>
            <option id="item10_166_option" value="Papua New Guinea">
              Papua New Guinea
            </option>
            <option id="item10_167_option" value="Paraguay">
              Paraguay
            </option>
            <option id="item10_168_option" value="Peru">
              Peru
            </option>
            <option id="item10_169_option" value="Philippines">
              Philippines
            </option>
            <option id="item10_170_option" value="Pitcairn">
              Pitcairn
            </option>
            <option id="item10_171_option" value="Poland">
              Poland
            </option>
            <option id="item10_172_option" value="Portugal">
              Portugal
            </option>
            <option id="item10_173_option" value="Puerto Rico">
              Puerto Rico
            </option>
            <option id="item10_174_option" value="Qatar">
              Qatar
            </option>
            <option id="item10_175_option" value="Reunion">
              Reunion
            </option>
            <option id="item10_176_option" value="Romania">
              Romania
            </option>
            <option id="item10_177_option" value="Russia">
              Russia
            </option>
            <option id="item10_178_option" value="Rwanda">
              Rwanda
            </option>
            <option id="item10_179_option" value="Saint Helena">
              Saint Helena
            </option>
            <option id="item10_180_option" value="Saint Kitts And Nevis">
              Saint Kitts And Nevis
            </option>
            <option id="item10_181_option" value="Saint Lucia">
              Saint Lucia
            </option>
            <option id="item10_182_option" value="Saint Pierre And Miquelon">
              Saint Pierre And Miquelon
            </option>
            <option id="item10_183_option" value="Saint Vincent And The Grenadines">
              Saint Vincent And The Grenadines
            </option>
            <option id="item10_184_option" value="San Marino">
              San Marino
            </option>
            <option id="item10_185_option" value="Sao Tome And Principe">
              Sao Tome And Principe
            </option>
            <option id="item10_186_option" value="Saudi Arabia">
              Saudi Arabia
            </option>
            <option id="item10_187_option" value="Senegal">
              Senegal
            </option>
            <option id="item10_188_option" value="Seychelles">
              Seychelles
            </option>
            <option id="item10_189_option" value="Sierra Leone">
              Sierra Leone
            </option>
            <option id="item10_190_option" value="Singapore">
              Singapore
            </option>
            <option id="item10_191_option" value="Slovak Republic">
              Slovak Republic
            </option>
            <option id="item10_192_option" value="Slovenia">
              Slovenia
            </option>
            <option id="item10_193_option" value="Solomon Islands">
              Solomon Islands
            </option>
            <option id="item10_194_option" value="Somalia">
              Somalia
            </option>
            <option id="item10_195_option" value="South Africa">
              South Africa
            </option>
            <option id="item10_196_option" value="South Georgia And South Sandwich Islands">
              South Georgia And South Sandwich Islands
            </option>
            <option id="item10_197_option" value="South Korea">
              South Korea
            </option>
            <option id="item10_198_option" value="Spain">
              Spain
            </option>
            <option id="item10_199_option" value="Sri Lanka">
              Sri Lanka
            </option>
            <option id="item10_200_option" value="Sudan">
              Sudan
            </option>
            <option id="item10_201_option" value="Suriname">
              Suriname
            </option>
            <option id="item10_202_option" value="Svalbard And Jan Mayen">
              Svalbard And Jan Mayen
            </option>
            <option id="item10_203_option" value="Swaziland">
              Swaziland
            </option>
            <option id="item10_204_option" value="Sweden">
              Sweden
            </option>
            <option id="item10_205_option" value="Switzerland">
              Switzerland
            </option>
            <option id="item10_206_option" value="Syria">
              Syria
            </option>
            <option id="item10_207_option" value="Taiwan">
              Taiwan
            </option>
            <option id="item10_208_option" value="Tajikistan">
              Tajikistan
            </option>
            <option id="item10_209_option" value="Tanzania">
              Tanzania
            </option>
            <option id="item10_210_option" value="Thailand">
              Thailand
            </option>
            <option id="item10_211_option" value="Togo">
              Togo
            </option>
            <option id="item10_212_option" value="Tokelau">
              Tokelau
            </option>
            <option id="item10_213_option" value="Tonga">
              Tonga
            </option>
            <option id="item10_214_option" value="Trinidad And Tobago">
              Trinidad And Tobago
            </option>
            <option id="item10_215_option" value="Tunisia">
              Tunisia
            </option>
            <option id="item10_216_option" value="Turkey">
              Turkey
            </option>
            <option id="item10_217_option" value="Turkmenistan">
              Turkmenistan
            </option>
            <option id="item10_218_option" value="Turks And Caicos Islands">
              Turks And Caicos Islands
            </option>
            <option id="item10_219_option" value="Tuvalu">
              Tuvalu
            </option>
            <option id="item10_220_option" value="Uganda">
              Uganda
            </option>
            <option id="item10_221_option" value="Ukraine">
              Ukraine
            </option>
            <option id="item10_222_option" value="United Arab Emirates">
              United Arab Emirates
            </option>
            <option id="item10_223_option" value="United Kingdom">
              United Kingdom
            </option>
            <option id="item10_224_option" value="United States">
              United States
            </option>
            <option id="item10_225_option" value="United States Minor Outlying Islands">
              United States Minor Outlying Islands
            </option>
            <option id="item10_226_option" value="Uruguay">
              Uruguay
            </option>
            <option id="item10_227_option" value="Uzbekistan">
              Uzbekistan
            </option>
            <option id="item10_228_option" value="Vanuatu">
              Vanuatu
            </option>
            <option id="item10_229_option" value="Vatican City (Holy See)">
              Vatican City (Holy See)
            </option>
            <option id="item10_230_option" value="Venezuela">
              Venezuela
            </option>
            <option id="item10_231_option" value="Vietnam">
              Vietnam
            </option>
            <option id="item10_232_option" value="Virgin Islands (British)">
              Virgin Islands (British)
            </option>
            <option id="item10_233_option" value="Virgin Islands (US)">
              Virgin Islands (US)
            </option>
            <option id="item10_234_option" value="Wallis And Futuna Islands">
              Wallis And Futuna Islands
            </option>
            <option id="item10_235_option" value="Western Sahara">
              Western Sahara
            </option>
            <option id="item10_236_option" value="Western Samoa">
              Western Samoa
            </option>
            <option id="item10_237_option" value="Yemen">
              Yemen
            </option>
            <option id="item10_238_option" value="Yugoslavia">
              Yugoslavia
            </option>
            <option id="item10_239_option" value="Zambia">
              Zambia
            </option>
            <option id="item10_240_option" value="Zimbabwe">
              Zimbabwe
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item17">
        <div class="fb-grouplabel">
          <label id="item17_label_0" style="display: inline;">Year Of Passing</label>
        </div>
        <div class="fb-input-number">
          <input name="yearofpassing" id="item17_number_1" type="number" min="0"
          max="999999999" step="1" placeholder="Year Of Passing" data-hint="" autocomplete="off"
          />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item12">
        <div class="fb-grouplabel">
          <label id="item12_label_0">Month Of Passing</label>
        </div>
        <div class="fb-dropdown">
          <select name="monthofpassing" id="item12_select_1" required data-hint="">
            <option id="item12_0_option" selected value="">
              Choose one
            </option>
            <option id="item12_1_option" value="Option 1">
              Option 1
            </option>
            <option id="item12_2_option" value="January">
              January
            </option>
            <option id="item12_3_option" value="February">
              February
            </option>
            <option id="item12_4_option" value="March">
              March
            </option>
            <option id="item12_5_option" value="April">
              April
            </option>
            <option id="item12_6_option" value="May">
              May
            </option>
            <option id="item12_7_option" value="June">
              June
            </option>
            <option id="item12_8_option" value="July">
              July
            </option>
            <option id="item12_9_option" value="August">
              August
            </option>
            <option id="item12_10_option" value="September">
              September
            </option>
            <option id="item12_11_option" value="October">
              October
            </option>
            <option id="item12_12_option" value="November">
              November
            </option>
            <option id="item12_13_option" value="December">
              December
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item13">
        <div class="fb-grouplabel">
          <label id="item13_label_0" style="display: inline;">US Sevis Number(If applicable)</label>
        </div>
        <div class="fb-input-box">
          <input name="ussevisnumber" id="item13_text_1" type="text" maxlength="254"
          placeholder="University/School/College" data-hint="" autocomplete="off"
          />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item14">
        <div class="fb-grouplabel">
          <label id="item14_label_0" style="display: inline;">G.P.A/Percentage</label>
        </div>
        <div class="fb-input-box">
          <input name="gpa" id="item14_text_1" required type="text" maxlength="254"
          placeholder="G.P.A/Percentage" data-hint="" autocomplete="off" />
        </div>
      </div>
    </div>
  </div>
  <div class="fb-captcha fb-item-alignment-center" id="fb-captcha_control"
  style="display: none; cursor: default;">
    <img src="http://localhost:854/LoginPage/assets/educationformjsfiles/editordata/images/recaptchawhite.png" />
  </div>
 <div class="fb-footer fb-item-alignment-center" id="fb-submit-button-div"
  style="min-height: 1px;">
    <input class="fb-button-special" id="fb-submit-button" style="border-width: 0px; font-family: Helvetica, Arial; font-size: 11px;background-image: url('http://localhost:854/LoginPage/assets/passportformjsfiles/theme/default/images/btn_submit.png');"
    type="submit" data-regular="url('http://localhost:854/LoginPage/assets/passportformjsfiles/theme/default/images/btn_submit.png')"
    value="SaveAndContinue" />
  </div>
</form>
<div class="btn-group btn-group btn-group-justified">
                                                                 <a href="javascript:;" class="btn red"> Back </a>
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
        <script src="http://localhost:854/LoginPage/assets/educationformjsfiles/formvalidation.js"></script>
        <!--[if lt IE 9]>
<script src="http://localhost:854/LoginPage/assets/global/plugins/respond.min.js"></script>
<script src="http://localhost:854/LoginPage/assets/global/plugins/excanvas.min.js"></script> 
<script src="http://localhost:854/LoginPage/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        
    </body>

</html>