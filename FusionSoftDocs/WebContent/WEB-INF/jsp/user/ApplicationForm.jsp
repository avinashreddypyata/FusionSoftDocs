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
        <title>FusionSoft Inc. | Application</title>
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
                                                        <form:form action="saveorupdateapplication" id="form_sample_2" class="horizontal-form" method="post" modelAttribute="applicant" enctype="multipart/form-data">
                                                        <form:hidden path="userid" value="${applicant.userid}" />
                                                            <div class="form-body">
                                                                <div class="alert alert-danger display-hide">
                                                                    <button class="close" data-close="alert"></button> You have some form errors. Please check below.
                                                                </div>
                                                                <div class="alert alert-success display-hide">
                                                                    <button class="close" data-close="alert"></button> Your form validation is successful!
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Application Type
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:select class="form-control" name="applicationtype" path="applicationtype" data-required="data-required">
                                                                                <form:option value=""></form:option>
                                                                                <form:option value="New">New</form:option>
                                                                                <form:option value="Transfer">Transfer</form:option>
                                                                                <form:option value="Extension">Extension</form:option>
                                                                                <form:option value="Master's To H1">Master's To H1</form:option>
                                                                            </form:select>
                                                                            <span class="help-block"> Select your Application Type </span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <h3 class="form-section">Personal Information</h3>

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Prefix
                                                                            </label>
                                                                            <form:select class="form-control" name="prefix" path="prefix" data-required="data-required">
                                                                                <form:option value=""></form:option>
                                                                                <form:option value="Mr">Mr</form:option>
                                                                                <form:option value="Mrs">Mrs</form:option>
                                                                                <form:option value="Dr">Dr</form:option>
                                                                            </form:select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">First Name
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" id="firstName" class="form-control" placeholder="First Name" path="firstname" data-required="data-required"/>
                                                                            <span class="help-block"> First Name As On Passport </span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Middle Name
                                                                            </label>
                                                                            <form:input type="text" id="middlename" class="form-control" placeholder="Middle Name" path="middlename" data-required="data-required"/>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Last Name
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" id="lastname" class="form-control" placeholder="Last Name" path="lastname" data-required="data-required"/>
                                                                            <span class="help-block"> Last Name As On Passport </span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Maiden Name (If Applicable)
                                                                            </label>
                                                                            <form:input type="text" id="maidenname" class="form-control" placeholder="Maiden Name" path="maidenname"/>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Full Name
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" id="fullname" class="form-control" placeholder="Full Name" path="fullname" data-required="data-required"/>
                                                                            <span class="help-block"> Full Name As On Passport </span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Date Of Birth
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                         <div class="input-group date date-picker" data-date-format="mm-dd-yyyy">
                                                                             <form:input type="text" id="dateofbirth" class="form-control" path="dateofbirth" data-required="data-required" readonly="true"/>
                                                                             <span class="input-group-btn">
                                                                                 <button class="btn default" type="button">
                                                                                     <i class="fa fa-calendar"></i>
                                                                                 </button>
                                                                             </span>
                                                                         </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Country Of Birth
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <form:select class="form-control" name="prefix" path="countryofbirth" data-required="data-required">
                                                                                <form:option value=""></form:option>
                                                                                <form:option value="IN">India</form:option>
                                                                                <form:option value="US">United States of America</form:option>
                                                                            </form:select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Province/State Of Birth
                                                                          <span class="required"> * </span>
                                                                            </label>
                                                                            <form:input type="text" id="provinceofbirth" class="form-control" placeholder="City or Town, State" path="provinceofbirth" data-required="data-required"/>
                                                                            <span class="help-block"> City or Town, State. Same As On Passport </span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <h3 class="form-section">Immigration Information</h3>

                                                                <div class="note note-info">
                                                                    <p> Enter all the information thats applicable </p>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">CitizenShip
                                                                            </label>
                                                                            <form:select class="form-control" name="prefix" path="citizenship" data-required="data-required">
                                                                                <form:option value=""></form:option>
                                                                                <form:option value="IN">India</form:option>
                                                                                <form:option value="US">United States of America</form:option>
                                                                            </form:select>
                                                                            <span class="help-block"> Passport issued by Country</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Have You Visited US Before Or Are You Currently Living In United States?
                                                                                <span class="required"> * </span>
                                                                            </label>
                                                                            <div class="mt-radio-list">
                                                                                <label class="mt-radio mt-radio-outline"> Yes
                                                                                    <form:radiobutton   value="Yes"  path="usvisit"/>
                                                                                    <span></span>
                                                                                </label>
                                                                                <label class="mt-radio mt-radio-outline"> No
                                                                                    <form:radiobutton  value="No"  path="usvisit" />
                                                                                    <span></span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Social Security Number
                                                                            </label>
                                                                            <form:input type="text" id="socialsecuritynumber" class="form-control" path="socialsecuritynumber"/>
                                                                            <span class="help-block"> If you have it </span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Latest I94 Number
                                                                            </label>
                                                                            <form:input type="text" id="latesti94number" class="form-control" path="latesti94number"/>
                                                                            <span class="help-block"> You can find it at <a href="https://i94.cbp.dhs.gov/I94/#/home" target="_blank">here</a> </span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Alien/Green Card Number
                                                                            </label>
                                                                            <form:input type="text" id="aliennumber" class="form-control" path="aliennumber"/>
                                                                            <span class="help-block"> If you have it </span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group date date-picker" data-date-format="mm-dd-yyyy">
                                                                            <label class="control-label">EAD Valid Upto
                                                                            </label>
                                                                         <div class="input-group date date-picker" data-date-format="mm-dd-yyyy">
                                                                             <form:input type="text" id="eadvalidupto" class="form-control" path="eadvalidupto" data-required="data-required" readonly="true"/>
                                                                             <span class="input-group-btn">
                                                                                 <button class="btn default" type="button">
                                                                                     <i class="fa fa-calendar"></i>
                                                                                 </button>
                                                                             </span>
                                                                         </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Current Employer Petition Number
                                                                            </label>
                                                                            <form:input type="text" id="currentemployerpetitionnumber" class="form-control" path="currentemployerpetitionnumber"/>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="control-label">Current Visa Status (If Applicable)
                                                                            </label>
                                                                            <form:select class="form-control"  path="currentvisastatus">
                                                                                <form:option value=""></form:option>
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

                                                                    <div class="col-md-3">
                                                                        <div class="form-group date date-picker" data-date-format="mm-dd-yyyy">
                                                                            <label class="control-label">Current Visa Expiry Date
                                                                            </label>
                                                                         <div class="input-group date date-picker" data-date-format="mm-dd-yyyy">
                                                                             <form:input type="text" id="currentvisaexpirydate" class="form-control" path="currentvisaexpirydate" data-required="data-required" readonly="true"/>
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
                                                                                        Copy Of EAD (If Applicable)
                                                                                    </h3>
                                                                                </div>
                                                                            </li>
                                                                            <li class="mt-list-item done">
                                                                                <div class="list-icon-container">
                                                                                    <i>2</i>
                                                                                </div>
                                                                                <div class="list-item-content">
                                                                                    <h3 class="uppercase">
                                                                                        Copy Of Social Security Number (If Applicable)
                                                                                    </h3>
                                                                                </div>
                                                                            </li>
                                                                            <li class="mt-list-item done">
                                                                                <div class="list-icon-container">
                                                                                    <i>3</i>
                                                                                </div>
                                                                                <div class="list-item-content">
                                                                                    <h3 class="uppercase">
                                                                                        Copy Of Current and Previous H1B approval notices
                                                                                    </h3>
                                                                                </div>
                                                                            </li>
                                                                            <li class="mt-list-item done">
                                                                                <div class="list-icon-container">
                                                                                    <i>4</i>
                                                                                </div>
                                                                                <div class="list-item-content">
                                                                                    <h3 class="uppercase">
                                                                                        Copy Of Labor Condition Application /Email Receipt (For 7th Year Extension Only)
                                                                                    </h3>
                                                                                </div>
                                                                            </li>

                                                                        </ul>
                                                                    </div>
                                                                </div>

                                                                <div class="note note-info">
                                                                    <p> Please upload these documents </p>
                                                                </div>

                                                                <div class="form-group mt-repeater">
                                                                    <div data-repeater-list="group-c">
                                                                        <div data-repeater-item class="mt-repeater-item">
                                                                            <div class="row mt-repeater-row">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label">Document</label>
                                                                                    <form:input type="file" id="exampleInputFile1" path="file"/>
                                                                                </div>
                                                                                <div class="col-md-7">
                                                                                    <label class="control-label">Description Of The Document</label>
                                                                                    <form:input type="text" path="documentdescription" id="documentdescription" class="form-control" placeholder="Describe The Document" data-required="data-required"/>
                                                                                </div>
                                                                                <div class="col-md-1">
                                                                                    <a href="javascript:;" data-repeater-delete class="btn btn-danger mt-repeater-delete">
                                                                                        <i class="fa fa-close"></i>
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <a href="javascript:;" data-repeater-create class="btn btn-info mt-repeater-add">
                                                                        <i class="fa fa-plus"></i> Add Document
                                                                    </a>
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
                                                                        <c:forEach items="${documents.otherdocuments}" var="document">
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