<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
 <div class="page-wrapper-row">
                <div class="page-wrapper-top">
                    <!-- BEGIN HEADER -->
                    <div class="page-header">
                        <!-- BEGIN HEADER TOP -->
                        <div class="page-header-top">
                            <div class="container">
                                <!-- BEGIN LOGO -->
                                <div class="page-logo">
                                    <a href="home">
                                        <img src="http://localhost:854/LoginPage/assets/layouts/layout3/img/fs-logo.png" alt="logo" class="logo-default">
                                    </a>
                                </div>
                                <div class="top-menu">
                                    <ul class="nav navbar-nav pull-right">
                                        <!-- BEGIN NOTIFICATION DROPDOWN -->
                                        <!-- DOC: Apply "dropdown-hoverable" class after "dropdown" and remove data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to enable hover dropdown mode -->
                                        <!-- DOC: Remove "dropdown-hoverable" and add data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to the below A element with dropdown-toggle class -->
                                        <!-- BEGIN USER LOGIN DROPDOWN -->
                                        <li class="dropdown dropdown-user dropdown-dark">
                                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                                <img alt="" class="img-circle" src="http://localhost:854/LoginPage/assets/layouts/layout3/img/user.jpg">
                                                <span class="username username-hide-mobile">${userFullName}</span>
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-default">
                                                <li>
                                                    <a href="home">
                                                        <i class="icon-user"></i> My Profile </a>
                                                </li>
<!--                                                 <li> -->
<!--                                                     <a href="app_inbox.html"> -->
<!--                                                         <i class="icon-envelope-open"></i> My Inbox -->
<!--                                                         <span class="badge badge-danger"> 3 </span> -->
<!--                                                     </a> -->
<!--                                                 </li> -->
                                                <li>
                                                    <a href="http://localhost:8080/FusionSoftDocs/">
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
                                        <li aria-haspopup="true" class="menu-dropdown classic-menu-dropdown">
                                            <a href="home"> Home
                                                <span class="arrow"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="applicantEditProfile"> Edit Profile/Upload Documents
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
         
              <script type = "text/javascript">
            $(document).on("click", 'ul li', function(){
                $('ul li').removeClass('active');
                $(this).addClass('active');
            });
            
            
   </script>
          