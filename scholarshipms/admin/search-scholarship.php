<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{




  ?>
<!DOCTYPE html>
<html lang="en">
<head>
 
  <title>Scholarship Management System||Manage Scheme</title>
  <!-- loader-->
  <link href="../assets/css/pace.min.css" rel="stylesheet"/>
  <script src="../assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="../assets/images/favicon.ico" type="image/x-icon">
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

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

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
      <div class="row">
        
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">

              <form id="basic-form" method="post">
                                <div class="form-group">
                                    <label>Search by Application Number/ user name</label>
                                    <input id="searchdata" type="text" name="searchdata" required="true" class="form-control" placeholder="Enter Application Number / User Name"></div>
                                
                                <br>
                                <button type="submit" class="btn btn-primary" name="search" id="submit">Search</button>
                            </form>
            
              <div class="table-responsive">
                <?php
if(isset($_POST['search']))
{ 

$sdata=$_POST['searchdata'];
  ?>
  <h4 align="center">Result against "<?php echo $sdata;?>" keyword </h4>
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Application Number</th>
                      <th scope="col">Name of Scheme</th>
                      <th scope="col">Full Name</th>
                      <th scope="col">Mobile Number</th>
                      <th scope="col">Apply Date</th>
                      <th scope="col">Status</th>
                      <th scope="col">Action</th>
                    
                    </tr>
                  </thead>
                  <tbody>
                    <?php
$sql="SELECT tbluser.ID as uid,tbluser.FullName,tbluser.MobileNumber,tbluser.Email,tblscheme.ID as sid,tblscheme.SchemeName,tblapply.ID as appid,tblapply.ApplicationNumber,tblapply.ApplyDate,tblapply.Status,tblapply.Status from tblapply join tbluser on tblapply.UserID=tbluser.ID join tblscheme on tblapply.SchemeId=tblscheme.ID where tblapply.ApplicationNumber like '$sdata%' || tbluser.FullName like '$sdata%'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                    <tr>
                                                <td><?php echo htmlentities($cnt);?></td>
                                               
                                                <td><?php  echo htmlentities($row->ApplicationNumber);?></td>
                                                <td><?php  echo htmlentities($row->SchemeName);?></td>
                                                <td><?php  echo htmlentities($row->FullName);?></td>
                                                <td><?php  echo htmlentities($row->MobileNumber);?></td>
                                                <td><?php  echo htmlentities($row->ApplyDate);?></td>
                                                <?php if($row->Status==""){ ?>

                     <td class="font-w600"><?php echo "Not Updated Yet"; ?></td>
<?php } else { ?>
                                        <td>
                                            <span class="badge badge-primary"><?php  echo htmlentities($row->Status);?></span>
                                        </td><?php } ?> 
                                                <td><a href="view-application.php?viewid=<?php echo htmlentities ($row->appid);?>" class="btn btn-primary btn-sm">View Detail</a>

                                                </td>
                                            </tr>
                                    
                
                   
                  </tbody>
                   <?php 
$cnt=$cnt+1;
} } else { ?>
  <tr>
    <td colspan="8"> No record found against this search</td>

  </tr>
  <?php } }?>    
                </table>
              </div>
            </div>
          </div>
        </div>
      </div><!--End Row-->
	  
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
  
  <!-- Custom scripts -->
  <script src="../assets/js/app-script.js"></script>
	
</body>
</html>
<?php }  ?>