<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{

 if(isset($_POST['submit']))
  {
   
  $schemename=$_POST['schemename'];
  $schtype=$_POST['schtype'];
  $schgrade=$_POST['schgrade'];
  $yearofsch=$_POST['yearofsch'];
  $category=$_POST['category'];
  $criteria=$_POST['criteria'];
  $docreq=$_POST['docreq'];
  $lastdate=$_POST['lastdate'];
  $schdesc=$_POST['schdesc'];
  $schamt=$_POST['schamt'];
  $eid=$_GET['editid'];
  $sql="update tblscheme set SchemeName=:schemename,SchemeType=:schtype,SchemeGrade=:schgrade,Yearofscholarship=:yearofsch,Category=:category,Criteria=:criteria,DocomentRequired=:docreq,LastDate=:lastdate,ScholarDesc=:schdesc,ScholarAmount=:schamt where ID=:eid";
     $query = $dbh->prepare($sql);
     $query->bindParam(':schemename',$schemename,PDO::PARAM_STR);
     $query->bindParam(':schtype',$schtype,PDO::PARAM_STR);
     $query->bindParam(':schgrade',$schgrade,PDO::PARAM_STR);
     $query->bindParam(':yearofsch',$yearofsch,PDO::PARAM_STR);
     $query->bindParam(':category',$category,PDO::PARAM_STR);
     $query->bindParam(':criteria',$criteria,PDO::PARAM_STR);
     $query->bindParam(':docreq',$docreq,PDO::PARAM_STR);
     $query->bindParam(':lastdate',$lastdate,PDO::PARAM_STR);
     $query->bindParam(':schdesc',$schdesc,PDO::PARAM_STR);
     $query->bindParam(':schamt',$schamt,PDO::PARAM_STR);
     $query->bindParam(':eid',$eid,PDO::PARAM_STR);
$query->execute();
      echo '<script>alert("Scheme detail has been updated")</script>';
  
}

  ?>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <title>Scholarship Management System||Update Scheme</title>
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

    <div class="row mt-3">
      <div class="col-lg-8">
         <div class="card">
           <div class="card-body">
           <div class="card-title">edit Scheme</div>
           <hr>
            <form method="post">
              <?php
                   $eid=$_GET['editid'];
$sql="SELECT * from tblscheme where ID=:eid";
$query = $dbh -> prepare($sql);
$query->bindParam(':eid',$eid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                       <div class="form-group">
            <label for="input-1">Name of Scheme</label>
            <input type="text" class="form-control" id="schemename" name="schemename" value="<?php  echo htmlentities($row->SchemeName);?>" required='true'>
           </div>
           <div class="form-group">
            <label for="input-2">Type of Scholarship</label>
            
            <select class="form-control" id="schtype" name="schtype" required='true' style="color:#fff !important">
              <option value="<?php  echo htmlentities($row->SchemeType);?>"><?php  echo htmlentities($row->SchemeType);?></option>
              <option value="Central">Central</option>
              <option value="UGC">UGC</option>
              <option value="AICTE">AICTE</option>
              <option value="State">State</option>
              <option value="Other">Other</option>
              
            </select>
           </div>
           <div class="form-group">
            <label for="input-3">Scholarship Grade</label>
            <select class="form-control" id="schgrade" name="schgrade" required='true' style="color:#fff !important">
              <option value="<?php  echo htmlentities($row->SchemeGrade);?>"><?php  echo htmlentities($row->SchemeGrade);?></option>
              <option value="High School Students">High School Students</option>
              <option value="Undergraduate Students">Undergraduate Students</option>
              <option value="Graduate Students">Graduate Students</option>
              <option value="Other">Other</option>
              
            </select>
           </div>
           <div class="form-group">
            <label for="input-4">Year of Scholarship</label>
            <input type="text" class="form-control" id="yearofsch" name="yearofsch" value="<?php  echo htmlentities($row->Yearofscholarship);?>" required='true'>
           </div>
           <div class="form-group">
            <label for="input-4">Category</label>
            <input type="text" class="form-control" id="category" name="category" value="<?php  echo htmlentities($row->Category);?>" required='true'>
           </div>
           <div class="form-group">
            <label for="input-4">Criteria</label>
            
            <textarea class="form-control" id="criteria" name="criteria" value="" required='true'><?php  echo htmlentities($row->Criteria);?></textarea>
           </div>
           <div class="form-group">
            <label for="input-4">Document Required</label>
            <textarea class="form-control" id="docreq" name="docreq" value="" required='true'><?php  echo htmlentities($row->DocomentRequired);?></textarea>
           </div>
           <div class="form-group">
            <label for="input-4">Last Date</label>
            <input type="date" class="form-control" id="lastdate" name="lastdate" value="<?php  echo htmlentities($row->LastDate);?>" required='true'>
           </div>
          <div class="form-group">
            <label for="input-4">Scheme Description</label>
            <textarea class="form-control" id="schdesc" name="schdesc" value="" required='true'><?php  echo htmlentities($row->ScholarDesc);?></textarea>
           </div>
          <div class="form-group">
            <label for="input-4">Scholarship Amount(per month)</label>
            <input type="text" class="form-control" id="schamt" name="schamt" value="<?php  echo htmlentities($row->ScholarAmount);?>" required='true'>
           </div>
           <?php $cnt=$cnt+1;}} ?>
           <div class="form-group">
            <button type="submit" class="btn btn-light px-5" name="submit"><i class="icon-lock"></i> Update</button>
          </div>
          </form>
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