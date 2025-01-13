<?php
session_start();
//error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{



  ?>
<!DOCTYPE html>
<html lang="en">
<head>
 
  <title>Scholarship Management System||Dashboard</title>
  <!-- loader-->
  <link href="../assets/css/pace.min.css" rel="stylesheet"/>
  <script src="../assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="../assets/images/favicon.ico" type="image/x-icon">
  <!-- Vector CSS -->
  <link href="../assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
  <!-- simplebar CSS-->
  <link href="../assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="../assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="../assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="../assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="../assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body class="bg-theme bg-theme1">
 
<!-- Start wrapper-->
 <div id="wrapper">
 
  <!--Start sidebar-wrapper-->
   <?php include_once('includes/sidebar.php');?>
   <!--End sidebar-wrapper-->

<!--Start topbar header-->
<?php include_once('includes/header.php');?>
<!--End topbar header-->

<div class="clearfix"></div>
  
  <div class="content-wrapper">
    <div class="container-fluid">

  <!--Start Dashboard Content-->

  <div class="card mt-3">
    <div class="card-content">
        <div class="row row-group m-0">
          <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                   <?php
 
$sql ="SELECT * from  tblapply where Status is null";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$newapp=$query->rowCount();
?>
                  <h5 class="text-white mb-0"><?php echo htmlentities($newapp);?> <span class="float-right">New  Application</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                   
                  <a href="new-application.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                   <?php
$sql ="SELECT * from  tblapply where Status='Approved'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$approvedapp=$query->rowCount();
?>
                  <h5 class="text-white mb-0"><?php echo htmlentities($approvedapp);?> <span class="float-right">Approved Scholarship</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                   
                  <a href="approved-application.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <?php

$sql ="SELECT * from  tblapply where Status='Disbursed'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$disapp=$query->rowCount();
?>
                  <h5 class="text-white mb-0"><?php echo htmlentities($disapp);?> <span class="float-right">Disbursed Scholarship</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                  <a href="disbursed-scholarship.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <?php
$sql ="SELECT * from  tblapply where Status='Rejected'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$totalrejected=$query->rowCount();
?>   
                  <h5 class="text-white mb-0"><?php echo htmlentities($totalrejected);?> <span class="float-right">Rejected Scholarship</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                  <a href="rejected-application.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>
            
        </div>
    </div>
 </div>  
    




<div class="card mt-3">
    <div class="card-content">
        <div class="row row-group m-0">

        <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <?php

$sql ="SELECT * from  tblapply";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$totalapps=$query->rowCount();
?>
                  <h5 class="text-white mb-0"><?php echo htmlentities($totalapps);?> <span class="float-right">Total Applications</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                  <a href="all-application.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>




    <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <?php
$sql ="SELECT tbluser.ID as uid,tbluser.FullName,tbluser.MobileNumber,tbluser.Email,tblscheme.ID as sid,tblscheme.SchemeName,tblapply.ID as appid,tblapply.ApplicationNumber,tblapply.ApplyDate,tblapply.Status,tblapply.Status from tblapply join tbluser on tblapply.UserID=tbluser.ID join tblscheme on tblapply.SchemeId=tblscheme.ID where tblapply.Status='Approved'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$totalwd=$query->rowCount();
?>   
                  <h5 class="text-white mb-0"><?php echo htmlentities($totalwd);?> <span class="float-right">Applications Wating for Disbursment</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                  <a href="reg-users.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>




    <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <?php
$sql ="SELECT * from  tbluser";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$totalusers=$query->rowCount();
?>   
                  <h5 class="text-white mb-0"><?php echo htmlentities($totalusers);?> <span class="float-right">Total Users</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                  <a href="reg-users.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>

         <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <?php
$sql ="SELECT * from  tblscheme";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$totalscheme=$query->rowCount();
?>   
                  <h5 class="text-white mb-0"><?php echo htmlentities($totalscheme);?> <span class="float-right">Listed Scheme</span></h5>
                    <div class="progress my-5" style="height:3px;">
                       <div class="progress-bar" style="width:100%"></div>
                    </div>
                  <a href="manage-scheme.php"><p class="mb-0 text-white small-font">View Details <span class="float-right"></span></p></a>
                </div>
            </div>
    

            
        </div>
    </div>
 </div>








      <!--End Dashboard Content-->
    
  <!--start overlay-->
      <div class="overlay toggle-menu"></div>
    <!--end overlay-->
    
    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
  
  <!--Start footer-->
  <?php include_once('includes/footer.php');?>
  <!--End footer-->
  
  <!--start color switcher-->
   <?php include_once('includes/color-switcher.php');?>
  <!--end color switcher-->
   
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="../assets/js/jquery.min.js"></script>
  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  
 <!-- simplebar js -->
  <script src="../assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="../assets/js/sidebar-menu.js"></script>
  <!-- loader scripts -->
  <script src="../assets/js/jquery.loading-indicator.js"></script>
  <!-- Custom scripts -->
  <script src="../assets/js/app-script.js"></script>
  <!-- Chart js -->
  
  <script src="../assets/plugins/Chart.js/Chart.min.js"></script>
 
  <!-- Index js -->
  <script src="../assets/js/index.js"></script>

  
</body>
</html>
<?php }  ?>