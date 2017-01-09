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
        <title>FusionSoft Inc. | Certificate Information</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Certification" />
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
                                        <h1>Certificate 
                                            <small>Certificate Information</small>
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
                                            <span>Certificate Information</span>
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
                                                            <span class="caption-subject font-green bold uppercase">Certificate Information</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
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
                                                                             Attach The Concerned Certification Document For This Entry
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

</html>