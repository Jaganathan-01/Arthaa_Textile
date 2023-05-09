<?php 
session_start();
if(!isset($_SESSION["admin"])){
  ?>
  <script type="text/javascript">
  window.location="index.php";
  </script>
  <?php
}
?>
<?php include "header.php";
include "../user/connection.php";?>
<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"><a href="dashboard.php"  class="tip-bottom"><i class="icon-home"></i>
            Dashboard</a></div>
    </div>
    <!--End-breadcrumbs-->
    
    <!--Action boxes-->
    <div class="container-fluid">

    <div class="row-fluid" style="background-color: white; min-height: 1000px; padding:10px;display: flex;">
        
        <div class="card" style="width:40%;border-style:solid;border-style:none;border-radius:10px;float:left;background-color: #FF8C00;padding-top:100px;">
            <div class="card-body">
                <h1 class="card-title text-center">Total No of Orders</h1>
                <p style="font-size:100px;margin-top:100px;text-align:center;">
                    <?php
                    $count=0;
                    $res=mysqli_query($link,"select * from billing_header");
                    $count=mysqli_num_rows($res);
                    echo $count;
                    ?>
                </p>
            </div>
        </div>
        <div class="card" style="width:40%;border-style:solid;border-style:none;border-radius:10px;float:left;background-color: #32CD32;padding-top:100px;">
            <div class="card-body">
                <h1 class="card-title text-center" style="text-align:center;">No of Products</h1>
                <p style="font-size:100px;margin-top:100px;text-align:center;">
                    <?php
                    $count=0;
                    $res=mysqli_query($link,"select * from products");
                    $count=mysqli_num_rows($res);
                    echo $count;
                    ?>
                </p>
            </div>
        </div>
        <div class="card" style="width:40%;border-style:solid;border-style:none;border-radius:10px;float:left;background-color: #4682B4;padding-top:100px;">
            <div class="card-body">
                <h1 class="card-title text-center">Total Company</h1>
                <p style="font-size:100px;margin-top:100px;text-align:center;">
                    <?php
                    $count=0;
                    $res=mysqli_query($link,"select * from company_name");
                    $count=mysqli_num_rows($res);
                    echo $count;
                    ?>
                </p>
            </div>
        </div>
        
        </div>

    </div>
</div>

<!--end-main-container-part-->
<?php include "footer.php";?>
