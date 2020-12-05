<?php
print_r($phofil);
if(isset($_SESSION['id'])){
    echo '<h3>Имя:'.$phofil['Name'].'</h3>'; 
    echo '<h3>Фамилия:'.$phofil['FerstName'].'</h3>';
    echo '<h3>Е-майл:'.$phofil['E-mail'].'</h3>';
    echo '<h3>Телефон:'.$phofil['Telefon'].'</h3>';
    echo '<h3>Статус:'.$phofil['Status'].'</h3>';
    echo '<h3>Логин:'.$phofil['Nicname'].'</h3>';
}
?>

<?php $content = ob_get_clean(); ?>

<?php
include "view/templates/layout.php";
