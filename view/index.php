<?php
ob_start();
$title = "гавная страница";
?>
<?php
if(!isset($_SESSION['id'])){
    echo '<div>';
    echo '<p>Вы гость</p>';
    echo '<form action="login" method="POST">';
    echo 'Логин: <input type="text" name="login"><br>';
    echo 'Пароль: <input type="password" name="password"><br>';
    echo '<input type="submit" value="Вход">';
    echo '</form>';
   echo '<a href="registr" >Регистрация</a>';
   echo '</div>';
}
elseif ($_SESSION['status'] == 'ADMIN') {
    echo '<div>';
    echo '<p>Вы админ</p>';
    echo '<form action="logout" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="Выход">';
    echo '</form>';
    //
    echo '<form action="personList" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="список пользователей">';
    echo '</form>';
    //
    echo '<form action="achivmentList" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="список ачивок">';
    echo '</form>';
    echo '</div>';
}
elseif ($_SESSION['status'] == 'USER') {
    echo '<div>';
    echo '<p>Вы пользователь</p>';
    echo '<form action="logout" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="Выход">';
    echo '</form>';
    //
    echo '<form action="profil" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="профиль">';
    echo '</form>';
    echo '</div>';
}
?>
<?php $content = ob_get_clean(); ?>

<?php
include "view/templates/layout.php";
