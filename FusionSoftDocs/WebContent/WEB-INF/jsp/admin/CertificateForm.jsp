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
                                        <h1>Certificate Form
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
                                            <span>Certificate</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                        <div class="profile">
                                            <div class="tabbable-line tabbable-full-width">
                                               <ul class="nav nav-tabs">
                                               <li >
                                                        <a href = "overview" >Overview</a>
                                                    </li>
                                                  <li >
                                                        <a href = "viewapplicant" >Application</a>
                                               </li>
                                                    <li >
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
                                                    <li  data-toggle="tab" class="active">
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
                                                                        <span class="caption-subject font-blue-hoki bold uppercase">Certification</span>
                                                                        
                                                                    </div>
                                                                    <div class="tools">
                                                                        <a href="" class="collapse"> </a>
                                                                     
                                                                    </div>
                                                                </div>
                                                             
                                                                
                                                                <div class="portlet-body form">
                                                                    <!-- BEGIN FORM-->
                                                                     <form:form action="saveorupdatecertification" method="POST" class="horizontal-form" id="form_sample_1" modelAttribute="certification" enctype="multipart/form-data">
                                                            <div class="form-body">
                                                            
                                                                
                                                                  <form:hidden path="certificationId" value="${certification.certificationId}"/>
                                                                    <h3 class="form-section">Certification Info</h3>
                                                                       <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Certification</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="certificationName" path="certificationName" class="form-control" placeholder="Certification" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Specialization(Subject)</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="specialisation" path="specialisation" class="form-control" placeholder="Specialization" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                          <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Organization</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="organisation" path="organisation" class="form-control" placeholder="Organization" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Month Of Passing</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                           
                                                           
                                                                                  <form:select class="form-control"  path="monthOfPassing" data-required = "data-required">
                                                                                         
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
                                                                            </div>
                                                                           
                                                                                   <h3 class="form-section">Organization Address</h3>
                                                                                <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Street</label>
                                                                                       
                                                                                      
                                                            <form:input type="text"  id="address" path="address" class="form-control" placeholder="Exact Organization Address"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">City</label>
                                                                                       
                                                                                      
                                                            <form:input type="text"  id="city" path="city" class="form-control" placeholder="City" />
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                                          <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">State</label>
                                                                                        
                                                                                      
                                                            <form:input type="text"  id="state" path="state" class="form-control" placeholder="State" />
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                  <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Country</label>
                                                                                        
                                                                                      
                                                            <form:input type="text"  id="country" path="country" class="form-control" placeholder="Country" />
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                </div>
                                                                               <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">ZipCode</label>
                                                                                        
                                                                                      
                                                            <form:input type="text"  id="zipcode" path="zipcode" class="form-control" placeholder="Zip Code" />
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                  <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Year Of Passing</label>
                                                                                        
                                                                                      
                                                            <form:input type="text"  id="yearOfPassing" path="yearOfPassing" class="form-control" placeholder="Year Of Passing" />
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                </div>
                                  
                                                                  
                                                                    
                                                                       
                                                                              <div class="portlet light portlet-fit ">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class=" icon-layers font-green"></i>
                                                            <span class="caption-subject font-green bold uppercase">Documents To Be Attached</span>
                                                            <div class="caption-desc font-grey-cascade">Please  Attach All The Documents In A Single Pdf File</div>
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
                                                                             Attach The Concerned Work Experience Letter Related To This Experience
                                                                            </h3>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mt-list-item done">
                                                                        <div class="list-icon-container">
                                                                            <i>2</i>
                                                                        </div>
                                                                        
                                                                        <div class="list-item-content">
                                                                            <h3 class="uppercase">
                                                                             Attach The All  Concerned I20's (If You Have Done Master's In United States)
                                                                            </h3>
                                                                        </div>
                                                                    </li>
                                                                  
                                                                
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                                        
                                                                            <h3 class="form-section">Document</h3>
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
                                                        <!-- END FORM-->
                                                   
                                                                    <!-- END FORM-->
                                                                     <h3 class="form-section">Documents</h3>


                                                                <div class="table-scrollable">
                                                                    <table class="table table-striped table-bordered table-advance table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th> Document </th>
                                                                            <th> Description </th>
                                                                            <th> Actions </th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${documents}" var="document">
                                                                        <tr class="odd gradeX">
                                                                            <td> <a href='downloadDoc?docid=<c:out value="${document.docid}" />' ><c:out value="${document.doctitle}" /></a> </td>
                                                                            <td>
                                                                                <c:out value="${document.keywords}" />
                                                                            </td>
                                                                            <td>
                                                                                <a href='deleteDoc?docid=<c:out value="${document.docid}" />' ><i class="icon-docs"></i>Delete</a>
                                                                            </td>
                                                                        </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                    </table>
                                                                </div>
                                                                     
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
 
 <script src="/FSDocs/assets/global/plugins/respond.min.js"></script> 
 <script src="/FSDocs/assets/global/plugins/excanvas.min.js"></script>  
 <script src="/FSDocs/assets/global/plugins/ie8.fix.min.js"></script>  

        <!-- BEGIN CORE PLUGINS -->
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
         <script src="/FSDocs/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/global/plugins/jquery.input-ip-address-control-1.0.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/FSDocs/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="/FSDocs/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/pages/scripts/form-samples.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/pages/scripts/form-validation.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/pages/scripts/form-input-mask.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
      <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="/FSDocs/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="/FSDocs/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->

    </body>

</html>