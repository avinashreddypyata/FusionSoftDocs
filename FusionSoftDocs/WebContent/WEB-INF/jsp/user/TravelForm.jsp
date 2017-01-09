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
        <title>FusionSoft Inc. | Travel Information</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Travel" />
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
                                        <h1>Travel 
                                            <small>Travel Information</small>
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
                                            <span>Travel Information</span>
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
                                                            <span class="caption-subject font-green bold uppercase">Travel Information</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <!-- BEGIN FORM-->
                                                     <form:form action="saveorupdatetravel" method="POST" class="horizontal-form" id="form_sample_1" modelAttribute="travel" enctype="multipart/form-data">
                                                            <div class="form-body">
                                                            
                                                                
                                                                    <form:hidden path="travelid" value="${travel.travelid}"/>
                                                                    <h3 class="form-section">Travel Info</h3>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Port Of Entry</label>
                                                                                        <span class="required"> * </span>
                                                                                        <form:input type="text"  id="portofentry" path="portofentry" class="form-control" placeholder="Port Of Entry" data-required = "data-required"/>
                                                                         
                                                                                    </div>
                                                                                    
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Is This Your Current Entry (If Yes No Need To Fill The Exit Date)</label>
                                                              <div class="mt-radio-list">
                                                    <label class="mt-radio mt-radio-outline"> Yes
                                                        <form:radiobutton   value="Yes"  path="currententry" id= "yes"/>
                                                        <span></span>
                                                     </label>
                                                    <label class="mt-radio mt-radio-outline"> No
                                                        <form:radiobutton  value="No"  path="currententry" id = "no"/>
                                                        <span></span>
                                                    </label>
                                                    
                                                </div>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                             <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Entry Date To US</label>
                                                                                        <span class="required"> * </span>
                                                         
                                                            <form:input id="entrydatetous" size="16" type="text" value=""  class="form-control" path="entrydatetous" data-required = "data-required"/>
                                                           <span class="help-block">MM/DD/YYYY</span>
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Exit Date From US</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input id="exitdatefromus" size="16" type="text"  class="form-control" path="exitdatefromus"/>
                                                           <span class="help-block">MM/DD/YYYY</span>
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Status At The Time Of Entry</label>
                                                                                        <form:select class="form-control"  path="statusattimeofentry" data-required = "data-required">
                                                                                            <form:option value="H1">H1</form:option>
                                                                                            <form:option value="H4">H4</form:option>
                                                                                           
                                                                                            <form:option value="F1">F1</form:option>
                                                                                            <form:option value="B1">B1</form:option>
                                                                                            <form:option value="B2">B2</form:option>
                                                                                            <form:option value="L1">L1</form:option>
                                                                                            <form:option value="Other">Other</form:option>
                                                                                        </form:select>
                                                                                        
                                                                                    </div>
                                                                                    
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                              <div class="form-group">
                                                                                        <label class="control-label">Status Valid From</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input  id="statusvalidfrom" size="16" type="text"  class="form-control"  path="statusvalidfrom" data-required = "data-required"/>
                                                            <span class="help-block">MM/DD/YYYY</span>
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                              <div class="row">
                                                                                <div class="col-md-6">
                                                                              <div class="form-group">
                                                                                        <label class="control-label">Status Valid Till</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input id="statusvalidtill" size="16" type="text" value=""  class="form-control"  path="statusvalidtill" data-required = "data-required"/>
                                                          <span class="help-block">MM/DD/YYYY</span>
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Total Months and Days Outside US</label>
                                                                                       
                                                                                        <form:input type="text"  id="totalmonthsoutsideus" path="totalmonthsoutsideus" class="form-control" placeholder="Total Months and Days Outside US" data-required = "data-required"/>
                                                                         
                                                                                    </div>
                                                                                    
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                          
                                                        <!-- END FORM-->
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
                                                                                        Attach The I94 and Travel History Concerned To This Entry
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
                                                <p class="help-block"> Please Attach All The Pages In A Single PDF File</p> 
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
                                                        <!-- END FORM-->
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

    </body>
 <!-- BEGIN PAGE LEVEL SCRIPTS -->   
<script src="/FSDocs/assets/travelformjsfile/travelformjs.js" type="text/javascript"></script>
 <!-- END PAGE LEVEL SCRIPTS -->
</html>