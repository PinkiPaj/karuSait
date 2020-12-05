<?php
        $test1=$_POST['name'];
        $test2=$_POST['Description'];
        $test3=$_FILES['file']['name'];
        echo '<p>'.$test.'</p>';
        echo '<p>'.$test1.'</p>';
        echo '<p>'.$test2.'</p>';
        echo '<p>'.$test3.'</p>';
?>

<?php $content = ob_get_clean(); ?>

<?php
include "view/templates/layout.php";