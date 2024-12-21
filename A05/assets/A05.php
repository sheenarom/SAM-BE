<!DOCTYPE html>
<html>

<head>
  <title>Island of Personality</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="A05/assets/img/island.jpg" type="image/icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    <?php include 'styles.css'; ?>
  </style>
</head>

<body class="w3-black">

  <?php
  $contactDetails = [
    'location' => 'MMRC San Bartolome Santo Tomas Batangas',
    'phone' => '09924278268',
    'email' => 'sheenarom27@gmail.com',
  ];
  ?>

  <!-- Sidebar -->
  <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
    <img src="A05/assets/img/sheena.png" style="width:100%">
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-black">
      <i class="fa fa-home w3-xxlarge"></i>
      <p>HOME</p>
    </a>
    <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <i class="fa fa-user w3-xxlarge"></i>
      <p>ABOUT</p>
    </a>
    <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <i class="fa fa-eye w3-xxlarge"></i>
      <p>PHOTOS</p>
    </a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <i class="fa fa-envelope w3-xxlarge"></i>
      <p>CONTACT</p>
    </a>
  </nav>

  <div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
    <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
      <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
      <a href="#about" class="w3-bar-item w3-button" style="width:25% !important">ABOUT</a>
      <a href="#photos" class="w3-bar-item w3-button" style="width:25% !important">PHOTOS</a>
      <a href="#contact" class="w3-bar-item w3-button" style="width:25% !important">CONTACT</a>
    </div>
  </div>

  <!-- Page Content -->
  <div class="w3-padding-large" id="main">

    <!-- Header -->
    <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
      <h1 class="w3-jumbo">Welcome to the Island of Personality</h1>
      <p>Discover the unique islands that shape our individuality</p>
      <img src="A05/assets/img/island.jpg" alt="island" class="w3-image" width="992" height="1108">
    </header>

    <!-- About Section -->
    <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="about">
      <h2 class="w3-text-light-grey">SHEENA ROM</h2>
      <hr style="width:200px" class="w3-opacity">
      <p>Hello! I’m Sheena Rom, a 4th-year BS Information Technology student at the Polytechnic University of the
        Philippines (PUP). UI/UX design is something I find fascinating because it combines creativity with
        functionality, making digital experiences both visually appealing and user-friendly.</p>
    </div>

    <!-- Photos Section -->
    <div class="w3-padding-64 w3-content" id="photos">
      <h2 class="w3-text-light-grey">Personalities Photos</h2>
      <hr style="width:200px" class="w3-opacity">

      <?php
      $photoCategories = [
        "Family Island" => [
          "Family1.jpeg" => "Celebrating the New Year with my Family",
          "Family2.jpeg" => "Family day in the mountain.",
          "Family3.jpeg" => "These shared experiences can create a sense of belonging and trust.",
        ],
        "Friendship Island" => [
          "Nclcian.jpeg" => "Best friends since senior high school.",
          "Annepunan.jpeg" => "College Besties since 1st year.",
          "Badjao.jpg" => "Best friends who bring joy, support, and comfort.",
        ],
      ];
      ?>

      <?php foreach ($photoCategories as $category => $photos): ?>
        <h3 class="w3-text-light-grey"><?= $category ?></h3>
        <div class="w3-row-padding" style="margin:0 -16px">
          <?php foreach ($photos as $file => $caption): ?>
            <div class="w3-half island-image">
              <img src="A05/assets/img/<?= $file ?>">
              <div class="text-overlay"><?= $caption ?></div>
            </div>
          <?php endforeach; ?>
        </div>
      <?php endforeach; ?>
    </div>

    <!-- Contact Section -->
    <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
      <h2 class="w3-text-light-grey">Contact Me</h2>
      <hr style="width:200px" class="w3-opacity">
      <div class="w3-section">
        <p><i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i>
          <?= $contactDetails['location'] ?></p>
        <p><i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Phone:
          <?= $contactDetails['phone'] ?>
        </p>
        <p><i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Email:
          <?= $contactDetails['email'] ?>
        </p>
      </div>
    </div>
  </div>

</body>

</html>