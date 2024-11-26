<!doctype html>
<html class="no-js" lang="">
<head>
    @include('cultivation.includeSection')
</head>
<body>
    <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <div id="wrapper" class="wrapper bg-ash">
       <!-- Header Menu Area Start Here -->
        <div class="navbar navbar-expand-md header-menu-one bg-light">
            @include('cultivation.topBar')
        </div>
        <!-- Header Menu Area End Here -->
        <!-- Page Area Start Here -->
        <div class="dashboard-page-one">
            <!-- Sidebar Area Start Here -->
            <div class="sidebar-main sidebar-menu-one sidebar-expand-md sidebar-color d-print-none">
               <div class="mobile-sidebar-header d-md-none">
                    @include('cultivation.logoSection')
               </div>
                <div class="sidebar-menu-content">
                    <ul class="nav nav-sidebar-menu sidebar-toggle-view">
                        <li class="nav-item">
                            <a href="{{ route('cultivationIndex') }}" class="nav-link"><i class="flaticon-dashboard"></i><span>Cultivation Panel</span></a>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-books"></i><span>Result</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('addMarks') }}" class="nav-link"><i class="fas fa-angle-right"></i>Add Marks</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createMarksheet') }}" class="nav-link"><i class="fas fa-angle-right"></i>Marksheet Generate</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i
                                    class="flaticon-maths-class-materials-cross-of-a-pencil-and-a-ruler"></i><span>Class</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('allClasses') }}" class="nav-link"><i class="fas fa-angle-right"></i>All
                                        Classes</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createClass') }}" class="nav-link"><i class="fas fa-angle-right"></i>Add New
                                        Class</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-books"></i><span>Group</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('allDepartment') }}" class="nav-link"><i class="fas fa-angle-right"></i>All
                                        Group</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createDepartment') }}" class="nav-link"><i class="fas fa-angle-right"></i>Add New
                                        Group</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-list"></i><span>Session</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('allSession') }}" class="nav-link"><i class="fas fa-angle-right"></i>All
                                        Session</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createSession') }}" class="nav-link"><i class="fas fa-angle-right"></i>Add New</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-open-book"></i><span>Subject</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('allSubject') }}" class="nav-link"><i class="fas fa-angle-right"></i>All
                                        Subject</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createSubject') }}" class="nav-link"><i class="fas fa-angle-right"></i>Add New
                                        Subject</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-shopping-list"></i><span>Exam</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('allExam') }}" class="nav-link"><i class="fas fa-angle-right"></i>Exam
                                        Schedule</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createExam') }}" class="nav-link"><i class="fas fa-angle-right"></i>Create
                                        Exam</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-checklist"></i><span>Grade Point</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="{{ route('allGrade') }}" class="nav-link"><i class="fas fa-angle-right"></i>G.P Manage</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('createGrade') }}" class="nav-link"><i class="fas fa-angle-right"></i>New G.P</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Sidebar Area End Here -->
            <div class="dashboard-content-one">
                <!-- Breadcubs Area Start Here -->
                <div class="breadcrumbs-area d-print-none">
                    <h3>Cultivation | Result Management Panel</h3>
                    <ul>
                        <li>
                            <a href="{{ route('resultPart') }}">Home</a>
                        </li>
                        <li>@yield('backTitle')</li>
                    </ul>
                </div>
                <!-- Breadcubs Area End Here -->
                @yield('backIndex')
                <!-- Footer Area Start Here -->
                <footer class="footer-wrap-layout1 d-print-none">
                    @include('cultivation.footer')
                </footer>
                <!-- Footer Area End Here -->
            </div>
        </div>
        <!-- Page Area End Here -->
    </div>
    
    <!-- jquery-->
    <!-- Plugins js -->
    <script src="{{ asset('/public/back-office/') }}/js/plugins.js"></script>
    <!-- Popper js -->
    <script src="{{ asset('/public/back-office/') }}/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="{{ asset('/public/back-office/') }}/js/bootstrap.min.js"></script>
    <!-- Counterup Js -->
    <script src="{{ asset('/public/back-office/') }}/js/jquery.counterup.min.js"></script>
    <!-- Moment Js -->
    <script src="{{ asset('/public/back-office/') }}/js/moment.min.js"></script>
    <!-- Waypoints Js -->
    <script src="{{ asset('/public/back-office/') }}/js/jquery.waypoints.min.js"></script>
    <!-- Scroll Up Js -->
    <script src="{{ asset('/public/back-office/') }}/js/jquery.scrollUp.min.js"></script>
    <!-- Full Calender Js -->
    <script src="{{ asset('/public/back-office/') }}/js/fullcalendar.min.js"></script>
    <!-- Select 2 Js -->
    <script src="{{ asset('/public/back-office/') }}/js/select2.min.js"></script>
    <!-- Chart Js -->
    <script src="{{ asset('/public/back-office/') }}/js/Chart.min.js"></script>
    <!-- Custom Js -->
    <script src="{{ asset('/public/back-office/') }}/js/main.js"></script>

</body>
</html>