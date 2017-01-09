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
        <title>FusionSoft Inc. | Education Information</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Education" />
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
                                        <h1>Education 
                                            <small>Education Information</small>
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
                                            <span>Education Information</span>
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
                                                            <span class="caption-subject font-green bold uppercase">Education Information</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <!-- BEGIN FORM-->
                                                     <form:form action="saveorupdateeducation" method="POST" class="horizontal-form" id="form_sample_1" modelAttribute="education" enctype="multipart/form-data">
                                                            <div class="form-body">
                                                            
                                                                
                                                                    <form:hidden path="eduid" value="${education.eduid}"/>
                                                                    <h3 class="form-section">Education Info</h3>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Level Of Education</label>
                                                                                        <span class="required"> * </span>
                                                                                         <form:select class="form-control"  path="levelofeducation" data-required = "data-required">
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
                                                                                <!--/span-->
                                                                               <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Specialisation/Subject</label>
                                                                                        <span class="required"> * </span>
                                                                                     <form:input type="text"  id="course" path="course" class="form-control" placeholder="Specialisation/Subject" data-required = "data-required"/>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                            </div>
                                                                             <div class="row">
                                                                             <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">University/School/College</label>
                                                                                        <span class="required"> * </span>
                                                         
                                                            <form:input type="text"  id="university" path="university" class="form-control" placeholder="University/School/College" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                         
                                                                                </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <h3 class="form-section">University / School / College Address</h3>
                                                                                <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Street</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="address" path="address" class="form-control" placeholder="Exact University/College/School Address" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
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
                                                                              
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Zip Code</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="zipcode" path="zipcode" class="form-control" placeholder="Zip Code" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Year Of Passing</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="mask_number" path="yearofpassing" class="form-control" placeholder="Year Of Passing" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">Month Of Passing</label>
                                                                                        <span class="required"> * </span>
                                                           
                                                           
                                                                                  <form:select class="form-control"  path="monthofpassing" data-required = "data-required">
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
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">US Sevis Number</label>
                                                                                        
                                                            <form:input type="text"  id="ussevisnumber" path="ussevisnumber" class="form-control" placeholder="US Sevis Number" />
                                                           
                                                                                        
                                                                                        
                                        </div>
                                                                                </div>
                                                                                <!--/span-->
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="control-label">G.P.A/Percentage</label>
                                                                                        <span class="required"> * </span>
                                                                                      
                                                            <form:input type="text"  id="gpa" path="gpa" class="form-control" placeholder="GPA" data-required = "data-required"/>
                                                           
                                                                                        
                                                                                        
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
                                                                                       Attach The Concerned Transcripts / Mark Sheets / Degree Certificate 
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

    </body>

</html>