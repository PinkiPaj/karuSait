<?php
ob_start(); 
$title="Error 404";
?>
        <div class="about-us-content">
            <img style ="padding-left: 15%" src ="images/404.png" alt = "owo">							
        </div> <!-- /.inner-content -->
<?php $content = ob_get_clean(); ?>

<?php include "view/templates/layout.php";