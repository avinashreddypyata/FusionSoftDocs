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
                                                                    <form:form action="saveorupdatecontact" method="POST" class="horizontal-form" id="form_sample_1" modelAttribute="contact" enctype="multipart/form-data">
                                                                       <form:hidden path="userid" value="${contact.userid}"/>
                                                                        <div class="form-body">
                                                                        
                                                                            <h3 class="form-section">Contact Info</h3>
                                                                           <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Phone Number</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" data-required = "data-required" id="phonenumber" class="form-control" placeholder="Phone Number" path="phonenumber"/>
                                                                                        <span class="help-block">Include The Area Code </span>
                                                                                    </div>
                                                                                </div>
                                                                                
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Home Phone Number</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" id="homephonenumber" class="form-control" placeholder="Home Phone Number"  path="homephonenumber"  data-required = "data-required"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                            
                                                                            <div class="row">
                                                                            
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Email</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" data-required = "data-required" id="email" class="form-control" placeholder="Email" path="email"/>
                                                                                       
                                                                                    </div>
                                                                                </div>
                                                                                
                                                                                <!--/span-->
                                                                               
                                                                                <!--/span-->
                                                                            </div>
                                                                            <!--/row-->
                                                                            <h3 class="form-section">Address (Home Country)</h3>
                                                                           <div class="row">
                                                                                
                                                                                    <div class="col-md-12 ">
                                                                                    <div class="form-group">
                                                                                        <label>Street</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" class="form-control" path="address1" data-required = "data-required"/> </div>
                                                                                </div>
                                                                               
                                                                                
                                                                                <!--/span-->
                                                                               
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">City</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" id="city" class="form-control" placeholder="City"  path="city" data-required = "data-required"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">State</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" id="state" class="form-control" placeholder="State"  path="state" data-required = "data-required"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Postal Code</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" id="postalcode" class="form-control" placeholder="Postal Code"  path="zipcode" data-required = "data-required"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Country</label>
                                                                                         <span class="required"> * </span>
                                                                                        <form:input type="text" id="country" class="form-control" placeholder="State"  path="country" data-required = "data-required"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <h3 class="form-section">US Address (If Applicable)</h3>
                                                                           <div class="row">
                                                                                
                                                                                    <div class="col-md-12 ">
                                                                                    <div class="form-group">
                                                                                        <label>Street</label>
                                                                                        <form:input type="text" class="form-control" path="address2"/> </div>
                                                                                </div>
                                                                               
                                                                                
                                                                                <!--/span-->
                                                                               
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">City</label>
                                                                                        <form:input type="text" id="city" class="form-control" placeholder="City"  path="city2"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">State</label>
                                                                                        <form:input type="text" id="state" class="form-control" placeholder="State"  path="state2"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Postal Code</label>
                                                                                        <form:input type="text" id="postalcode" class="form-control" placeholder="Postal Code"  path="zipcode2"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Country</label>
                                                                                        <form:input type="text" id="country" class="form-control" placeholder="State"  path="country2"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <h3 class="form-section">Address(Optional)</h3>
                                                                           <div class="row">
                                                                                
                                                                                    <div class="col-md-12 ">
                                                                                    <div class="form-group">
                                                                                        <label>Street</label>
                                                                                        <form:input type="text" class="form-control" path="address3"/> </div>
                                                                                </div>
                                                                               
                                                                                
                                                                                <!--/span-->
                                                                               
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">City</label>
                                                                                        <form:input type="text" id="city" class="form-control" placeholder="City"  path="city3"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">State</label>
                                                                                        <form:input type="text" id="state" class="form-control" placeholder="State"  path="state3"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Postal Code</label>
                                                                                        <form:input type="text" id="postalcode" class="form-control" placeholder="Postal Code"  path="zipcode3"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Country</label>
                                                                                        <form:input type="text" id="country" class="form-control" placeholder="State"  path="country3"/>
                                                                                        
                                                                                    </div>
																				</div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            
                                                                           <div class="portlet light portlet-fit ">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class=" icon-layers font-green"></i>
                                                            <span class="caption-subject font-green bold uppercase">Documents To Be Attached</span>
                                                            <div class="caption-desc font-grey-cascade">Please  Attach All The Documents</div>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <div class="mt-element-list">
                                                            <div class="mt-list-head list-simple ext-1 font-white bg-green-sharp">
                                                                <div class="list-head-title-container">
                                                                   
                                                                    <h3 class="list-title">Documents List</h3>
                                                                </div>
                                                            </div>
                                                            <div class="mt-list-container list-simple ext-1">
                                                                <ul>
                                                                    <li class="mt-list-item done">
                                                                        <div class="list-icon-container">
                                                                            <i>1</i>
                                                                        </div>
                                                                        
                                                                        <div class="list-item-content">
                                                                            <h3 class="uppercase">
                                                                              Address Proof (Any US Government Issued Card)
                                                                            </h3>
                                                                        </div>
                                                                    </li>
                                                                  
                                                                
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                                             <h3 class="form-section">Documents</h3>
                                                                            <div class="row">
                                                                                <div class="col-md-6 ">
                                                                                  <div class="form-group"> 
                                               <label for="exampleInputFile1">File input</label> 
<form:input type="file" id="exampleInputFile1" path="file"/>
                                                <p class="help-block"> Please Attach All The Pages In A Single Pdf File </p> 
                                      </div>
                                                                                </div>
                                                                                  <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Description Of The Document</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text" path="documentdescription" id="documentdescription"  class="form-control" placeholder="Describe The Document" data-required = "data-required"/>
                                                                         
                                                                                    </div>
                                                                                    
                                                                                </div>
                                                                            </div>
                                                                             <div class="form-actions right">
                                                                            <button type="button" class="btn default">Cancel</button>
                                                                            <button type="submit" class="btn blue">
                                                                                <i class="fa fa-check"></i> Save</button>
                                                                        </div>
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
                                                                        <th> Action </th>
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
                                                                                        <td>
                                                                                        <form action="deleteDoc" method="POST" id="deletedoc">
                                                                
                                                                            <input type="hidden" value="${document.docid}" name="docid" form="deletedoc"></input>
                                                                                        <button type="submit" class="btn red btn-outline" form="deletedoc">Delete</button>
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