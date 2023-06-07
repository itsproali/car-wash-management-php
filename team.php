<?php //error_reporting(0);
include('includes/config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Car Wash management System | Team</title>
  <link href="img/favicon.ico" rel="icon">


  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

  <!-- CSS Libraries -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
  <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Template Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
</head>

<body>
  <?php include_once('includes/header.php'); ?>
  <!-- Page Header Start -->
  <div class="page-header">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Developer Team</h2>
        </div>
        <div class="col-12">
          <a href="index.php">Home</a>
          <a href="team.php">Developer Team</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Page Header End -->


  <!-- Team Start -->
  <div class="container-fluid" style="margin-top: 100px; margin-bottom: 100px;">

    <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 g-1">
      <?php
      $sql = "SELECT * from teams";
      $query = $dbh->prepare($sql);
      $query->execute();
      $results = $query->fetchAll(PDO::FETCH_OBJ);
      foreach ($results as $result) {
        ?>


        <div class="col my-2">
          <div class="card shadow">
            <div class="row g-0">
              <div class="col-md-5">
                <?php echo "<img src='$result->image' class='img-fluid rounded-start h-full' style='height: 100%; weight: 100%; object-fit: cover;' crossorigin='anonymous' alt='$result->name'>" ?>

              </div>
              <div class="col-md-7">
                <div class="card-body">
                  <h5 class="card-title">
                    <?php echo htmlentities($result->name); ?>
                  </h5>
                  <p class="card-text">Roll:
                    <?php echo htmlentities($result->roll); ?>
                  </p>
                  <p class="card-text">GitHub:
                    <?php echo "<a href='http://github.com/$result->github' target='_blank' rel='noopener noreferrer'>$result->github</a>" ?>
                  </p>
                  <p class="card-text">
                    <?php echo htmlentities($result->email); ?>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>


      <?php } ?>
    </div>
  </div>
  <!-- Team End -->







  <?php include_once('includes/footer.php'); ?>
  <!-- JavaScript Libraries -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>

  <!-- Contact Javascript File -->
  <script src="mail/jqBootstrapValidation.min.js"></script>
  <script src="mail/contact.js"></script>

  <!-- Template Javascript -->
  <script src="js/main.js"></script>
</body>

</html>