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
        <link href="/LoginPage/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="/LoginPage/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="/LoginPage/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/LoginPage/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="/LoginPage/assets/pages/css/profile-2.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="/LoginPage/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/LoginPage/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/LoginPage/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
       
    <link rel="stylesheet" type="text/css" href="/LoginPage/assets/applicationformjsfiles/theme/default/css/default.css"
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
                                        <h1>Contact Info
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
                                            <span>Contact</span>
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
                                                        <a href = "viewapplicant" >Application</a>
                                               </li>
                                                    <li  data-toggle="tab" class="active">
                                                        <a href = "viewcontact"> Contact </a>
                                                    </li>
                                                     <li >
                                                        <a href = "viewpassport">Passport</a>
                                                    </li>
                                                    <li >
                                                        <a href = "traveldetails"> Travel </a>
                                                    </li>
                                                    <li >
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
                                                       <div class="portlet light bordered">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        <i class="icon-equalizer font-blue-hoki"></i>
                                                                        <span class="caption-subject font-blue-hoki bold uppercase">Contact</span>
                                                                        
                                                                    </div>
                                                                    <div class="tools">
                                                                        <a href="" class="collapse"> </a>
                                                                     
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body form">
                                                               
                                                               
                                                                  <!-- BEGIN FORM-->
                                                                  <form:form class="form-horizontal" role="form" action="editorcreatenewcontact">
                                                                   <div class="form-actions top right">
                                                                                    <button type="submit" class="btn green">Edit Contact Info</button>
                                                                                    <button type="button" class="btn default">Cancel</button>
                                                                                </div>
                                                                        <div class="form-body">
                                                                            <h2 class="margin-bottom-20">Contact Info</h2>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Phone Number</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static">${contact.phonenumber}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Home Phone Number</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.homephonenumber} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                            
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Email</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.email}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                </div>
                                                                                <div class="row">
                                                                                <h2 class="margin-bottom-20">Address (Home Country Address) </h2>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Street</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.address1} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                               <!--/row-->
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">City </label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.city}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">State</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.state} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">ZipCode </label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.zipcode}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Country</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.country} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                               <!--/row-->
                                                                                <div class="row">
                                                                                <h2 class="margin-bottom-20">Address (US Address) </h2>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Street</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.address2} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                               <!--/row-->
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">City </label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.city2}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">State</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.state2} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">ZipCode </label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.zipcode2}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Country</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.country2} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                                <div class="row">
                                                                                <h2 class="margin-bottom-20">Address</h2>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Street</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.address3} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                               <!--/row-->
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">City </label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.city3}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">State</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.state3} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">ZipCode </label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.zipcode3}</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label col-md-3">Country</label>
                                                                                        <div class="col-md-9">
                                                                                            <p class="form-control-static"> ${contact.country3} </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            
                                                                            <!--/row-->
                                                                             </div>
                                                                        
                                                                    </form:form>
                                                                             <h3 class="form-section">Uploaded Document</h3>
                                                                            <div class="row">
                                                                              <div class="portlet-body">
                                                        <div class="table-scrollable">
                                                            <table class="table table-striped table-bordered table-advance table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>
                                                                            Document Uploaded </th>
                                                                            <th>Description</th>
                                                                        
                                                                        <th>
                                                                             Action </th>
                                                                      
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                                        <c:forEach items="${documents.contactdocuments}" var="document">
                                                                                        <tr>
                                                                                            <td>
                                                                        <c:out value="${document.doctitle}" /> 
                                                                    </td>
                                                                                            <td > ${document.keywords} </td>
                                                                                          
                                                                                           <td>
                                                                                       <form action="downloadDoc" method="POST" id="downloaddoc">
                                                                       
                                                                            <input type="hidden" value="${document.docid}" name="docid" form="downloaddoc" ></input>
                                                                            
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
                                                                            <!--/row-->
                                                                      
                                                                       
                                                                    <!-- END FORM-->
                                                                    <!-- END FORM-->
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
    
 <script src="/LoginPage/assets/global/plugins/respond.min.js"></script> 
 <script src="/LoginPage/assets/global/plugins/excanvas.min.js"></script>  
 <script src="/LoginPage/assets/global/plugins/ie8.fix.min.js"></script>  

        <!-- BEGIN CORE PLUGINS -->
          <!-- BEGIN CORE PLUGINS -->
        <script src="/LoginPage/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="/LoginPage/assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
         <script src="/LoginPage/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/global/plugins/jquery.input-ip-address-control-1.0.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/LoginPage/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="/LoginPage/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/pages/scripts/form-samples.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/pages/scripts/form-validation.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/pages/scripts/form-input-mask.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
      <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="/LoginPage/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="/LoginPage/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->

      
    </body>

</html>