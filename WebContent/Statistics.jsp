<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/logo-icon.png">
    <title>음주운전 신고 사이트</title>
    <!-- Bootstrap Core CSS -->
    <link href="assets/node_modules/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- page css -->
    <link href="css/pages/google-vector-map.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border fix-sidebar">
<script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
<% request.setCharacterEncoding("euc-kr"); 
	String s_name=(String)session.getAttribute("__name");
%>
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">인하공전 캡스톤 디자인</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="Map.jsp">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span>
                         <!-- dark Logo text -->
                         <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                         <!-- Light Logo text -->    
                         <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="fa fa-bars"></i></a> </li>
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown u-pro">
                           	<a class="nav-link waves-effect waves-dark" href="User_Information.jsp"><%= s_name %> 님</a>
                            <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="index.jsp" aria-haspopup="true" aria-expanded="false"> <span class="hidden-md-down">로그아웃</span> </a>
                            <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="User_Pw_Check.jsp" aria-haspopup="true" aria-expanded="false"> <span class="hidden-md-down">개인정보수정</span> </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="Statistics.jsp" aria-expanded="false"><i class="fa fa-table"></i><span class="hide-menu">신고 통계 확인</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="Map.jsp" aria-expanded="false"><i class="fa fa-globe"></i><span class="hide-menu">신고 메시지 조회</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="Report_Management.jsp" aria-expanded="false"><i class="fa fa-bookmark-o"></i><span class="hide-menu">신고 내역 관리</span></a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">신고 통계 확인</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">MAIN</a></li>
                            <li class="breadcrumb-item active">신고 통계 확인</li>
                        </ol>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
							<div id="map" style="width:100%;height:350px;"></div>
							
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c6fd5f97f6d8faf41469832915a1e80&libraries=services,clusterer,drawing"></script>
							<script>
							    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
							        center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
							        level : 20 // 지도의 확대 레벨 
							    });
							    
							    // 마커 클러스터러를 생성합니다 
							    var clusterer = new kakao.maps.MarkerClusterer({
							        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
							        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
							        minLevel: 10 // 클러스터 할 최소 지도 레벨 
							    });
							 
							    // 데이터를 가져오기 위해 jQuery를 사용합니다
							    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
							    $.get("./report.json", function(data) {
							        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
							        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
							        var markers = $(data.positions).map(function(i, position) {
							            return new kakao.maps.Marker({
							                position : new kakao.maps.LatLng(position.lat, position.lng)
							            });
							        });
									console.log(data)
							        // 클러스터러에 마커들을 추가합니다
							        clusterer.addMarkers(markers);
							    });
							    </script>
                            </div>
                              <div class="card-body">
                                <h4 style="font-size:20px;"><b>음주운전 신고 통계</b></h4>
                                <!-- <h6 class="card-subtitle">Add class <code>.table</code></h6> -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>2018</th>
                                                <th>2017</th>
                                                <th>2016</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>전국</td>
                                                <td>19,381</td>
                                                <td>19,517</td>
                                                <td>19,769</td>
                                            </tr>
                                            <tr>
                                                <td>서울특별시</td>
                                                <td>2,856</td>
                                                <td>2,864</td>
                                                <td>2,874</td>
                                            </tr>
                                            <tr>
                                                <td>부산광역시</td>
                                                <td>743</td>
                                                <td>709</td>
                                                <td>789</td>
                                            </tr>
                                            <tr>
                                                <td>대구광역시</td>
                                                <td>890</td>
                                                <td>890</td>
                                                <td>938</td>
                                            </tr>
                                            <tr>
                                                <td>인천광역시</td>
                                                <td>938</td>
                                                <td>1,000</td>
                                                <td>1,049</td>
                                            </tr>
                                            <tr>
                                                <td>광주광역시</td>
                                                <td>675</td>
                                                <td>688</td>
                                                <td>764</td>
                                            </tr>
                                            <tr>
                                                <td>대전광역시</td>
                                                <td>594</td>
                                                <td>556</td>
                                                <td>665</td>
                                            </tr>
                                            <tr>
                                                <td>울산광역시</td>
                                                <td>567</td>
                                                <td>523</td>
                                                <td>603</td>
                                            </tr>
                                            <tr>
                                                <td>세종특별자치시</td>
                                                <td>98</td>
                                                <td>89</td>
                                                <td>93</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                2020 인하공전 컴퓨터시스템과
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/node_modules/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/node_modules/bootstrap/js/popper.min.js"></script>
    <script src="assets/node_modules/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>
    <!-- google maps api -->
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyCUBL-6KdclGJ2a_UpmB2LXvq7VOcPT7K4&sensor=true"></script>
    <script src="assets/node_modules/gmaps/gmaps.min.js"></script>
    <script src="assets/node_modules/gmaps/jquery.gmaps.js"></script>
</body>

</html>