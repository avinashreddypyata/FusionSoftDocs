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
        <title>FusionSoft Inc | Application</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Application" />
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
                                        <h1>Application
                                            <small>Enter personal and current immigration information.</small>
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
                                            <span>Application</span>
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
                                                            <i class="icon-note font-green"></i>
                                                            <span class="caption-subject font-green bold uppercase">Application</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <!-- BEGIN FORM-->
                                                        <form action="editorcreatenewapplication" id="form_sample_2" class="horizontal-form" method="post" enctype="multipart/form-data">
                                                        <div class="form-actions top right">
                                                                                    <button type="submit" class="btn green">Edit Application Info</button>
                                                                                    <button type="button" class="btn default">Cancel</button>
                                                                                </div>
                                                            <div class="form-body">
                                                                

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Application Type:
                                                                                
                                                                            </label>
                                                                            ${applicant.applicationtype}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <h3 class="form-section">Personal Information</h3>

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Prefix:
                                                                            </label>
                                                                            ${applicant.prefix}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">First Name:
                                                                               
                                                                            </label>
                                                                            ${applicant.firstname}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Middle Name:
                                                                            </label>
                                                                            ${applicant.middlename}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Last Name:
                                                                                
                                                                            </label>
                                                                            ${applicant.lastname}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Maiden Name:
                                                                            </label>
                                                                            ${applicant.maidenname} 
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Full Name:
                                                                          
                                                                            </label>
                                                                           ${applicant.fullname}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Date Of Birth:
                                                                              
                                                                            </label>
                                                                         ${applicant.dateofbirth}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Country Of Birth:
                                                                                
                                                                            </label>
                                                                            ${applicant.countryofbirth}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Province/State Of Birth:
                                                                         
                                                                            </label>
                                                                           ${applicant.provinceofbirth}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <h3 class="form-section">Immigration Information</h3>


                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">CitizenShip:
                                                                            </label>
                                                                         ${applicant.citizenship}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Have You Visited US Before Or Are You Currently Living In United States:
                                                                               
                                                                            </label>
                                                                          ${applicant.usvisit}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Social Security Number:
                                                                            </label>
                                                                           ${applicant.socialsecuritynumber}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Latest I94 Number:
                                                                            </label>
                                                                            ${applicant.latesti94number}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Alien Number:
                                                                            </label>
                                                                            ${applicant.aliennumber}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">EAD Valid Upto:
                                                                            </label>
                                                                         ${applicant.eadvalidupto}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Current Employer Petition Number:
                                                                            </label>
                                                                          ${applicant.currentemployerpetitionnumber}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Current Visa Status:
                                                                            </label>
                                                                         ${applicant.currentvisastatus}
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Current Visa Expiry Date:
                                                                            </label>
                                                                       ${applicant.currentvisaexpirydate}
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