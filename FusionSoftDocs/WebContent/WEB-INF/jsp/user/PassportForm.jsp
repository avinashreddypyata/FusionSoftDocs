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
        <title>FusionSoft Inc. | Passport Information</title>
        <link rel="shortcut icon" href="favicon.ico" />

        <jsp:include page="include/metaIncludes.jsp" />

        <jsp:include page="include/cssIncludes.jsp" />
    </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">

        <div class="page-wrapper">

            <jsp:include page="include/header.jsp">
                <jsp:param name="selectedTab" value="Passport" />
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
                                        <h1>Passport Information
                                            <small>Passport Information</small>
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
                                            <span>Passport Information</span>
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
                                                            <span class="caption-subject font-green bold uppercase">Passport Information</span>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <!-- BEGIN FORM-->
                                                        <form:form action="saveorupdatepassport" id="form_sample_2" class="horizontal-form" method="post" modelAttribute="passport" enctype="multipart/form-data">
                                                        <form:hidden path="userid" value="${passport.userid}" />
                                                            <div class="form-body">
                                                                

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Passport Number
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text"  id="passportnumber" path="latestpassportnumber" class="form-control" placeholder="Passport Number" data-required = "data-required"/>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Passport Issuance Place
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" id="passportissuedlocation" path="passportissuedlocation" class="form-control" placeholder="Passport Number" data-required = "data-required"/>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Passport Issuance Date
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <div class="input-group date date-picker" data-date-format="mm/dd/yyyy">
                                                                                <form:input type="text" id="passportissuancedate" class="form-control" path="passportissuancedate" data-required="data-required" readonly="true"/>
                                                                                <span class="input-group-btn">
                                                                                    <button class="btn default" type="button">
                                                                                        <i class="fa fa-calendar"></i>
                                                                                    </button>
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Passport Expiry Date
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <div class="input-group date date-picker" data-date-format="mm/dd/yyyy">
                                                                                <form:input type="text" id="passportexpirydate" class="form-control" path="passportexpirydate" data-required="data-required" readonly="true"/>
                                                                                <span class="input-group-btn">
                                                                                    <button class="btn default" type="button">
                                                                                        <i class="fa fa-calendar"></i>
                                                                                    </button>
                                                                                </span>
                                                                            </div>
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
                                                                                        Attach All The Pages Of The Passport (0-37) Include All The Blank Pages To Avoid Query later
                                                                                    </h3>
                                                                                </div>
                                                                            </li>
                                                                            <li class="mt-list-item done">
                                                                                <div class="list-icon-container">
                                                                                    <i>2</i>
                                                                                </div>
                                                                                <div class="list-item-content">
                                                                                    <h3 class="uppercase">
                                                                                        Previous Passports (If Applicable)
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
                                                <p class="help-block"> Please Attach All The Pages Of The Passport In A Single Pdf File </p> 
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