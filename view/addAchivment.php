<form method="POST" action="addAchivment" enctype="multipart/form-data">
    <input type="text" name="name"><br>
    <input type="text" name="Description"><br>
    <input type="file" name="file"><br>
    <input type="submit" name="submit" value="добавить">
</form>
<?php $content = ob_get_clean(); 
?>
<?php
include "view/templates/layout.php";

