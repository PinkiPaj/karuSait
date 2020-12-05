<?php
ob_start();
?>
<h1>Регистрация</h1>
<a href="index.php">На главную страницу</a>
<form action="registrPerson" method="POST">
    Логин: <input type="tetx" name="login"><br>
    Пароль: <input type="password" name="password"><br>
    Имя: <input type="text" name="name"><br>
    Фамилия: <input type="text" name="festName"><br>
    E-mail: <input type="email" name="e_mail"><br>
    Телефон: <input type="text" name="number"><br>
    <input type="submit" value="зарегестрироваться">
</form>
<?php $content = ob_get_clean();?>

<?php include 'view/templates/layout.php';