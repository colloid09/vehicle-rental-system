

<?php
session_start();
include('includes/dbconnection.php');
error_reporting(0);
if (strlen($_SESSION['vrmsuid']==0)) {
  header('location:logout.php');
  } else{

  
?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    
    <title>Vehicle Rental System | Four Wheeler Booking Detail</title>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="assets/css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="assets/css/responsive.css" rel="stylesheet">
<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+600+',height='+600+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>
    
</head>

<body class="loader-active">

    <!--== Preloader Area Start ==-->
    <div class="preloader">
        <div class="preloader-spinner">
            <div class="loader-content">
                <img src="assets/img/preloader.gif" alt="JSOFT">
            </div>
        </div>
    </div>
    <!--== Preloader Area End ==-->

   <?php include_once('includes/header.php');?>

    <!--== Page Title Area Start ==-->
    <section id="page-title-area" class="section-padding overlay">
        <div class="container">
            <div class="row">
                <!-- Page Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>My Booking</h2>
                        <span class="title-line"><i class="fa fa-car"></i></span>
                        <p></p>
                    </div>
                </div>
                <!-- Page Title End -->
            </div>
        </div>
    </section>
    <!--== Page Title Area End ==-->

    <!--== Contact Page Area Start ==-->
    <div class="contact-page-wrao section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 m-auto">
                    <div class="contact-form">
<?php echo $bid=$_GET['bookingid'];?> Booking Details



 <div class="row">
 <div class="col-lg-12">
<?php
//Getting Url
$link = "http"; 
$link .= "://"; 
$link .= $_SERVER['HTTP_HOST']; 

// Getting order Details
$userid= $_SESSION['vrmsuid'];
$ret=mysqli_query($con,"select BookingDate,Status,CreationDate from tblbookingcar where UserId='$userid' and BookingNumber='$bid'");
while($result=mysqli_fetch_array($ret)) {
?>



<?php } ?>
<!-- Invoice -->
<p>
 <a href="javascript:void(0);" onClick="popUpWindow('fw-invoice.php?invid=<?php echo $bid;?>');" title="Booking Invoice" style="color:#000">  Invoice</a></p>


 </div>
 </div> 

            <div class="row" style="margin-top:1%">
 <div class="col-lg-12">

        <?php 
 $query=mysqli_query($con,"Delete DATEDIFF(tblbookingcar.ReturnDate,tblbookingcar.BookingDate) as ddf,tblvehiclecar.Image,tblvehiclecar.VehicleName,tblvehiclecar.RentalPrice,tblbookingcar.FullName,tblbookingcar.BookingNumber,tblbookingcar.BookingDate,tblbookingcar.ReturnDate,tblbookingcar.TotalCost,tblbookingcar.Remark,tblbookingcar.Status,tblbookingcar.RemarkDate,tblbookingcar.CreationDate from tblvehiclecar join tblbookingcar on tblvehiclecar.ID=tblbookingcar.VehicleID where tblbookingcar.Userid='$userid' and tblbookingcar.BookingNumber=$bid");
$num=mysqli_num_rows($query);
if($num>0){
    $cnt=1;

?>




<?php } ?>

</table>




                </div>
            </div>         </div>
                </div>
            </div>
        </div>
</div>

</body>

</html>
<?php }  ?>