<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  

            <div class="page-wrapper-row">
                <div class="page-wrapper-top">
                    <!-- BEGIN HEADER -->
                    <div class="page-header">
                        <!-- BEGIN HEADER TOP -->
                        <div class="page-header-top">
                            <div class="container">
                                <!-- BEGIN LOGO -->
                                <div class="page-logo">
                                    <a href="/home">
                                        <img src="/FSDocs/assets/layouts/layout3/img/logo-default.jpg" alt="logo" class="logo-default">
                                    </a>
                                </div>
                                <!-- END LOGO -->
                                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                                <a href="javascript:;" class="menu-toggler"></a>
                                <!-- END RESPONSIVE MENU TOGGLER -->
                                <!-- BEGIN TOP NAVIGATION MENU -->
                                <div class="top-menu">
                                    <ul class="nav navbar-nav pull-right">
                                        <!-- BEGIN NOTIFICATION DROPDOWN -->
                                        <!-- DOC: Apply "dropdown-hoverable" class after "dropdown" and remove data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to enable hover dropdown mode -->
                                        <!-- DOC: Remove "dropdown-hoverable" and add data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to the below A element with dropdown-toggle class -->
                                        <!-- BEGIN USER LOGIN DROPDOWN -->
                                        <li class="dropdown dropdown-user dropdown-dark">
                                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                                <img alt="" class="img-circle" src="/FSDocs/assets/layouts/layout3/img/avatar9.jpg">
                                                <span class="username username-hide-mobile">Nick</span>
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-default">
                                                <li>
                                                    <a href="page_user_profile_1.html">
                                                        <i class="icon-user"></i> My Profile </a>
                                                </li>
                                                <li>
                                                    <a href="app_inbox.html">
                                                        <i class="icon-envelope-open"></i> My Inbox
                                                        <span class="badge badge-danger"> 3 </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="logout">
                                                        <i class="icon-key"></i> Log Out </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <!-- END USER LOGIN DROPDOWN -->
                                    </ul>
                                </div>
                                <!-- END TOP NAVIGATION MENU -->
                            </div>
                        </div>
                        <!-- END HEADER TOP -->
                        <!-- BEGIN HEADER MENU -->
                        <div class="page-header-menu">
                            <div class="container">
                                <!-- BEGIN MEGA MENU -->
                                <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
                                <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
                                <div class="hor-menu  ">
                                    <ul class="nav navbar-nav">
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Home'}"> active </c:if>'>
											<a href="home"> Home
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Application'}"> active </c:if>'>
											<a href="viewapplicant">Application
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Contact'}"> active </c:if>'>
											<a href="viewcontact">Contact
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Passport'}"> active </c:if>'>
											<a href="viewpassport">Passport
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Travel'}"> active </c:if>'>
											<a href="traveldetails">Travel 
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Education'}"> active </c:if>'>
											<a href="educationdetails">Education 
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Experience'}"> active </c:if>'>
											<a href="experiencedetails">Experience 
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Certification'}"> active </c:if>'>
											<a href="certificateDetails">Certification 
												<span class="arrow"></span>
											</a>
										</li>
										<li aria-haspopup="true" class='menu-dropdown classic-menu-dropdown <c:if test="${param.selectedTab == 'Documents'}"> active </c:if>'>
											<a href="applicantdocument">Documents 
												<span class="arrow"></span>
											</a>
										</li>
                                    </ul>
                                </div>
                                <!-- END MEGA MENU -->
                            </div>
                        </div>
                        <!-- END HEADER MENU -->
                    </div>
                    <!-- END HEADER -->
                </div>
            </div>
