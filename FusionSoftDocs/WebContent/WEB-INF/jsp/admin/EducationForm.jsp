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
<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="/FSDocs/assets/visatravelformjsfiles/datepicker.js"></script>
     
    <link rel="stylesheet" type="text/css" href="/FSDocs/assets/visatravelformjsfiles/theme/default/css/default.css"
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
                                        <h1>Experience Form
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
                                            <span>Experience</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                        <div class="profile">
                                            <div class="tabbable-line tabbable-full-width">
                                               <ul class="nav nav-tabs">
                                               <li>
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
                                                    <li  data-toggle="tab" class="active">
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
                                                      <form:form class="fb-toplabel fb-100-item-column selected-object" id="docContainer"
action="saveorupdateeducation" enctype="multipart/form-data" method="POST" novalidate="novalidate" modelAttribute="education"
data-form="preview">
  <form:hidden path="eduid" value="${education.eduid}"/>
  <div class="fb-form-header" id="fb-form-header1">
    <a class="fb-link-logo" id="fb-link-logo1" style="max-width: 104px;" target="_blank"><img title="Alternative text" class="fb-logo" id="fb-logo1" style="width: 100%; display: none;" alt="Alternative text" src="/FSDocs/assets/educationformjsfiles/common/images/image_default.png"/></a>
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
          <form:select name="select2" id="item2_select_1" required="required" data-hint="" path="levelofeducation">
            <form:option id="item2_1_option" value="High School or Equivalent">
              High School or Equivalent
            </form:option>
            <form:option id="item2_2_option" value="12th/Intermediate">
              12th/Intermediate
            </form:option>
            <form:option id="item2_3_option" value="Associate Degree">
              Associate Degree
            </form:option>
            <form:option id="item2_4_option" value="Bachelor's Degree">
              Bachelor's Degree
            </form:option>
            <form:option id="item2_5_option"  value="Masters Degree">
              Masters Degree
            </form:option>
            <form:option id="item2_6_option" value="Ph.d">
              Ph.d
            </form:option>
            <form:option id="item2_7_option" value="PostDoc">
              PostDoc
            </form:option>
          </form:select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item3">
        <div class="fb-grouplabel">
          <label id="item3_label_0" style="display: inline;">Specialisation/Subject</label>
        </div>
        <div class="fb-input-box">
          <form:input name="text3" id="item3_text_1" type="text" maxlength="254" placeholder="Specialisation/Subject"
          autocomplete="off" data-hint="" path="course"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">University/School/College</label>
        </div>
        <div class="fb-input-box">
          <form:input name="university" id="item5_text_1" type="text" maxlength="254"
          placeholder="University/School/College" autocomplete="off" data-hint="" path="university"
          />
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item7" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Exact University/College/School Address</label>
        </div>
        <div class="fb-textarea">
          <form:textarea name="universityaddress" id="item7_textarea_1" style="height: 40px; max-width: 300px; resize: none;"
          required="required" maxlength="1000" placeholder="" data-hint="" path="address"></form:textarea>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item8">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">City</label>
        </div>
        <div class="fb-input-box">
          <form:input name="city" id="item8_text_1" required="required" type="text" maxlength="254"
          placeholder="City" autocomplete="off" data-hint="" path="city"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item9">
        <div class="fb-grouplabel">
          <label id="item9_label_0" style="display: inline;">State</label>
        </div>
        <div class="fb-input-box">
          <form:input name="state" id="item9_text_1" required="required" type="text" maxlength="254"
          placeholder="State" autocomplete="off" data-hint="" path="state"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item15" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item15_label_0" style="display: inline;">Zip Code</label>
        </div>
        <div class="fb-input-box">
          <form:input name="zipcode" id="item15_text_1" type="text" maxlength="254" placeholder="Zip Code"
          autocomplete="off" data-hint="" path="zipcode"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item18" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item18_label_0" style="display: inline;">Country</label>
        </div>
        <div class="fb-input-box">
          <form:input name="text18" id="item18_text_1" type="text" maxlength="254" placeholder=""
          autocomplete="off" data-hint="" path="country"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item17">
        <div class="fb-grouplabel">
          <label id="item17_label_0" style="display: inline;">Year Of Passing</label>
        </div>
        <div class="fb-input-number">
          <form:input name="yearofpassing" id="item17_number_1" type="number" min="0"
          max="999999999" step="1" placeholder="Year Of Passing" autocomplete="off"
          data-hint="" path="yearofpassing"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item12">
        <div class="fb-grouplabel">
          <label id="item12_label_0">Month Of Passing</label>
        </div>
        <div class="fb-dropdown">
          <form:select name="monthofpassing" id="item12_select_1" required="required" data-hint="" path="monthofpassing">
            <form:option id="item12_1_option" value="Option 1">
              Option 1
            </form:option>
            <form:option id="item12_2_option" value="January">
              January
            </form:option>
            <form:option id="item12_3_option" value="February">
              February
            </form:option>
            <form:option id="item12_4_option" value="March">
              March
            </form:option>
            <form:option id="item12_5_option" value="April">
              April
            </form:option>
            <form:option id="item12_6_option" value="May">
              May
            </form:option>
            <form:option id="item12_7_option" value="June">
              June
            </form:option>
            <form:option id="item12_8_option" value="July">
              July
            </form:option>
            <form:option id="item12_9_option" value="August">
              August
            </form:option>
            <form:option id="item12_10_option" value="September">
              September
            </form:option>
            <form:option id="item12_11_option" value="October">
              October
            </form:option>
            <form:option id="item12_12_option" value="November">
              November
            </form:option>
            <form:option id="item12_13_option" value="December">
              December
            </form:option>
          </form:select>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item13">
        <div class="fb-grouplabel">
          <label id="item13_label_0" style="display: inline;">US Sevis Number(If applicable)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="ussevisnumber" id="item13_text_1" type="text" maxlength="254"
          placeholder="University/School/College" autocomplete="off" data-hint=""
          path="ussevisnumber"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item14">
        <div class="fb-grouplabel">
          <label id="item14_label_0" style="display: inline;">G.P.A/Percentage</label>
        </div>
        <div class="fb-input-box">
          <form:input name="gpa" id="item14_text_1" required="required" type="text" maxlength="254"
          placeholder="G.P.A/Percentage" autocomplete="off" data-hint="" path="gpa"/>
        </div>
      </div>
    </div>
  </div>
  <div class="fb-captcha fb-item-alignment-center" id="fb-captcha_control"
  style="display: none; cursor: default;">
    <img src="/FSDocs/assets/educationformjsfiles/editordata/images/recaptchawhite.png" />
  </div>
    <div class="fb-footer fb-item-alignment-center" id="fb-submit-button-div"
  style="min-height: 1px;">
    <input class="fb-button-special" id="fb-submit-button" style="border-width: 0px; font-family: Helvetica, Arial; font-size: 11px;background-image: url('/FSDocs/assets/applicationformjsfiles/theme/default/images/btn_submit.png');"
    type="submit" data-regular="url('/FSDocs/assets/visatravelformjsfiles/theme/default/images/btn_submit.png')"
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
        <script src="/FSDocs/assets/visatravelformjsfiles/conditions.js"></script>
        <script src="/FSDocs/assets/visatravelformjsfiles/formvalidation.js"></script>
        <!--[if lt IE 9]>
<script src="/FSDocs/assets/global/plugins/respond.min.js"></script>
<script src="/FSDocs/assets/global/plugins/excanvas.min.js"></script> 
<script src="/FSDocs/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        
    </body>

</html>