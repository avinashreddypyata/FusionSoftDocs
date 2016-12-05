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
                                        <li aria-haspopup="true" class="menu-dropdown mega-menu-dropdown active ">
                                            <a>Application
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
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
                                        <li>
                                       <a>Education
                                               
                                            </a>
                                        </li>
                                        <li>
                                      <a>Experience
                                                
                                            </a>
                                        </li>
                                        <li>
                                      <a>Certification
                                          
                                            </a>
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
                                 <form class="fb-toplabel fb-100-item-column fb-large selected-object"
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
      <div class="fb-item fb-33-item-column" id="item2">
        <div class="fb-grouplabel">
          <label id="item2_label_0" style="color: rgb(10, 10, 10); display: inline;">Application Type</label>
        </div>
        <div class="fb-dropdown">
          <select name="applicationtype" id="item2_select_1" required data-hint="">
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
      <div class="fb-item fb-50-item-column" id="item3">
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
      <div class="fb-item fb-50-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">First Name</label>
        </div>
        <div class="fb-input-box">
          <input name="firstname" id="item4_text_1" required type="text" maxlength="254"
          placeholder="First Name" data-hint="" autocomplete="on" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Middle Name</label>
        </div>
        <div class="fb-input-box">
          <input name="middlename" id="item5_text_1" type="text" maxlength="254"
          placeholder="middlename" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Last Name</label>
        </div>
        <div class="fb-input-box">
          <input name="lastname" id="item6_text_1" required type="text" maxlength="254"
          placeholder="Last Name" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item7">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Maiden Name(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <input name="maidenname" id="item7_text_1" type="text" maxlength="254"
          placeholder="Maiden Name" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item8">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">Full Name(Exactly As In Passport)</label>
        </div>
        <div class="fb-input-box">
          <input name="fullname" id="item8_text_1" required type="text" maxlength="254"
          placeholder="Full Name" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item10" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item10_label_0" style="display: inline;">Date Of Birth</label>
        </div>
        <div class="fb-input-date">
          <input name="dateofbirth" class="datepicker" id="item10_date_1" type="text"
          data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item21">
        <div class="fb-grouplabel">
          <label id="item21_label_0" style="display: inline;">Country Of Birth</label>
        </div>
        <div class="fb-dropdown">
          <select name="countryofbirth" id="item21_select_1" required data-hint="">
            <option id="item21_0_option" selected value="">
              Choose one
            </option>
            <option id="item21_1_option" value="Afghanistan">
              Afghanistan
            </option>
            <option id="item21_2_option" value="Albania">
              Albania
            </option>
            <option id="item21_3_option" value="Algeria">
              Algeria
            </option>
            <option id="item21_4_option" value="American Samoa">
              American Samoa
            </option>
            <option id="item21_5_option" value="Andorra">
              Andorra
            </option>
            <option id="item21_6_option" value="Angola">
              Angola
            </option>
            <option id="item21_7_option" value="Anguilla">
              Anguilla
            </option>
            <option id="item21_8_option" value="Antarctica">
              Antarctica
            </option>
            <option id="item21_9_option" value="Antigua And Barbuda">
              Antigua And Barbuda
            </option>
            <option id="item21_10_option" value="Argentina">
              Argentina
            </option>
            <option id="item21_11_option" value="Armenia">
              Armenia
            </option>
            <option id="item21_12_option" value="Aruba">
              Aruba
            </option>
            <option id="item21_13_option" value="Australia">
              Australia
            </option>
            <option id="item21_14_option" value="Austria">
              Austria
            </option>
            <option id="item21_15_option" value="Azerbaijan">
              Azerbaijan
            </option>
            <option id="item21_16_option" value="Bahamas">
              Bahamas
            </option>
            <option id="item21_17_option" value="Bahrain">
              Bahrain
            </option>
            <option id="item21_18_option" value="Bangladesh">
              Bangladesh
            </option>
            <option id="item21_19_option" value="Barbados">
              Barbados
            </option>
            <option id="item21_20_option" value="Belarus">
              Belarus
            </option>
            <option id="item21_21_option" value="Belgium">
              Belgium
            </option>
            <option id="item21_22_option" value="Belize">
              Belize
            </option>
            <option id="item21_23_option" value="Benin">
              Benin
            </option>
            <option id="item21_24_option" value="Bermuda">
              Bermuda
            </option>
            <option id="item21_25_option" value="Bhutan">
              Bhutan
            </option>
            <option id="item21_26_option" value="Bolivia">
              Bolivia
            </option>
            <option id="item21_27_option" value="Bosnia And Herzegovina">
              Bosnia And Herzegovina
            </option>
            <option id="item21_28_option" value="Botswana">
              Botswana
            </option>
            <option id="item21_29_option" value="Bouvet Island">
              Bouvet Island
            </option>
            <option id="item21_30_option" value="Brazil">
              Brazil
            </option>
            <option id="item21_31_option" value="British Indian Ocean Territory">
              British Indian Ocean Territory
            </option>
            <option id="item21_32_option" value="Brunei">
              Brunei
            </option>
            <option id="item21_33_option" value="Bulgaria">
              Bulgaria
            </option>
            <option id="item21_34_option" value="Burkina Faso">
              Burkina Faso
            </option>
            <option id="item21_35_option" value="Burundi">
              Burundi
            </option>
            <option id="item21_36_option" value="Cambodia">
              Cambodia
            </option>
            <option id="item21_37_option" value="Cameroon">
              Cameroon
            </option>
            <option id="item21_38_option" value="Canada">
              Canada
            </option>
            <option id="item21_39_option" value="Cape Verde">
              Cape Verde
            </option>
            <option id="item21_40_option" value="Cayman Islands">
              Cayman Islands
            </option>
            <option id="item21_41_option" value="Central African Republic">
              Central African Republic
            </option>
            <option id="item21_42_option" value="Chad">
              Chad
            </option>
            <option id="item21_43_option" value="Chile">
              Chile
            </option>
            <option id="item21_44_option" value="China">
              China
            </option>
            <option id="item21_45_option" value="Christmas Island">
              Christmas Island
            </option>
            <option id="item21_46_option" value="Cocos (Keeling) Islands">
              Cocos (Keeling) Islands
            </option>
            <option id="item21_47_option" value="Columbia">
              Columbia
            </option>
            <option id="item21_48_option" value="Comoros">
              Comoros
            </option>
            <option id="item21_49_option" value="Congo">
              Congo
            </option>
            <option id="item21_50_option" value="Cook Islands">
              Cook Islands
            </option>
            <option id="item21_51_option" value="Costa Rica">
              Costa Rica
            </option>
            <option id="item21_52_option" value="Cote D&#39;Ivorie (Ivory Coast)">
              Cote D&#39;Ivorie (Ivory Coast)
            </option>
            <option id="item21_53_option" value="Croatia (Hrvatska)">
              Croatia (Hrvatska)
            </option>
            <option id="item21_54_option" value="Cuba">
              Cuba
            </option>
            <option id="item21_55_option" value="Cyprus">
              Cyprus
            </option>
            <option id="item21_56_option" value="Czech Republic">
              Czech Republic
            </option>
            <option id="item21_57_option" value="Democratic Republic Of Congo (Zaire)">
              Democratic Republic Of Congo (Zaire)
            </option>
            <option id="item21_58_option" value="Denmark">
              Denmark
            </option>
            <option id="item21_59_option" value="Djibouti">
              Djibouti
            </option>
            <option id="item21_60_option" value="Dominica">
              Dominica
            </option>
            <option id="item21_61_option" value="Dominican Republic">
              Dominican Republic
            </option>
            <option id="item21_62_option" value="East Timor">
              East Timor
            </option>
            <option id="item21_63_option" value="Ecuador">
              Ecuador
            </option>
            <option id="item21_64_option" value="Egypt">
              Egypt
            </option>
            <option id="item21_65_option" value="El Salvador">
              El Salvador
            </option>
            <option id="item21_66_option" value="Equatorial Guinea">
              Equatorial Guinea
            </option>
            <option id="item21_67_option" value="Eritrea">
              Eritrea
            </option>
            <option id="item21_68_option" value="Estonia">
              Estonia
            </option>
            <option id="item21_69_option" value="Ethiopia">
              Ethiopia
            </option>
            <option id="item21_70_option" value="Falkland Islands (Malvinas)">
              Falkland Islands (Malvinas)
            </option>
            <option id="item21_71_option" value="Faroe Islands">
              Faroe Islands
            </option>
            <option id="item21_72_option" value="Fiji">
              Fiji
            </option>
            <option id="item21_73_option" value="Finland">
              Finland
            </option>
            <option id="item21_74_option" value="France">
              France
            </option>
            <option id="item21_75_option" value="France, Metropolitan">
              France, Metropolitan
            </option>
            <option id="item21_76_option" value="French Guinea">
              French Guinea
            </option>
            <option id="item21_77_option" value="French Polynesia">
              French Polynesia
            </option>
            <option id="item21_78_option" value="French Southern Territories">
              French Southern Territories
            </option>
            <option id="item21_79_option" value="Gabon">
              Gabon
            </option>
            <option id="item21_80_option" value="Gambia">
              Gambia
            </option>
            <option id="item21_81_option" value="Georgia">
              Georgia
            </option>
            <option id="item21_82_option" value="Germany">
              Germany
            </option>
            <option id="item21_83_option" value="Ghana">
              Ghana
            </option>
            <option id="item21_84_option" value="Gibraltar">
              Gibraltar
            </option>
            <option id="item21_85_option" value="Greece">
              Greece
            </option>
            <option id="item21_86_option" value="Greenland">
              Greenland
            </option>
            <option id="item21_87_option" value="Grenada">
              Grenada
            </option>
            <option id="item21_88_option" value="Guadeloupe">
              Guadeloupe
            </option>
            <option id="item21_89_option" value="Guam">
              Guam
            </option>
            <option id="item21_90_option" value="Guatemala">
              Guatemala
            </option>
            <option id="item21_91_option" value="Guinea">
              Guinea
            </option>
            <option id="item21_92_option" value="Guinea-Bissau">
              Guinea-Bissau
            </option>
            <option id="item21_93_option" value="Guyana">
              Guyana
            </option>
            <option id="item21_94_option" value="Haiti">
              Haiti
            </option>
            <option id="item21_95_option" value="Heard And McDonald Islands">
              Heard And McDonald Islands
            </option>
            <option id="item21_96_option" value="Honduras">
              Honduras
            </option>
            <option id="item21_97_option" value="Hong Kong">
              Hong Kong
            </option>
            <option id="item21_98_option" value="Hungary">
              Hungary
            </option>
            <option id="item21_99_option" value="Iceland">
              Iceland
            </option>
            <option id="item21_100_option" value="India">
              India
            </option>
            <option id="item21_101_option" value="Indonesia">
              Indonesia
            </option>
            <option id="item21_102_option" value="Iran">
              Iran
            </option>
            <option id="item21_103_option" value="Iraq">
              Iraq
            </option>
            <option id="item21_104_option" value="Ireland">
              Ireland
            </option>
            <option id="item21_105_option" value="Israel">
              Israel
            </option>
            <option id="item21_106_option" value="Italy">
              Italy
            </option>
            <option id="item21_107_option" value="Jamaica">
              Jamaica
            </option>
            <option id="item21_108_option" value="Japan">
              Japan
            </option>
            <option id="item21_109_option" value="Jordan">
              Jordan
            </option>
            <option id="item21_110_option" value="Kazakhstan">
              Kazakhstan
            </option>
            <option id="item21_111_option" value="Kenya">
              Kenya
            </option>
            <option id="item21_112_option" value="Kiribati">
              Kiribati
            </option>
            <option id="item21_113_option" value="Kosovo">
              Kosovo
            </option>
            <option id="item21_114_option" value="Kuwait">
              Kuwait
            </option>
            <option id="item21_115_option" value="Kyrgyzstan">
              Kyrgyzstan
            </option>
            <option id="item21_116_option" value="Laos">
              Laos
            </option>
            <option id="item21_117_option" value="Latvia">
              Latvia
            </option>
            <option id="item21_118_option" value="Lebanon">
              Lebanon
            </option>
            <option id="item21_119_option" value="Lesotho">
              Lesotho
            </option>
            <option id="item21_120_option" value="Liberia">
              Liberia
            </option>
            <option id="item21_121_option" value="Libya">
              Libya
            </option>
            <option id="item21_122_option" value="Liechtenstein">
              Liechtenstein
            </option>
            <option id="item21_123_option" value="Lithuania">
              Lithuania
            </option>
            <option id="item21_124_option" value="Luxembourg">
              Luxembourg
            </option>
            <option id="item21_125_option" value="Macau">
              Macau
            </option>
            <option id="item21_126_option" value="Macedonia">
              Macedonia
            </option>
            <option id="item21_127_option" value="Madagascar">
              Madagascar
            </option>
            <option id="item21_128_option" value="Malawi">
              Malawi
            </option>
            <option id="item21_129_option" value="Malaysia">
              Malaysia
            </option>
            <option id="item21_130_option" value="Maldives">
              Maldives
            </option>
            <option id="item21_131_option" value="Mali">
              Mali
            </option>
            <option id="item21_132_option" value="Malta">
              Malta
            </option>
            <option id="item21_133_option" value="Marshall Islands">
              Marshall Islands
            </option>
            <option id="item21_134_option" value="Martinique">
              Martinique
            </option>
            <option id="item21_135_option" value="Mauritania">
              Mauritania
            </option>
            <option id="item21_136_option" value="Mauritius">
              Mauritius
            </option>
            <option id="item21_137_option" value="Mayotte">
              Mayotte
            </option>
            <option id="item21_138_option" value="Mexico">
              Mexico
            </option>
            <option id="item21_139_option" value="Micronesia">
              Micronesia
            </option>
            <option id="item21_140_option" value="Moldova">
              Moldova
            </option>
            <option id="item21_141_option" value="Monaco">
              Monaco
            </option>
            <option id="item21_142_option" value="Mongolia">
              Mongolia
            </option>
            <option id="item21_143_option" value="Montserrat">
              Montserrat
            </option>
            <option id="item21_144_option" value="Morocco">
              Morocco
            </option>
            <option id="item21_145_option" value="Mozambique">
              Mozambique
            </option>
            <option id="item21_146_option" value="Myanmar (Burma)">
              Myanmar (Burma)
            </option>
            <option id="item21_147_option" value="Namibia">
              Namibia
            </option>
            <option id="item21_148_option" value="Nauru">
              Nauru
            </option>
            <option id="item21_149_option" value="Nepal">
              Nepal
            </option>
            <option id="item21_150_option" value="Netherlands">
              Netherlands
            </option>
            <option id="item21_151_option" value="Netherlands Antilles">
              Netherlands Antilles
            </option>
            <option id="item21_152_option" value="New Caledonia">
              New Caledonia
            </option>
            <option id="item21_153_option" value="New Zealand">
              New Zealand
            </option>
            <option id="item21_154_option" value="Nicaragua">
              Nicaragua
            </option>
            <option id="item21_155_option" value="Niger">
              Niger
            </option>
            <option id="item21_156_option" value="Nigeria">
              Nigeria
            </option>
            <option id="item21_157_option" value="Niue">
              Niue
            </option>
            <option id="item21_158_option" value="Norfolk Island">
              Norfolk Island
            </option>
            <option id="item21_159_option" value="North Korea">
              North Korea
            </option>
            <option id="item21_160_option" value="Northern Mariana Islands">
              Northern Mariana Islands
            </option>
            <option id="item21_161_option" value="Norway">
              Norway
            </option>
            <option id="item21_162_option" value="Oman">
              Oman
            </option>
            <option id="item21_163_option" value="Pakistan">
              Pakistan
            </option>
            <option id="item21_164_option" value="Palau">
              Palau
            </option>
            <option id="item21_165_option" value="Panama">
              Panama
            </option>
            <option id="item21_166_option" value="Papua New Guinea">
              Papua New Guinea
            </option>
            <option id="item21_167_option" value="Paraguay">
              Paraguay
            </option>
            <option id="item21_168_option" value="Peru">
              Peru
            </option>
            <option id="item21_169_option" value="Philippines">
              Philippines
            </option>
            <option id="item21_170_option" value="Pitcairn">
              Pitcairn
            </option>
            <option id="item21_171_option" value="Poland">
              Poland
            </option>
            <option id="item21_172_option" value="Portugal">
              Portugal
            </option>
            <option id="item21_173_option" value="Puerto Rico">
              Puerto Rico
            </option>
            <option id="item21_174_option" value="Qatar">
              Qatar
            </option>
            <option id="item21_175_option" value="Reunion">
              Reunion
            </option>
            <option id="item21_176_option" value="Romania">
              Romania
            </option>
            <option id="item21_177_option" value="Russia">
              Russia
            </option>
            <option id="item21_178_option" value="Rwanda">
              Rwanda
            </option>
            <option id="item21_179_option" value="Saint Helena">
              Saint Helena
            </option>
            <option id="item21_180_option" value="Saint Kitts And Nevis">
              Saint Kitts And Nevis
            </option>
            <option id="item21_181_option" value="Saint Lucia">
              Saint Lucia
            </option>
            <option id="item21_182_option" value="Saint Pierre And Miquelon">
              Saint Pierre And Miquelon
            </option>
            <option id="item21_183_option" value="Saint Vincent And The Grenadines">
              Saint Vincent And The Grenadines
            </option>
            <option id="item21_184_option" value="San Marino">
              San Marino
            </option>
            <option id="item21_185_option" value="Sao Tome And Principe">
              Sao Tome And Principe
            </option>
            <option id="item21_186_option" value="Saudi Arabia">
              Saudi Arabia
            </option>
            <option id="item21_187_option" value="Senegal">
              Senegal
            </option>
            <option id="item21_188_option" value="Seychelles">
              Seychelles
            </option>
            <option id="item21_189_option" value="Sierra Leone">
              Sierra Leone
            </option>
            <option id="item21_190_option" value="Singapore">
              Singapore
            </option>
            <option id="item21_191_option" value="Slovak Republic">
              Slovak Republic
            </option>
            <option id="item21_192_option" value="Slovenia">
              Slovenia
            </option>
            <option id="item21_193_option" value="Solomon Islands">
              Solomon Islands
            </option>
            <option id="item21_194_option" value="Somalia">
              Somalia
            </option>
            <option id="item21_195_option" value="South Africa">
              South Africa
            </option>
            <option id="item21_196_option" value="South Georgia And South Sandwich Islands">
              South Georgia And South Sandwich Islands
            </option>
            <option id="item21_197_option" value="South Korea">
              South Korea
            </option>
            <option id="item21_198_option" value="Spain">
              Spain
            </option>
            <option id="item21_199_option" value="Sri Lanka">
              Sri Lanka
            </option>
            <option id="item21_200_option" value="Sudan">
              Sudan
            </option>
            <option id="item21_201_option" value="Suriname">
              Suriname
            </option>
            <option id="item21_202_option" value="Svalbard And Jan Mayen">
              Svalbard And Jan Mayen
            </option>
            <option id="item21_203_option" value="Swaziland">
              Swaziland
            </option>
            <option id="item21_204_option" value="Sweden">
              Sweden
            </option>
            <option id="item21_205_option" value="Switzerland">
              Switzerland
            </option>
            <option id="item21_206_option" value="Syria">
              Syria
            </option>
            <option id="item21_207_option" value="Taiwan">
              Taiwan
            </option>
            <option id="item21_208_option" value="Tajikistan">
              Tajikistan
            </option>
            <option id="item21_209_option" value="Tanzania">
              Tanzania
            </option>
            <option id="item21_210_option" value="Thailand">
              Thailand
            </option>
            <option id="item21_211_option" value="Togo">
              Togo
            </option>
            <option id="item21_212_option" value="Tokelau">
              Tokelau
            </option>
            <option id="item21_213_option" value="Tonga">
              Tonga
            </option>
            <option id="item21_214_option" value="Trinidad And Tobago">
              Trinidad And Tobago
            </option>
            <option id="item21_215_option" value="Tunisia">
              Tunisia
            </option>
            <option id="item21_216_option" value="Turkey">
              Turkey
            </option>
            <option id="item21_217_option" value="Turkmenistan">
              Turkmenistan
            </option>
            <option id="item21_218_option" value="Turks And Caicos Islands">
              Turks And Caicos Islands
            </option>
            <option id="item21_219_option" value="Tuvalu">
              Tuvalu
            </option>
            <option id="item21_220_option" value="Uganda">
              Uganda
            </option>
            <option id="item21_221_option" value="Ukraine">
              Ukraine
            </option>
            <option id="item21_222_option" value="United Arab Emirates">
              United Arab Emirates
            </option>
            <option id="item21_223_option" value="United Kingdom">
              United Kingdom
            </option>
            <option id="item21_224_option" value="United States">
              United States
            </option>
            <option id="item21_225_option" value="United States Minor Outlying Islands">
              United States Minor Outlying Islands
            </option>
            <option id="item21_226_option" value="Uruguay">
              Uruguay
            </option>
            <option id="item21_227_option" value="Uzbekistan">
              Uzbekistan
            </option>
            <option id="item21_228_option" value="Vanuatu">
              Vanuatu
            </option>
            <option id="item21_229_option" value="Vatican City (Holy See)">
              Vatican City (Holy See)
            </option>
            <option id="item21_230_option" value="Venezuela">
              Venezuela
            </option>
            <option id="item21_231_option" value="Vietnam">
              Vietnam
            </option>
            <option id="item21_232_option" value="Virgin Islands (British)">
              Virgin Islands (British)
            </option>
            <option id="item21_233_option" value="Virgin Islands (US)">
              Virgin Islands (US)
            </option>
            <option id="item21_234_option" value="Wallis And Futuna Islands">
              Wallis And Futuna Islands
            </option>
            <option id="item21_235_option" value="Western Sahara">
              Western Sahara
            </option>
            <option id="item21_236_option" value="Western Samoa">
              Western Samoa
            </option>
            <option id="item21_237_option" value="Yemen">
              Yemen
            </option>
            <option id="item21_238_option" value="Yugoslavia">
              Yugoslavia
            </option>
            <option id="item21_239_option" value="Zambia">
              Zambia
            </option>
            <option id="item21_240_option" value="Zimbabwe">
              Zimbabwe
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item22">
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
      <div class="fb-item fb-50-item-column" id="item23">
        <div class="fb-grouplabel">
          <label id="item23_label_0" style="display: inline;">Citizenship</label>
        </div>
        <div class="fb-dropdown">
          <select name="citizenship" id="item23_select_1" required data-hint="">
            <option id="item23_0_option" selected value="">
              Choose one
            </option>
            <option id="item23_1_option" selected value="Afghanistan">
              Afghanistan
            </option>
            <option id="item23_2_option" value="Albania">
              Albania
            </option>
            <option id="item23_3_option" value="Algeria">
              Algeria
            </option>
            <option id="item23_4_option" value="American Samoa">
              American Samoa
            </option>
            <option id="item23_5_option" value="Andorra">
              Andorra
            </option>
            <option id="item23_6_option" value="Angola">
              Angola
            </option>
            <option id="item23_7_option" value="Anguilla">
              Anguilla
            </option>
            <option id="item23_8_option" value="Antarctica">
              Antarctica
            </option>
            <option id="item23_9_option" value="Antigua And Barbuda">
              Antigua And Barbuda
            </option>
            <option id="item23_10_option" value="Argentina">
              Argentina
            </option>
            <option id="item23_11_option" value="Armenia">
              Armenia
            </option>
            <option id="item23_12_option" value="Aruba">
              Aruba
            </option>
            <option id="item23_13_option" value="Australia">
              Australia
            </option>
            <option id="item23_14_option" value="Austria">
              Austria
            </option>
            <option id="item23_15_option" value="Azerbaijan">
              Azerbaijan
            </option>
            <option id="item23_16_option" value="Bahamas">
              Bahamas
            </option>
            <option id="item23_17_option" value="Bahrain">
              Bahrain
            </option>
            <option id="item23_18_option" value="Bangladesh">
              Bangladesh
            </option>
            <option id="item23_19_option" value="Barbados">
              Barbados
            </option>
            <option id="item23_20_option" value="Belarus">
              Belarus
            </option>
            <option id="item23_21_option" value="Belgium">
              Belgium
            </option>
            <option id="item23_22_option" value="Belize">
              Belize
            </option>
            <option id="item23_23_option" value="Benin">
              Benin
            </option>
            <option id="item23_24_option" value="Bermuda">
              Bermuda
            </option>
            <option id="item23_25_option" value="Bhutan">
              Bhutan
            </option>
            <option id="item23_26_option" value="Bolivia">
              Bolivia
            </option>
            <option id="item23_27_option" value="Bosnia And Herzegovina">
              Bosnia And Herzegovina
            </option>
            <option id="item23_28_option" value="Botswana">
              Botswana
            </option>
            <option id="item23_29_option" value="Bouvet Island">
              Bouvet Island
            </option>
            <option id="item23_30_option" value="Brazil">
              Brazil
            </option>
            <option id="item23_31_option" value="British Indian Ocean Territory">
              British Indian Ocean Territory
            </option>
            <option id="item23_32_option" value="Brunei">
              Brunei
            </option>
            <option id="item23_33_option" value="Bulgaria">
              Bulgaria
            </option>
            <option id="item23_34_option" value="Burkina Faso">
              Burkina Faso
            </option>
            <option id="item23_35_option" value="Burundi">
              Burundi
            </option>
            <option id="item23_36_option" value="Cambodia">
              Cambodia
            </option>
            <option id="item23_37_option" value="Cameroon">
              Cameroon
            </option>
            <option id="item23_38_option" value="Canada">
              Canada
            </option>
            <option id="item23_39_option" value="Cape Verde">
              Cape Verde
            </option>
            <option id="item23_40_option" value="Cayman Islands">
              Cayman Islands
            </option>
            <option id="item23_41_option" value="Central African Republic">
              Central African Republic
            </option>
            <option id="item23_42_option" value="Chad">
              Chad
            </option>
            <option id="item23_43_option" value="Chile">
              Chile
            </option>
            <option id="item23_44_option" value="China">
              China
            </option>
            <option id="item23_45_option" value="Christmas Island">
              Christmas Island
            </option>
            <option id="item23_46_option" value="Cocos (Keeling) Islands">
              Cocos (Keeling) Islands
            </option>
            <option id="item23_47_option" value="Columbia">
              Columbia
            </option>
            <option id="item23_48_option" value="Comoros">
              Comoros
            </option>
            <option id="item23_49_option" value="Congo">
              Congo
            </option>
            <option id="item23_50_option" value="Cook Islands">
              Cook Islands
            </option>
            <option id="item23_51_option" value="Costa Rica">
              Costa Rica
            </option>
            <option id="item23_52_option" value="Cote D&#39;Ivorie (Ivory Coast)">
              Cote D&#39;Ivorie (Ivory Coast)
            </option>
            <option id="item23_53_option" value="Croatia (Hrvatska)">
              Croatia (Hrvatska)
            </option>
            <option id="item23_54_option" value="Cuba">
              Cuba
            </option>
            <option id="item23_55_option" value="Cyprus">
              Cyprus
            </option>
            <option id="item23_56_option" value="Czech Republic">
              Czech Republic
            </option>
            <option id="item23_57_option" value="Democratic Republic Of Congo (Zaire)">
              Democratic Republic Of Congo (Zaire)
            </option>
            <option id="item23_58_option" value="Denmark">
              Denmark
            </option>
            <option id="item23_59_option" value="Djibouti">
              Djibouti
            </option>
            <option id="item23_60_option" value="Dominica">
              Dominica
            </option>
            <option id="item23_61_option" value="Dominican Republic">
              Dominican Republic
            </option>
            <option id="item23_62_option" value="East Timor">
              East Timor
            </option>
            <option id="item23_63_option" value="Ecuador">
              Ecuador
            </option>
            <option id="item23_64_option" value="Egypt">
              Egypt
            </option>
            <option id="item23_65_option" value="El Salvador">
              El Salvador
            </option>
            <option id="item23_66_option" value="Equatorial Guinea">
              Equatorial Guinea
            </option>
            <option id="item23_67_option" value="Eritrea">
              Eritrea
            </option>
            <option id="item23_68_option" value="Estonia">
              Estonia
            </option>
            <option id="item23_69_option" value="Ethiopia">
              Ethiopia
            </option>
            <option id="item23_70_option" value="Falkland Islands (Malvinas)">
              Falkland Islands (Malvinas)
            </option>
            <option id="item23_71_option" value="Faroe Islands">
              Faroe Islands
            </option>
            <option id="item23_72_option" value="Fiji">
              Fiji
            </option>
            <option id="item23_73_option" value="Finland">
              Finland
            </option>
            <option id="item23_74_option" value="France">
              France
            </option>
            <option id="item23_75_option" value="France, Metropolitan">
              France, Metropolitan
            </option>
            <option id="item23_76_option" value="French Guinea">
              French Guinea
            </option>
            <option id="item23_77_option" value="French Polynesia">
              French Polynesia
            </option>
            <option id="item23_78_option" value="French Southern Territories">
              French Southern Territories
            </option>
            <option id="item23_79_option" value="Gabon">
              Gabon
            </option>
            <option id="item23_80_option" value="Gambia">
              Gambia
            </option>
            <option id="item23_81_option" value="Georgia">
              Georgia
            </option>
            <option id="item23_82_option" value="Germany">
              Germany
            </option>
            <option id="item23_83_option" value="Ghana">
              Ghana
            </option>
            <option id="item23_84_option" value="Gibraltar">
              Gibraltar
            </option>
            <option id="item23_85_option" value="Greece">
              Greece
            </option>
            <option id="item23_86_option" value="Greenland">
              Greenland
            </option>
            <option id="item23_87_option" value="Grenada">
              Grenada
            </option>
            <option id="item23_88_option" value="Guadeloupe">
              Guadeloupe
            </option>
            <option id="item23_89_option" value="Guam">
              Guam
            </option>
            <option id="item23_90_option" value="Guatemala">
              Guatemala
            </option>
            <option id="item23_91_option" value="Guinea">
              Guinea
            </option>
            <option id="item23_92_option" value="Guinea-Bissau">
              Guinea-Bissau
            </option>
            <option id="item23_93_option" value="Guyana">
              Guyana
            </option>
            <option id="item23_94_option" value="Haiti">
              Haiti
            </option>
            <option id="item23_95_option" value="Heard And McDonald Islands">
              Heard And McDonald Islands
            </option>
            <option id="item23_96_option" value="Honduras">
              Honduras
            </option>
            <option id="item23_97_option" value="Hong Kong">
              Hong Kong
            </option>
            <option id="item23_98_option" value="Hungary">
              Hungary
            </option>
            <option id="item23_99_option" value="Iceland">
              Iceland
            </option>
            <option id="item23_100_option" value="India">
              India
            </option>
            <option id="item23_101_option" value="Indonesia">
              Indonesia
            </option>
            <option id="item23_102_option" value="Iran">
              Iran
            </option>
            <option id="item23_103_option" value="Iraq">
              Iraq
            </option>
            <option id="item23_104_option" value="Ireland">
              Ireland
            </option>
            <option id="item23_105_option" value="Israel">
              Israel
            </option>
            <option id="item23_106_option" value="Italy">
              Italy
            </option>
            <option id="item23_107_option" value="Jamaica">
              Jamaica
            </option>
            <option id="item23_108_option" value="Japan">
              Japan
            </option>
            <option id="item23_109_option" value="Jordan">
              Jordan
            </option>
            <option id="item23_110_option" value="Kazakhstan">
              Kazakhstan
            </option>
            <option id="item23_111_option" value="Kenya">
              Kenya
            </option>
            <option id="item23_112_option" value="Kiribati">
              Kiribati
            </option>
            <option id="item23_113_option" value="Kosovo">
              Kosovo
            </option>
            <option id="item23_114_option" value="Kuwait">
              Kuwait
            </option>
            <option id="item23_115_option" value="Kyrgyzstan">
              Kyrgyzstan
            </option>
            <option id="item23_116_option" value="Laos">
              Laos
            </option>
            <option id="item23_117_option" value="Latvia">
              Latvia
            </option>
            <option id="item23_118_option" value="Lebanon">
              Lebanon
            </option>
            <option id="item23_119_option" value="Lesotho">
              Lesotho
            </option>
            <option id="item23_120_option" value="Liberia">
              Liberia
            </option>
            <option id="item23_121_option" value="Libya">
              Libya
            </option>
            <option id="item23_122_option" value="Liechtenstein">
              Liechtenstein
            </option>
            <option id="item23_123_option" value="Lithuania">
              Lithuania
            </option>
            <option id="item23_124_option" value="Luxembourg">
              Luxembourg
            </option>
            <option id="item23_125_option" value="Macau">
              Macau
            </option>
            <option id="item23_126_option" value="Macedonia">
              Macedonia
            </option>
            <option id="item23_127_option" value="Madagascar">
              Madagascar
            </option>
            <option id="item23_128_option" value="Malawi">
              Malawi
            </option>
            <option id="item23_129_option" value="Malaysia">
              Malaysia
            </option>
            <option id="item23_130_option" value="Maldives">
              Maldives
            </option>
            <option id="item23_131_option" value="Mali">
              Mali
            </option>
            <option id="item23_132_option" value="Malta">
              Malta
            </option>
            <option id="item23_133_option" value="Marshall Islands">
              Marshall Islands
            </option>
            <option id="item23_134_option" value="Martinique">
              Martinique
            </option>
            <option id="item23_135_option" value="Mauritania">
              Mauritania
            </option>
            <option id="item23_136_option" value="Mauritius">
              Mauritius
            </option>
            <option id="item23_137_option" value="Mayotte">
              Mayotte
            </option>
            <option id="item23_138_option" value="Mexico">
              Mexico
            </option>
            <option id="item23_139_option" value="Micronesia">
              Micronesia
            </option>
            <option id="item23_140_option" value="Moldova">
              Moldova
            </option>
            <option id="item23_141_option" value="Monaco">
              Monaco
            </option>
            <option id="item23_142_option" value="Mongolia">
              Mongolia
            </option>
            <option id="item23_143_option" value="Montserrat">
              Montserrat
            </option>
            <option id="item23_144_option" value="Morocco">
              Morocco
            </option>
            <option id="item23_145_option" value="Mozambique">
              Mozambique
            </option>
            <option id="item23_146_option" value="Myanmar (Burma)">
              Myanmar (Burma)
            </option>
            <option id="item23_147_option" value="Namibia">
              Namibia
            </option>
            <option id="item23_148_option" value="Nauru">
              Nauru
            </option>
            <option id="item23_149_option" value="Nepal">
              Nepal
            </option>
            <option id="item23_150_option" value="Netherlands">
              Netherlands
            </option>
            <option id="item23_151_option" value="Netherlands Antilles">
              Netherlands Antilles
            </option>
            <option id="item23_152_option" value="New Caledonia">
              New Caledonia
            </option>
            <option id="item23_153_option" value="New Zealand">
              New Zealand
            </option>
            <option id="item23_154_option" value="Nicaragua">
              Nicaragua
            </option>
            <option id="item23_155_option" value="Niger">
              Niger
            </option>
            <option id="item23_156_option" value="Nigeria">
              Nigeria
            </option>
            <option id="item23_157_option" value="Niue">
              Niue
            </option>
            <option id="item23_158_option" value="Norfolk Island">
              Norfolk Island
            </option>
            <option id="item23_159_option" value="North Korea">
              North Korea
            </option>
            <option id="item23_160_option" value="Northern Mariana Islands">
              Northern Mariana Islands
            </option>
            <option id="item23_161_option" value="Norway">
              Norway
            </option>
            <option id="item23_162_option" value="Oman">
              Oman
            </option>
            <option id="item23_163_option" value="Pakistan">
              Pakistan
            </option>
            <option id="item23_164_option" value="Palau">
              Palau
            </option>
            <option id="item23_165_option" value="Panama">
              Panama
            </option>
            <option id="item23_166_option" value="Papua New Guinea">
              Papua New Guinea
            </option>
            <option id="item23_167_option" value="Paraguay">
              Paraguay
            </option>
            <option id="item23_168_option" value="Peru">
              Peru
            </option>
            <option id="item23_169_option" value="Philippines">
              Philippines
            </option>
            <option id="item23_170_option" value="Pitcairn">
              Pitcairn
            </option>
            <option id="item23_171_option" value="Poland">
              Poland
            </option>
            <option id="item23_172_option" value="Portugal">
              Portugal
            </option>
            <option id="item23_173_option" value="Puerto Rico">
              Puerto Rico
            </option>
            <option id="item23_174_option" value="Qatar">
              Qatar
            </option>
            <option id="item23_175_option" value="Reunion">
              Reunion
            </option>
            <option id="item23_176_option" value="Romania">
              Romania
            </option>
            <option id="item23_177_option" value="Russia">
              Russia
            </option>
            <option id="item23_178_option" value="Rwanda">
              Rwanda
            </option>
            <option id="item23_179_option" value="Saint Helena">
              Saint Helena
            </option>
            <option id="item23_180_option" value="Saint Kitts And Nevis">
              Saint Kitts And Nevis
            </option>
            <option id="item23_181_option" value="Saint Lucia">
              Saint Lucia
            </option>
            <option id="item23_182_option" value="Saint Pierre And Miquelon">
              Saint Pierre And Miquelon
            </option>
            <option id="item23_183_option" value="Saint Vincent And The Grenadines">
              Saint Vincent And The Grenadines
            </option>
            <option id="item23_184_option" value="San Marino">
              San Marino
            </option>
            <option id="item23_185_option" value="Sao Tome And Principe">
              Sao Tome And Principe
            </option>
            <option id="item23_186_option" value="Saudi Arabia">
              Saudi Arabia
            </option>
            <option id="item23_187_option" value="Senegal">
              Senegal
            </option>
            <option id="item23_188_option" value="Seychelles">
              Seychelles
            </option>
            <option id="item23_189_option" value="Sierra Leone">
              Sierra Leone
            </option>
            <option id="item23_190_option" value="Singapore">
              Singapore
            </option>
            <option id="item23_191_option" value="Slovak Republic">
              Slovak Republic
            </option>
            <option id="item23_192_option" value="Slovenia">
              Slovenia
            </option>
            <option id="item23_193_option" value="Solomon Islands">
              Solomon Islands
            </option>
            <option id="item23_194_option" value="Somalia">
              Somalia
            </option>
            <option id="item23_195_option" value="South Africa">
              South Africa
            </option>
            <option id="item23_196_option" value="South Georgia And South Sandwich Islands">
              South Georgia And South Sandwich Islands
            </option>
            <option id="item23_197_option" value="South Korea">
              South Korea
            </option>
            <option id="item23_198_option" value="Spain">
              Spain
            </option>
            <option id="item23_199_option" value="Sri Lanka">
              Sri Lanka
            </option>
            <option id="item23_200_option" value="Sudan">
              Sudan
            </option>
            <option id="item23_201_option" value="Suriname">
              Suriname
            </option>
            <option id="item23_202_option" value="Svalbard And Jan Mayen">
              Svalbard And Jan Mayen
            </option>
            <option id="item23_203_option" value="Swaziland">
              Swaziland
            </option>
            <option id="item23_204_option" value="Sweden">
              Sweden
            </option>
            <option id="item23_205_option" value="Switzerland">
              Switzerland
            </option>
            <option id="item23_206_option" value="Syria">
              Syria
            </option>
            <option id="item23_207_option" value="Taiwan">
              Taiwan
            </option>
            <option id="item23_208_option" value="Tajikistan">
              Tajikistan
            </option>
            <option id="item23_209_option" value="Tanzania">
              Tanzania
            </option>
            <option id="item23_210_option" value="Thailand">
              Thailand
            </option>
            <option id="item23_211_option" value="Togo">
              Togo
            </option>
            <option id="item23_212_option" value="Tokelau">
              Tokelau
            </option>
            <option id="item23_213_option" value="Tonga">
              Tonga
            </option>
            <option id="item23_214_option" value="Trinidad And Tobago">
              Trinidad And Tobago
            </option>
            <option id="item23_215_option" value="Tunisia">
              Tunisia
            </option>
            <option id="item23_216_option" value="Turkey">
              Turkey
            </option>
            <option id="item23_217_option" value="Turkmenistan">
              Turkmenistan
            </option>
            <option id="item23_218_option" value="Turks And Caicos Islands">
              Turks And Caicos Islands
            </option>
            <option id="item23_219_option" value="Tuvalu">
              Tuvalu
            </option>
            <option id="item23_220_option" value="Uganda">
              Uganda
            </option>
            <option id="item23_221_option" value="Ukraine">
              Ukraine
            </option>
            <option id="item23_222_option" value="United Arab Emirates">
              United Arab Emirates
            </option>
            <option id="item23_223_option" value="United Kingdom">
              United Kingdom
            </option>
            <option id="item23_224_option" value="United States">
              United States
            </option>
            <option id="item23_225_option" value="United States Minor Outlying Islands">
              United States Minor Outlying Islands
            </option>
            <option id="item23_226_option" value="Uruguay">
              Uruguay
            </option>
            <option id="item23_227_option" value="Uzbekistan">
              Uzbekistan
            </option>
            <option id="item23_228_option" value="Vanuatu">
              Vanuatu
            </option>
            <option id="item23_229_option" value="Vatican City (Holy See)">
              Vatican City (Holy See)
            </option>
            <option id="item23_230_option" value="Venezuela">
              Venezuela
            </option>
            <option id="item23_231_option" value="Vietnam">
              Vietnam
            </option>
            <option id="item23_232_option" value="Virgin Islands (British)">
              Virgin Islands (British)
            </option>
            <option id="item23_233_option" value="Virgin Islands (US)">
              Virgin Islands (US)
            </option>
            <option id="item23_234_option" value="Wallis And Futuna Islands">
              Wallis And Futuna Islands
            </option>
            <option id="item23_235_option" value="Western Sahara">
              Western Sahara
            </option>
            <option id="item23_236_option" value="Western Samoa">
              Western Samoa
            </option>
            <option id="item23_237_option" value="Yemen">
              Yemen
            </option>
            <option id="item23_238_option" value="Yugoslavia">
              Yugoslavia
            </option>
            <option id="item23_239_option" value="Zambia">
              Zambia
            </option>
            <option id="item23_240_option" value="Zimbabwe">
              Zimbabwe
            </option>
          </select>
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item24" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item24_label_0" style="display: inline;">Have You Visited US Before Or Are You Currently Living In United States</label>
        </div>
        <div class="fb-dropdown">
          <select name="usvisit" id="usvisit" required data-hint="">
            <option id="item24_0_option" selected value="">
              Choose one
            </option>
            <option id="yes" value="Yes">
              Yes
            </option>
            <option id="no" value="No">
              No
            </option>
          </select>
        </div>
      </div>
      <div id ="personalinfo">
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item25">
        <div class="fb-grouplabel">
          <label id="item25_label_0" style="display: inline;">Social Security Number(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <input name="socialsecuritynumber" id="item25_text_1" type="text" maxlength="254"
          placeholder="Social Security Number" data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item26">
        <div class="fb-grouplabel">
          <label id="item26_label_0" style="display: inline;">Latest I94 Number</label>
        </div>
        <div class="fb-input-box">
          <input name="i94number" id="item26_text_1" type="text" maxlength="254"
          placeholder="I94 Number" data-hint="" autocomplete="off"  />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item27">
        <div class="fb-grouplabel">
          <label id="item27_label_0" style="display: inline;">Last Entry To United States</label>
        </div>
        <div class="fb-input-date">
          <input name="lastentrytounitedstates" class="datepicker" id="item27_date_1"
           type="text" data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item28" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item28_label_0" style="display: inline;">A#</label>
        </div>
        <div class="fb-input-box">
          <input name="a" id="item28_text_1" type="text" maxlength="254" placeholder=""
          data-hint="" autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item29" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item29_label_0" style="display: inline;">EAD Valid Upto</label>
        </div>
        <div class="fb-input-date">
          <input name="eadvalidupto" class="datepicker" id="item29_date_1" type="text"
          data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item34" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item34_label_0" style="display: inline;">Current Employer Petition Number</label>
        </div>
        <div class="fb-input-box">
          <input name="currentemployerpetitionnumber" id="item34_text_1" type="text"
          maxlength="254" placeholder="Current Employer Petition Number" data-hint=""
          autocomplete="off" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item33" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item33_label_0" style="display: inline;">Current Visa Expiry Date</label>
        </div>
        <div class="fb-input-date">
          <input name="currentvisaexpiry" class="datepicker" id="item33_date_1"
           type="text" data-hint="" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column fb_cond_applied" id="item31">
        <div class="fb-grouplabel">
          <label id="item31_label_0" style="display: inline;">Current Visa Status</label>
        </div>
        <div class="fb-dropdown">
          <select name="currentvisastatus" id="item31_select_1"  data-hint="" required>
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
      <div class="fb-item" id="item39">
        <div class="fb-sectionbreak">
          <hr style="max-width: 960px;">
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
  <div style="padding-left: 320px;"><button type="submit" class="btn green">Save And Continue</button></div>
    
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
                                    <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam dolore. </p>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                                    <h2>Contacts</h2>
                                    <address class="margin-bottom-40"> Phone: 800 123 3456
                                        <br> Email:
                                        <a href="mailto:info@metronic.com">info@metronic.com</a>
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