<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>FusionSoft Inc. | Experience Information</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Experience" />
            </jsp:include>

            <div class="page-wrapper-row full-height">
                <div class="page-wrapper-middle">
                    <!-- BEGIN CONTAINER -->
                    <div class="page-container">
                        <!-- BEGIN CONTENT -->
                        <div class="page-content-wrapper">
                            <!-- BEGIN CONTENT BODY -->
                            <!-- BEGIN PAGE HEAD-->
                            <div class="page-head">
                                <div class="container">
                                    <!-- BEGIN PAGE TITLE -->
                                    <div class="page-title">
                                        <h1>Experience 
                                            <small>Experience Information</small>
                                        </h1>
                                    </div>
                                    <!-- END PAGE TITLE -->
                                </div>
                            </div>
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
                                            <span>Experience Information</span>
                                        </li>
                                    </ul>
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <!-- BEGIN VALIDATION STATES-->
                                                <div class="portlet light portlet-fit portlet-form ">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="icon-directions font-green"></i>
                                                            <span class="caption-subject font-green bold uppercase">Experience Information</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <!-- BEGIN FORM-->
                                                     <form:form action="saveorupdateexperience" method="POST" class="horizontal-form" id="form_sample_1" modelAttribute="experience" enctype="multipart/form-data">
                                                            <div class="form-body">
                                                            
                                                                
                                                                    <form:hidden path="expid" value="${experience.expid}"/>
                                                                    <h3 class="form-section">Experience Info</h3>
                                                                       <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Employer</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="employer" path="employer" class="form-control" placeholder="Employer" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">City</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="city" path="city" class="form-control" placeholder="City" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                          <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">State</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="state" path="state" class="form-control" placeholder="State" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Country</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="country" path="country" class="form-control" placeholder="Country" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                     <div class="form-group">
                                                                                        <label class="control-label">Is This Your Current Job (If Yes There Is No Need To Mention The End Date  For The Job and Months Worked)</label>
                                                                              <div class="mt-radio-list">
                                                    <label class="mt-radio mt-radio-outline"> Yes
                                                        <form:radiobutton   value="Yes"  path="currentjob" id="yes" />
                                                        <span></span>
                                                    </label>
                                                    <label class="mt-radio mt-radio-outline"> No
                                                        <form:radiobutton  value="No"  path="currentjob" id="no" />
                                                        <span></span>
                                                    </label>
                                                    
                                                </div>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                </div>
                                                                                 <div class="row">
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Start Date</label>
                                                                                        <span class="required"> * </span>
                                                         
                                                            <form:input id="startdate" size="16" type="text" value=""  class="form-control" path="joineddate" data-required = "data-required"/>
                                                           <span class="help-block">MM/DD/YYYY</span>
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">End Date</label>
                                                                                        <span class="required"> * </span>
                                                         
                                                            <form:input id="enddate" size="16" type="text" value=""  class="form-control" path="enddate"/>
                                                           <span class="help-block">MM/DD/YYYY</span>
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                             <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Designation</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="designation" path="designation" class="form-control" placeholder="Designation" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Total Number Of Months Worked</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="totalmonthsworked" path="totalmonthsworked" class="form-control" placeholder="Total Number Of Months Worked" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                    
                                                                                    <h3 class="form-section">Documents</h3>

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
                                                                         
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                        
                                                                            <div class="note note-info">
                                                                    <p> Please upload these documents </p>
                                                                </div>

                                                                 <div class="row">
                                                                                <div class="col-md-6 ">
                                                                                  <div class="form-group"> 
                                               <label for="exampleInputFile1">Add Document</label> 
<form:input type="file" id="exampleInputFile1" path="file"/>
                                                <p class="help-block"> Attach All The Documents Concerned To This Entry</p> 
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
                                                                           
                                                                            
                                                         <div class="form-actions right">
                                                                            <button type="button" class="btn default">Cancel</button>
                                                                            <button type="submit" class="btn blue">
                                                                                <i class="fa fa-check"></i> Save</button>
                                                                        </div>
                                                            </div>
                                                        </form:form>
                                                    </div>
                                                </div>
                                                <!-- END VALIDATION STATES-->
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

            <jsp:include page="include/footer.jsp" />

        </div>

        <jsp:include page="include/jsIncludes.jsp" />
      <!-- BEGIN PAGE LEVEL SCRIPTS -->   
<script src="http://localhost:80/LoginPage/assets/experienceformjsfile/experienceformjs.js" type="text/javascript"></script>
 <!-- END PAGE LEVEL SCRIPTS -->
    </body>

</html>