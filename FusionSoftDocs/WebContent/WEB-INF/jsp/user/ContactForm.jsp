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
        <title>FusionSoft Inc. | Contact Information</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Contact" />
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
                                        <h1>Contact Information
                                            <small>Contact Information and Address proof.</small>
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
                                            <span>Contact Information</span>
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
                                                            <i class="icon-envelope font-green"></i>
                                                            <span class="caption-subject font-green bold uppercase">Contact Information</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <!-- BEGIN FORM-->
                                                        <form:form action="saveorupdatecontact" id="form_sample_2" class="horizontal-form" method="post" modelAttribute="contact" enctype="multipart/form-data">
                                                        <form:hidden path="userid" value="${contact.userid}" />
                                                            <div class="form-body">
                                                                

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Phone Number
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" data-required = "data-required" id="phonenumber" class="form-control" placeholder="Phone Number" path="phonenumber"/>
                                                                            <span class="help-block"> Include The Area Code </span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Home Phone Number
                                                                            </label>
                                                                            <form:input type="text" id="homephonenumber" class="form-control" placeholder="Home Phone Number" path="homephonenumber" data-required="data-required"/>
                                                                            <span class="help-block"> Include The Area Code </span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Alternate Email Address
                                                                            </label>
                                                                            <form:input type="text" data-required = "data-required" id="email" class="form-control" placeholder="Alternate Email Address" path="email"/>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <h3 class="form-section">Address (Home Country)</h3>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Street
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" class="form-control" path="address1" data-required = "data-required"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">City</label>
                                                                           <span class="required"> * </span>
                                                                           <form:input type="text" id="city" class="form-control" placeholder="City"  path="city" data-required = "data-required"/>
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">State</label>
                                                                           <span class="required"> * </span>
                                                                           <form:input type="text" id="state" class="form-control" placeholder="State"  path="state" data-required = "data-required"/>

                                                                       </div>
                                                                   </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">Postal Code</label>
                                                                           <span class="required"> * </span>
                                                                           <form:input type="text" id="postalcode" class="form-control" placeholder="Postal Code"  path="zipcode" data-required = "data-required"/>

                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">Country</label>
                                                                            <span class="required"> * </span>
                                                                            <form:select class="form-control" name="prefix" path="country" data-required="data-required">
                                                                                <form:option value=""></form:option>
                                                                                <form:option value="IN">India</form:option>
                                                                                <form:option value="US">United States of America</form:option>
                                                                            </form:select>
                                                                       </div>
                                                                   </div>
                                                                </div>

                                                                <h3 class="form-section">US Address (If Applicable)</h3>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Street
                                                                            </label>
                                                                            <form:input type="text" class="form-control" path="address2" data-required = "data-required"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">City</label>
                                                                           <form:input type="text" id="city2" class="form-control" placeholder="City"  path="city2" data-required = "data-required"/>

                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">State</label>
                                                                           <form:input type="text" id="state2" class="form-control" placeholder="State"  path="state2" data-required = "data-required"/>

                                                                       </div>
                                                                   </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">Postal Code</label>
                                                                           <form:input type="text" id="postalcode2" class="form-control" placeholder="Postal Code"  path="zipcode2" data-required = "data-required"/>
                                                                       </div>
                                                                   </div>
                                                                </div>


                                                                <h3 class="form-section">Additional Address (Optional)</h3>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Street
                                                                            </label>
                                                                            <form:input type="text" class="form-control" path="address3" data-required = "data-required"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">City</label>
                                                                           <form:input type="text" id="city3" class="form-control" placeholder="City"  path="city3" data-required = "data-required"/>

                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">State</label>
                                                                           <form:input type="text" id="state3" class="form-control" placeholder="State"  path="state3" data-required = "data-required"/>

                                                                       </div>
                                                                   </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Postal Code</label>
                                                                            <form:input type="text" id="postalcode3" class="form-control" placeholder="Postal Code"  path="zipcode3" data-required = "data-required"/>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Country</label>
                                                                            <span class="required"> * </span>
                                                                            <form:select class="form-control" name="prefix" path="country3" data-required="data-required">
                                                                                <form:option value=""></form:option>
                                                                                <form:option value="IN">India</form:option>
                                                                                <form:option value="US">United States of America</form:option>
                                                                            </form:select>
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
                                                                                        Address Proof (Any US Government issued document)
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
                                                <p class="help-block"> Please Attach All The Pages In A Single PDF File </p> 
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

                                                            </div>

                                                            <div class="form-actions">
                                                                <div class="row">
                                                                    <div class="col-md-9">
                                                                        <button type="submit" class="btn blue">Submit</button>
                                                                        <button type="button" class="btn default">Cancel</button>
                                                                    </div>
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