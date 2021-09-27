<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Learning Assistant</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </head>

    <body style="padding-top: 50px;">
        
        <!-- Header -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <img src="img/download.jpg" alt="curve">
                    <a class="navbar-brand" href="index.html"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="videos.html"><span class="glyphicon glyphicon-book"></span> View Content</a></li>
                        <li><a href="settings.html"><span class="glyphicon glyphicon-book"></span> Settings</a></li>
                        <li><a href="logout.html"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <br>
        <br>
        <!--Header end-->
<?php 
require('db.php');
$se=$_REQUEST["data"];
//var $pdo;

$data = $conn ->query("SELECT * FROM lcdb.uploadfile WHERE filename like '%$se%'")->fetchAll();
// and somewhere later:
foreach ($data as $row)
 {
    
?>
        <table align="center" style= "margin-bottom:10px">
        <tr style="border:2px solid black">
        <td style="padding:10px"><?php echo $row['filename'] ?></td>
        <td style="border-left:1px solid black; padding:10px"><a href="uploads/<?php echo $row['filename'] ?>" target="_blank">View Content</a></td>
        </tr>
</table>
        <?php
 }
 ?>
    </body> 
</html>

