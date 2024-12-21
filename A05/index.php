<?php
include('connect.php');
$result = executeQuery("SELECT * FROM islandsOfPersonality");
?>

<!DOCTYPE html>
<html>

<head>
    <title>Sheena R.</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: "Montserrat", sans-serif
        }

        .content img {
            max-width: 100%;
            height: auto;
            margin: 0 auto;
            display: block;
        }

        .island-img {
            max-height: 450px;
            object-fit: cover;
        }

        .w3-row-padding img {
            margin-bottom: 12px
        }

        .w3-sidebar {
            width: 120px;
            background: #222;
        }

        #main {
            margin-left: 120px
        }

        @media only screen and (max-width: 600px) {
            #main {
                margin-left: 0
            }
        }
    </style>
</head>

<body class="w3-black">

    <!-- Icon Bar (Sidebar - hidden on small screens) -->
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
        <!-- Avatar image in top left corner -->
        <img src="imgs/profile.jpg" style="width:100%">
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-black">
            <i class="fa fa-home w3-xxlarge"></i>
            <p>HOME</p>
        </a>
        <a href="#island" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <i class="fa fa-eye w3-xxlarge"></i>
            <p>ISLANDS</p>
        </a>
        <a href="#footer" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <i class="fa fa-envelope w3-xxlarge"></i>
            <p>CONTACT</p>
        </a>
    </nav>

    <!-- Navbar on small screens (Hidden on medium and large screens) -->
    <div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
        <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
            <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
            <a href="#island" class="w3-bar-item w3-button" style="width:25% !important">ISLANDS</a>
            <a href="#footer" class="w3-bar-item w3-button" style="width:25% !important">CONTACT</a>
        </div>
    </div>

    <!-- Page Content -->
    <div class="w3-padding-large" id="main">
        <!-- Home -->
        <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
            <h1 class="w3-jumbo"><span class="w3-hide-small">I'm</span> Sheena R.</h1>
            <p>My Core Memories</p>
            <img src="imgs/profile.jpg" alt="boy" class="w3-image" width="500" height="500">
        </header>

        <!-- Island Section -->
        <div id="island">
            <?php
            $result->data_seek(0);

            while ($island = $result->fetch_assoc()) {
                $islandID = $island['islandOfPersonalityID'];
                $contentResult = $conn->query("SELECT * FROM islandContents WHERE islandOfPersonalityID = $islandID");
            ?>

                <div class="w3-container w3-padding-64 w3-light-grey"
                    id="<?php echo strtolower(str_replace(' ', '_', $island['name'])); ?>"
                    style="background-color: <?php echo $island['color']; ?>;">
                    <h1 class="w3-center w3-text-black w3-large"><b><?php echo $island['name']; ?></b></h1>
                    <p class="w3-center w3-large w3-text-black"><?php echo $island['longDescription']; ?></p>
                    <img class="w3-image w3-round w3-margin-top w3-margin-bottom" src="<?php echo $island['image']; ?>"
                        style="width:100%;height:auto;">
                    <p class="w3-text-black w3-center"><?php echo $island['shortDescription']; ?></p><br>

                    <?php while ($content = $contentResult->fetch_assoc()) { ?>
                        <div class="w3-content">
                            <img class="w3-round w3-image w3-margin-top" src="<?php echo $content['image']; ?>"
                                alt="<?php echo $content['content']; ?>">
                            <p class="w3-center w3-large w3-text-black"><?php echo $content['content']; ?></p>
                        </div>
                    <?php } ?>
                </div>
            <?php } ?>
        </div>

        <!-- Footer -->
        <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge" id="footer">
            <i class="fa fa-facebook-official w3-hover-opacity"></i>
            <i class="fa fa-instagram w3-hover-opacity"></i>
            <i class="fa fa-snapchat w3-hover-opacity"></i>
            <i class="fa fa-pinterest-p w3-hover-opacity"></i>
            <i class="fa fa-twitter w3-hover-opacity"></i>
            <i class="fa fa-linkedin w3-hover-opacity"></i>
            <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank"
                    class="w3-hover-text-green">w3.css</a></p>
        </footer>
    </div>

</body>

</html>

<?php $conn->close(); ?>