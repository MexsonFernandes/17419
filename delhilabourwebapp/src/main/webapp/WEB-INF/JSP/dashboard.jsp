<%--<div id="auth" hidden="hidden"><%=request.getSession().getAttribute("session")%></div>--%>
<%--<script>--%>
    <%--if(document.getElementById('auth').innerText == "null"){--%>
        <%--document.location.href = "/";--%>
    <%--}--%>
<%--</script>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>E-Labour Delhi</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="dashboard/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="dashboard/css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="dashboard/css/style.min.css" rel="stylesheet">
    <link rel="icon" href="homepage/img/labor-man.png" type="image/ico" sizes="16x16">+++++
</head>

<body class="fixed-sn navy-blue-skin">

<!--Main Navigation-->
<header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
        <div class="container-fluid">

            <!-- Brand -->
            <a class="navbar-brand waves-effect" href="https://mdbootstrap.com/material-design-for-bootstrap/" target="_blank">
                <img src="homepage/img/labor-man.png" width="50px" height="50px"/>
            </a>

            <!-- Collapse -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <!-- Left -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link waves-effect" href="/">Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/#aboutus">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="faqs">FAQs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="help">Help</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="careers">Careers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/#contact" onclick="document.getElementById('changeFormText').innerText='Contact Us';">Contact Us</a>
                    </li>
                </ul>

                <ul class="navbar-nav nav-flex-icons">

                    <li class="nav-item">
                        <a  target="_self" onclick="logout();" class="nav-link border border-light rounded waves-effect">
                            </i>LOGOUT
                        </a>
                    </li>
                    <script>
                        function logout() {
                            if(confirm("Are you sure?")){
                                document.location.href = "logout";
                            }
                        }
                    </script>
                </ul>

            </div>

        </div>
    </nav>
    <!-- Navbar -->

    <!-- Sidebar -->
    <div class="sidebar-fixed position-fixed">

        <a class="logo-wrapper waves-effect">

        </a>

        <div class="list-group list-group-flush">
            <a href="#" class="list-group-item active waves-effect">
                <i class="fa fa-pie-chart mr-3"></i>Dashboard
            </a>
            <a href="#" class="list-group-item list-group-item-action waves-effect">
                <i class="fa fa-user mr-3"></i>Profile</a>
            <a href="#" class="list-group-item list-group-item-action waves-effect">
                <i class="fa fa-table mr-3"></i>Tables</a>
            <a href="#" class="list-group-item list-group-item-action waves-effect">
                <i class="fa fa-map mr-3"></i>Maps</a>
            <a href="#" class="list-group-item list-group-item-action waves-effect">
                <i class="fa fa-money mr-3"></i>Orders</a>
        </div>

    </div>
    <!-- Sidebar -->

</header>
<!--Main Navigation-->

<!--Main layout-->
<main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">

        <!-- Heading -->
        <div class="card mb-4 wow fadeIn">

            <!--Card content-->
            <div class="card-body d-sm-flex justify-content-between">

                <h4 class="mb-2 mb-sm-0 pt-1">
                    <a href="/" target="_self">Home Page</a>
                    <span>/</span>
                    <span id="topbar">Dashboard</span>
                </h4>

                <form class="d-flex justify-content-center">
                    <!-- Default input -->
                    <input type="search" placeholder="Type your query" aria-label="Search" class="form-control">
                    <button class="btn btn-primary btn-sm my-0 p" type="submit">
                        <i class="fa fa-search"></i>
                    </button>

                </form>

            </div>

        </div>
        <!-- Heading -->

        <!--Grid row-->

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-lg-4 col-md-12 mb-4">

                <!--Card-->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header">Line chart</div>

                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="lineChart"></canvas>

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header">Radar Chart</div>

                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="radarChart"></canvas>

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header">Doughnut Chart</div>

                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="doughnutChart"></canvas>

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header">Google map</div>

                    <!--Card content-->
                    <div class="card-body">

                        <!--Google map-->
                        <div id="map-container" class="z-depth-1" style="height: 500px"></div>

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <!--Section: Modals-->
                    <section>

                        <!-- Frame Modal Top Info-->
                        <div class="modal fade top" id="frameModalTopInfoDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-frame modal-top modal-notify modal-info" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="row d-flex justify-content-center align-items-center">

                                            <p class="pt-3 pr-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit nisi quo
                                                provident fugiat reprehenderit nostrum quos..</p>

                                            <a role="button" class="btn btn-info">Get it now
                                                <i class="fa fa-diamond ml-1"></i>
                                            </a>
                                            <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No, thanks</a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Frame Modal Bottom Success-->

                        <!-- Frame Modal Bottom Success-->
                        <div class="modal fade bottom" id="frameModalBottomSuccessDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true" data-backdrop="false">
                            <div class="modal-dialog modal-frame modal-bottom modal-notify modal-success" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="row d-flex justify-content-center align-items-center">

                                            <p class="pt-3 pr-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit nisi quo
                                                provident fugiat reprehenderit nostrum quos..</p>

                                            <a role="button" class="btn btn-success">Get it now
                                                <i class="fa fa-diamond ml-1"></i>
                                            </a>
                                            <a role="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">No, thanks</a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Frame Modal Bottom Success-->

                        <!-- Side Modal Top Right Success-->
                        <div class="modal fade right" id="sideModalTRSuccessDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-side modal-top-right modal-notify modal-success" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Success</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit iusto nulla
                                                aperiam blanditiis ad consequatur in dolores culpa, dignissimos, eius
                                                non possimus fugiat. Esse ratione fuga, enim, ab officiis totam.
                                            </p>
                                        </div>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer justify-content-center">
                                        <a role="button" class="btn btn-success">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Side Modal Top Right Success-->

                        <!-- Side Modal Top Left Info-->
                        <div class="modal fade left" id="sideModalTLInfoDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-side modal-top-left modal-notify modal-info" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Info</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">

                                        <img src="https://mdbootstrap.com/wp-content/uploads/2016/11/admin-dashboard-bootstrap.jpg" alt="Material Design for Bootstrap - dashboard"
                                             class="img-fluid">

                                        <div class="text-center">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt vero illo
                                                error eveniet cum.
                                            </p>
                                        </div>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer justify-content-center">
                                        <a role="button" class="btn btn-info">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Side Modal Top Left Info-->

                        <!-- Side Modal Bottom Right Danger-->
                        <div class="modal fade right" id="sideModalBRDangerDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-danger" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading">Modal Danger</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-3">
                                                <p></p>
                                                <p class="text-center">
                                                    <i class="fa fa-shopping-cart fa-4x"></i>
                                                </p>
                                            </div>

                                            <div class="col-9">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, molestiae
                                                    provident temporibus sunt earum.</p>
                                                <h2>
                                                    <span class="badge">v52gs1</span>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer justify-content-center">
                                        <a role="button" class="btn btn-danger">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Side Modal Bottom Right Danger-->

                        <!-- Side Modal Bottom Left Warning-->
                        <div class="modal fade left" id="sideModalBLWarningDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-side modal-bottom-left modal-notify modal-warning" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading">Modal Warning</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-3 text-center">
                                                <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(1).jpg" alt="Michal Szymanski - founder of Material Design for Bootstrap"
                                                     class="img-fluid z-depth-1-half rounded-circle">
                                                <div style="height: 10px"></div>
                                                <p class="title mb-0">Jane</p>
                                                <p class="text-muted " style="font-size: 13px">Consultant</p>
                                            </div>

                                            <div class="col-9">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, molestiae
                                                    provident temporibus sunt earum.</p>
                                                <p class="card-text">
                                                    <strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</strong>
                                                </p>
                                            </div>
                                        </div>


                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer justify-content-center">
                                        <a role="button" class="btn btn-warning">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-warning waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Side Modal Bottom Left Warning-->

                        <!--Modal Form Login with Avatar Demo-->
                        <div class="modal fade" id="modalLoginAvatarDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document">
                                <!--Content-->
                                <div class="modal-content">

                                    <!--Header-->
                                    <div class="modal-header">
                                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg" class="rounded-circle img-responsive" alt="Avatar photo">
                                    </div>
                                    <!--Body-->
                                    <div class="modal-body text-center mb-1">

                                        <h5 class="mt-1 mb-2">Maria Doe</h5>

                                        <div class="md-form ml-0 mr-0">
                                            <input type="password" type="text" id="form1" class="form-control ml-0">
                                            <label for="form1" class="ml-0">Enter password</label>
                                        </div>

                                        <div class="text-center mt-4">
                                            <button class="btn btn-cyan">Login
                                                <i class="fa fa-sign-in ml-1"></i>
                                            </button>
                                        </div>
                                    </div>

                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!--Modal Form Login with Avatar Demo-->

                        <!--Modal: Login / Register Form Demo-->
                        <div class="modal fade" id="modalLRFormDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        ...
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Modal: Login / Register Form Demo-->

                        <!-- Central Modal Large Info-->
                        <div class="modal fade" id="centralModalLGInfoDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-notify modal-info" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Info</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit iusto nulla
                                                aperiam blanditiis ad consequatur in dolores culpa, dignissimos, eius
                                                non possimus fugiat. Esse ratione fuga, enim, ab officiis totam.
                                            </p>
                                        </div>
                                        <img src="https://mdbootstrap.com/wp-content/uploads/2016/11/admin-dashboard-bootstrap.jpg" alt="Material Design for Bootstrap - dashboard"
                                             class="img-fluid">

                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer">
                                        <a role="button" class="btn btn-info">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Central Modal Large Info-->

                        <!-- Central Modal Fluid Success-->
                        <div class="modal fade" id="centralModalFluidSuccessDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-fluid modal-notify modal-success" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Success</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit iusto nulla
                                                aperiam blanditiis ad consequatur in dolores culpa, dignissimos, eius
                                                non possimus fugiat. Esse ratione fuga, enim, ab officiis totam.
                                            </p>
                                        </div>
                                        <ul class="list-group z-depth-0">
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer">
                                        <a role="button" class="btn btn-success">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Central Modal Fluid Success-->

                        <!-- Full Height Modal Right Success Demo-->
                        <div class="modal fade right" id="fluidModalRightSuccessDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true" data-backdrop="false">
                            <div class="modal-dialog modal-full-height modal-right modal-notify modal-success" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Success</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit iusto nulla
                                                aperiam blanditiis ad consequatur in dolores culpa, dignissimos, eius
                                                non possimus fugiat. Esse ratione fuga, enim, ab officiis totam.
                                            </p>
                                        </div>
                                        <ul class="list-group z-depth-0">
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer justify-content-center">
                                        <a role="button" class="btn btn-success">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-success waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Full Height Modal Right Success Demo-->

                        <!-- Full Height Modal Left Info Demo-->
                        <div class="modal fade left" id="fluidModalLeftInfoDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-full-height modal-left modal-notify modal-info" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Success</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit iusto nulla
                                                aperiam blanditiis ad consequatur in dolores culpa, dignissimos, eius
                                                non possimus fugiat. Esse ratione fuga, enim, ab officiis totam.
                                            </p>
                                        </div>
                                        <ul class="list-group z-depth-0">
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer justify-content-center">
                                        <a role="button" class="btn btn-info">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Full Height Modal Right Info Demo-->

                        <!-- Full Height Modal Top Warning Demo-->
                        <div class="modal fade top" id="fluidModalTopWarningDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
                             data-backdrop="false">
                            <div class="modal-dialog modal-full-height modal-top modal-notify modal-warning" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Warning</p>

                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                        </div>
                                        <ul class="list-group z-depth-0">
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer">
                                        <a role="button" class="btn btn-warning">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-warning waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Full Height Modal Top Warning Demo-->

                        <!-- Full Height Modal Bottom Danger Demo-->
                        <div class="modal fade bottom" id="fluidModalBottomDangerDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true" data-backdrop="false">
                            <div class="modal-dialog modal-full-height modal-bottom modal-notify modal-danger" role="document">
                                <!--Content-->
                                <div class="modal-content">
                                    <!--Header-->
                                    <div class="modal-header">
                                        <p class="heading lead">Modal Danger</p>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text">&times;</span>
                                        </button>
                                    </div>

                                    <!--Body-->
                                    <div class="modal-body">
                                        <div class="text-center">
                                            <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                                        </div>
                                        <ul class="list-group z-depth-0">
                                            <li class="list-group-item justify-content-between">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">2</span>
                                            </li>
                                            <li class="list-group-item justify-content-between">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">1</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <!--Footer-->
                                    <div class="modal-footer">
                                        <a role="button" class="btn btn-danger">Get it now
                                            <i class="fa fa-diamond ml-1"></i>
                                        </a>
                                        <a role="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">No, thanks</a>
                                    </div>
                                </div>
                                <!--/.Content-->
                            </div>
                        </div>
                        <!-- Full Height Modal Bottom Danger Demo-->

                    </section>
                    <!--Section: Modals-->

                    <!-- Card header -->
                    <div class="card-header">Modals</div>

                    <!--Card content-->
                    <div class="card-body">

                        <div class="text-center mb-5">
                            <p class="lead">Click buttons below to launch modals demo</p>
                        </div>

                        <!-- First row-->
                        <div class="row">

                            <!--First column-->
                            <div class="col-md-3">
                                <h5 class="text-center mb-3">Frame Modal</h5>

                                <img src="https://mdbootstrap.com/img/brandflow/modal4.jpg" alt="MDB graphics" class="img-fluid z-depth-1">
                                <div class="text-center">
                                    <h5 class="my-3">Position</h5>

                                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#frameModalTopInfoDemo" data-backdrop="false">Top</a>
                                    <br>
                                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#frameModalBottomSuccessDemo" data-backdrop="false">Bottom</a>
                                </div>
                            </div>
                            <!--First column-->

                            <!--Second column-->
                            <div class="col-md-3">
                                <h5 class="text-center mb-3">Side Modal</h5>

                                <img src="https://mdbootstrap.com/img/brandflow/modal3.jpg" alt="MDB graphics" class="img-fluid z-depth-1">
                                <div class="text-center">
                                    <h5 class="my-3">Position</h5>

                                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#sideModalTRSuccessDemo" data-backdrop="false">Top Right</a>
                                    <br>
                                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#sideModalTLInfoDemo">Top Left</a>
                                    <br>
                                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#sideModalBRDangerDemo">Bottom Right</a>
                                    <br>
                                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#sideModalBLWarningDemo">Bottom Left</a>
                                </div>
                            </div>
                            <!--Second column-->

                            <!--Third column-->
                            <div class="col-md-3">
                                <h5 class="text-center mb-3">Central Modal</h5>

                                <img src="https://mdbootstrap.com/img/brandflow/modal2.jpg" alt="MDB graphics" class="img-fluid z-depth-1">
                                <div class="text-center">
                                    <h5 class="my-3">Size</h5>

                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalLoginAvatarDemo">Small </button>
                                    <br>
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalLRFormDemo">Medium </button>
                                    <br>
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#centralModalLGInfoDemo">Large </button>
                                    <br>
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#centralModalFluidSuccessDemo">Fluid </button>
                                </div>
                            </div>
                            <!--Third column-->

                            <!--Fourth column-->
                            <div class="col-md-3">
                                <h5 class="text-center mb-3">Fluid Modal</h5>

                                <img src="https://mdbootstrap.com/img/brandflow/modal1.jpg" alt="MDB graphics" class="img-fluid z-depth-1">
                                <div class="text-center">
                                    <h5 class="my-3">Position</h5>

                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#fluidModalRightSuccessDemo">Right</button>
                                    <br>
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#fluidModalLeftInfoDemo">Left</button>
                                    <br>
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#fluidModalTopWarningDemo">Top</button>
                                    <br>
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#fluidModalBottomDangerDemo">Bottom</button>
                                </div>
                            </div>
                            <!--Fourth column-->

                        </div>
                        <!-- /.First row-->

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

    </div>
</main>
<!--Main layout-->

<!--Footer-->
<footer class="page-footer text-center font-small mt-4 wow fadeIn">
    <hr class="my-4">
    <!--Call to action-->
    <div class="service-footer-wrapper">
        <ul class="sub-sites" style="list-style: none">
            <li style="display: inline;"><a title="Swachhbharat" alt="Swachhbharat" href="https://swachhbharat.mygov.in/" target="_blank">
                <img title="Swachhbharat" alt="Swachhbharat" src="https://www.mygov.in/footer_service/images/swachh-bharat.png">
            </a></li>
            <li style="display: inline;"><a title="E-Greetings" alt="E-Greetings" href="https://egreetings.gov.in" target="_blank">
                <img title="E-Greetings" alt="E-Greetings" src="https://www.mygov.in/footer_service/images/e-greating.png"></a>
            </li>

            <li style="display: inline;"><a title="MyGov Auth" alt="MyGov Auth" href="https://auth.mygov.in" target="_blank">
                <img title="MyGov Auth" alt="MyGov Auth" src="https://www.mygov.in/footer_service/images/mygov_auth.png"></a></li>
            <li style="display: inline;"><a title="MyGov Blog" alt="MyGov Blog" href="https://blog.mygov.in" target="_blank">
                <img alt="" src="https://www.mygov.in/footer_service/images/blog-logo.png"></a></li>
            <li style="display: inline;"><a title="MyGov Innovate" alt="MyGov Innovate" href="https://innovate.mygov.in" target="_blank">
                <img title="MyGov Innovate" alt="MyGov Innovate" src="https://www.mygov.in/footer_service/images/innovation-logo.png"></a></li>
            <li style="display: inline;"><a title="MyGov Quiz" alt="MyGov Quiz" href="https://quiz.mygov.in" target="_blank">
                <img title="MyGov Quiz" alt="MyGov Quiz" src="https://www.mygov.in/footer_service/images/mygov_quiz.png"></a></li>
            <li style="display: inline;"><a title="Transforming India" alt="Transforming India" href="https://transformingindia.mygov.in" target="_blank">
                <img title="Transforming India" alt="Transforming India" src="https://www.mygov.in/footer_service/images/Transforming-india-logo.png"></a></li>
            <li style="display: inline;"><a title="MyGov Pledge" alt="MyGov Pledge" href="https://pledge.mygov.in" target="_blank">
                <img title="MyGov Pledge" alt="MyGov Pledge" src="https://www.mygov.in/footer_service/images/mygov_pledge.png"></a></li>
        </ul>  <div class="footer-logo">

        <ul style="list-style: none;">
            <li style="display: inline;"><a target="_blank" href="http://www.digitalindia.gov.in">
                <img title="Digital India (External Site that opens in a new window)" alt="Digital India" src="https://www.mygov.in/footer_service/images/digital-india-logo.png"></a></li>
            <li style="display: inline;"><a target="_blank" href="http://data.gov.in">
                <img title="Data Portal (External Site that opens in a new window)" alt="Data Portal" src="https://www.mygov.in/footer_service/images/data-gov-logo.png"></a></li>
            <li style="display: inline;"><a target="_blank" href="https://india.gov.in"><img title="National Portal of India (External Site that opens in a new window)" alt="National Portal of India" src="https://www.mygov.in/footer_service/images/india-gov-logo.png"></a></li>
            <li style="display: inline;"><a target="_blank" href="https://www.mygov.in"><img title="MyGov (External Site that opens in a new window)" alt="MyGov" src="https://www.mygov.in/footer_service/images/mygov-footer-logo.png"></a></li>
            <li style="display: inline;"><a title="MeitY (External Site that opens in a new window)" alt="MeitY" target="_blank" href="http://meity.gov.in/"><img title="Meity(External Site that opens in a new window)" alt="Meity" src="https://www.mygov.in/footer_service/images/Meity_logo.png"></a></li>
            <li style="display: inline;"><a target="_blank" href="http://pmindia.gov.in"><img title="PMINDIA(External Site that opens in a new window)" alt="PMINDIA" src="https://www.mygov.in/footer_service/images/pm-india-logo.png"></a></li></ul>  </div></div>
    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">

        <!--Facebook-->
        <a href="https://www.facebook.com/Labour-Department-of-Government-of-National-Capital-Territory-of-Delhi-1793622977627039/" target="_blank">
            <button type="button" href="" class="btn btn-fb facebook"><i class="fa fa-facebook pr-1"></i> Facebook</button> </a>
        <!--Twitter-->
        <a href="https://twitter.com/labour_gnctd" target="_blank">
            <button type="button" class="btn btn-tw twitter"><i class="fa fa-twitter pr-1"></i> Twitter</button>
        </a>


    </div>
    <!-- Social icons -->

    <!--/.Social buttons-->
    <!--Copyright-->
    <div class="footer-copyright py-3">
        &copy; 2018 Copyright:
        <a href="/"> Delhi Labour Website </a>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="homepage/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="homepage/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="homepage/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="homepage/js/mdb.min.js"></script>
<!-- Initializations -->
<script type="text/javascript">
    // Animations initialization
    new WOW().init();

    function validateForm() {
        var name =  document.getElementById('cName').value;
        if (name.trim() == "") {
            document.getElementById('status').innerHTML = "Name cannot be empty";
            return false;
        }
        var email =  document.getElementById('cEmail').value;
        if (email.trim() == "") {
            document.getElementById('status').innerHTML = "Email cannot be empty";
            return false;
        } else {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if(!re.test(email)){
                document.getElementById('status').innerHTML = "Email format invalid";
                return false;
            }
        }
        var subject =  document.getElementById('cSubject').value;
        if (subject.trim() == "") {
            document.getElementById('status').innerHTML = "Subject cannot be empty";
            return false;
        }
        var message =  document.getElementById('cMessage').value;
        if (message.trim() == "") {
            document.getElementById('status').innerHTML = "Message cannot be empty";
            return false;
        }
        document.getElementById('status').innerHTML = "Sending...";
        formData = {
            'name'     : $('input[name=cName]').val(),
            'email'    : $('input[name=cEmail]').val(),
            'subject'  : $('input[name=cSubject]').val(),
            'message'  : $('textarea[name=cMessage]').val()
        };


        $.ajax({
            url : "/contactUs",
            type: "POST",
            data : formData,
            success: function(data)
            {
                console.log(data)
                $('#status').text(data.message);
                if (data=="Data Saved") {  //If mail was sent successfully, reset the form.
                    $('#contact-form').closest('form').find("input[type=text], textarea").val("");
                    $('#resultContainer').text("Your response has been recorded on our system.");
                    $('#status').text("");
                }else{
                    $('#status').text("There was some error while sending your message to server.");
                }
            },
            error: function(xhr, status, error) {
                //alert(xhr.responseText);
                $('#status').text("There was some error while sending your message to server.");
            }
        });
    }

    function sendLogin() {
        var loginData = document.getElementById('lData').value;
        if(loginData.trim() == ""){
            $(document.getElementById("lData")).addClass("invalid");
            return false;
        }
        if(isNaN(loginData)==true){
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if(!re.test(loginData)){
                $(document.getElementById("lData")).addClass("invalid");
                return false;
            }
        }
        if(loginData.length != 10 && isNaN(loginData)!=true){
            $(document.getElementById("lData")).addClass("invalid");
            return false;
        }
        $('#loginStatus').text("Sending...");
        formData = {
            'lData' : $('input[name=lData]').val(),
        };

        $.ajax({
            url : "/ServletLogin",
            type: "POST",
            data : formData,
            success: function(data)
            {
                console.log(data)

                if (data=="OTP sent") {  //If mail was sent successfully, reset the form.
                    $('#loginStatus').text("OTP has been sent successfully.");
                    $('#loginStatus').css('color', 'green');
                    $('#loginButton').prop('onclick',null);
                    $('#lOTP').prop("disabled",false);
                    $('#loginButton').on('click',checkOTP);
                    document.getElementById('loginButton').onclick = checkOTP;

                }else{
                    $('#loginStatus').text("We cannot find you!!!");
                    $('#loginStatus').css('color', 'red');
                }
            },
            error: function(xhr, status, error) {
                //alert(xhr.responseText);
                $('#loginStatus').text("There was some error while sending your message to server.");
                $('#loginStatus').css('color', 'red');
            }
        });
    }
    function checkOTP(){
        $('#loginStatus').text("Validating OTP");
        $('#loginStatus').css('color', 'red');
        formData = {
            'username'     : $('input[name=lData]').val(),
            'otp'    : $('input[name=lOTP]').val(),
        };
        console.log(formData.String);
        $.ajax({
            url : "/login",
            type: "POST",
            data : formData,
            success: function(data)
            {
                console.log(data)
                if (data!="dashboard") {  //If mail was sent successfully, reset the form.
                    $('#loginStatus').text("OTP is invalid.");
                    $('#loginStatus').css('color', 'red');
                }
                else{
                    $('#loginButton').prop('onclick',null);
                    document.getElementById('loginButton').innerText = "Redirecting to Dashboard";
                    $('#loginButtonA').attr('href','dashboard');
                    $('#loginStatus').text("You are in...");
                    $('#loginStatus').css('color', 'green');
                    document.location.href = "/dashboard";
                }
            },
            error: function(xhr, status, error) {
                //alert(xhr.responseText);
                $('#loginStatus').text("There was some error while sending your message to server.");
                $('#loginStatus').css('color', 'red');
            }
        });
    }





    function sendRegister() {
        var name =  document.getElementById('rUsername').value;
        if (name.trim() == "") {
            $(document.getElementById("rUsername")).addClass("invalid");
            return false;
        }
        var fullname =  document.getElementById('rFullName').value;
        if (fullname.trim() == "") {
            $(document.getElementById("rFullName")).addClass("invalid");
            return false;
        }
        var email =  document.getElementById('rEmail').value;
        if (email.trim() == "") {
            $(document.getElementById("rEmail")).addClass("invalid");
            return false;
        } else {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if(!re.test(email)){
                $(document.getElementById("rEmail")).addClass("invalid");
                return false;
            }
        }

        var phone =  document.getElementById('rNumber').value;
        if (phone.trim() == "") {
            $(document.getElementById("rNumber")).addClass("invalid");
            return false;
        }else if(phone.length != 10){
            $(document.getElementById("rNumber")).addClass("invalid");
            return false;
        }
        else if(isNaN(phone)==true){
            $(document.getElementById("rNumber")).addClass("invalid");
            return false;
        }
        $('#registerStatus').text("Sending...");
        formData = {
            'rUsername'     : $('input[name=rUsername]').val(),
            'rEmail'    : $('input[name=rEmail]').val(),
            'rFullName'  : $('input[name=rFullName]').val(),
            'rNumber'  : $('input[name=rNumber]').val()
        };
        console.log(formData.String);
        $.ajax({
            url : "/ServletRegister",
            type: "POST",
            data : formData,
            success: function(data)
            {
                console.log(data)
                $('#status').text(data.message);
                if (data=="Registered") {  //If mail was sent successfully, reset the form.
                    $('#registerStatus').text("Successfully registered, Mail/Message sent. You can login now.");
                    $('#registerStatus').css('color', 'green');
                }else if (data =="Username Exist"){
                    $('#registerStatus').text("User Name already exist in our system.");
                    $('#registerStatus').css('color', 'red');
                }else if (data =="exist"){
                    $('#registerStatus').text("User already exist in our system.");
                    $('#registerStatus').css('color', 'red');
                }else{
                    $('#registerStatus').text("There was some error in Server. Try again.");
                    $('#registerStatus').css('color', 'red');
                }
            },
            error: function(xhr, status, error) {
                //alert(xhr.responseText);
                $('#registerStatus').text("There was some error while sending your message to server.");
                $('#registerStatus').css('color', 'red');
            }
        });
    }


</script>
<style type="text/css">
    .facebook{
        color:#3b5998 !important;
    }
    .twitter{
        color:#55acee !important;
    }
    .light-blue.darken-3 {
        background-color: #a7bbc7!important;
    }

    element.style {
    }
    .modal-dialog.cascading-modal .modal-c-tabs .nav-tabs {
        margin: -1.5rem 1rem 0 1rem;
    }
    #toast-container>div, .badge, .btn, .btn.disabled:active, .btn.disabled:focus, .btn.disabled:hover, .btn:disabled:active, .btn:disabled:focus, .btn:disabled:hover, .card, .card-wrapper .back, .card-wrapper .front, .card.card-cascade.wider .card-body, .counter, .dropdown-content, .jumbotron, .md-form input[type=date].input-alternate, .md-form input[type=datetime-local].input-alternate, .md-form input[type=email].input-alternate, .md-form input[type=number].input-alternate, .md-form input[type=password].input-alternate, .md-form input[type=search-md].input-alternate, .md-form input[type=search].input-alternate, .md-form input[type=tel].input-alternate, .md-form input[type=text].input-alternate, .md-form input[type=time].input-alternate, .md-form input[type=url].input-alternate, .md-form textarea.md-textarea.input-alternate, .md-pills .nav-link.active, .md-pills .show>.nav-link, .mdb-autocomplete-wrap, .media .media-left img, .modal-dialog.cascading-modal .modal-c-tabs .nav-tabs, .modal-dialog.modal-notify .modal-header, .navbar, .pagination .page-item.active .page-link, .pricing-card .price .version, .side-nav, .z-depth-1 {
        box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    }
    .modal-dialog.cascading-modal .nav-tabs {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
    }
    .page-footer, .top-nav-collapse {
        background-color: #1C2331;
    }.page-footer, .top-nav-collapse {
         background-color: #1C2331;
     }
</style>
</body>

</html>

