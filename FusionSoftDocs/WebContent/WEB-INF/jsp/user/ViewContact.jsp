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
                                                        <form action="editorcreatenewcontact" id="form_sample_2" class="horizontal-form" method="post"  enctype="multipart/form-data">
                                                       <div class="form-actions top right">
                                                                                    <button type="submit" class="btn green">Edit Contact Info</button>
                                                                                    <button type="button" class="btn default">Cancel</button>
                                                                                </div>
                                                            <div class="form-body">
                                                                

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Phone Number:
                                                                                
                                                                            </label>
                                                                           ${contact.phonenumber}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Home Phone Number:
                                                                            </label>
                                                                             ${contact.homephonenumber}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Alternate Email Address:
                                                                            </label>
                                                                           ${contact.email}
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <h3 class="form-section">Address (Home Country)</h3>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Street:
                                                                                
                                                                            </label>
                                                                            ${contact.address1}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">City:</label>
                                                                           
                                                                           ${contact.city}
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">State:</label>
                                                                          
                                                                           ${contact.state}

                                                                       </div>
                                                                   </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">Postal Code:</label>
                                                                           
                                                                           ${contact.zipcode}

                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">Country:</label>
                                                                           ${contact.country}
                                                                            
                                                                       </div>
                                                                   </div>
                                                                </div>

                                                                <h3 class="form-section">US Address (If Applicable)</h3>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Street:
                                                                            </label>
                                                                            ${contact.address2}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">City:</label>
                                                                          ${contact.city2}

                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">State:</label>
                                                                           ${contact.state2}

                                                                       </div>
                                                                   </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">Postal Code</label>
                                                                         ${contact.zipcode2}
                                                                       </div>
                                                                   </div>
                                                                </div>


                                                                <h3 class="form-section">Additional Address (Optional)</h3>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Street:
                                                                            </label>
                                                                            ${contact.address3}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">City:</label>
                                                                           ${contact.city3}

                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-6">
                                                                       <div class="form-group">
                                                                           <label class="control-label">State:</label>
                                                                          ${contact.state3}

                                                                       </div>
                                                                   </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Postal Code:</label>
                                                                             ${contact.zipcode3}
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Country:</label>
                                                                           ${contact.country3}
                                                                            
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

                                                            </div>

                                                        </form>
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