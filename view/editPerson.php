<?php
    echo'<form action="editePerson" method="POST">';
    echo '<input type="hidden" name="id" value="'.$editPerson['ID'].'"><br>';
    echo'Имя: <input type="text" name="name" value="'.$editPerson['Name'].'"><br>';
    echo'Фамилия: <input type="text" name="festName" value="'.$editPerson['FerstName'].'"><br>';
    echo'Телефон: <input type="text" name="number" value="'.$editPerson['Telefon'].'"><br>';
    echo'E-mail: <input type="text" name="e_mail" value="'.$editPerson['E-mail'].'"><br>';
    if ($_SESSION['status'] != 'ADMIN') {
        echo '<input type="hidden" name="status" value="'.$editPerson['Status'].'"><br>';
    }
    else if($_SESSION['status'] == 'ADMIN'){
        if($editPerson['Status'] == 'ADMIN'){
            echo '<input type="radio" name="status" value="1" checked>Админ<br>';
            echo '<input type="radio" name="status" value="2">Пользователь<br>';
        }
        else if ($editPerson['Status'] == 'USER'){
            echo '<input type="radio" name="status" value="1" >Админ<br>';
            echo '<input type="radio" name="status" value="2" checked>Пользователь<br>';
        }
        
    }
    echo '<input type="submit" value="обновить">';
    echo'</form>';
?>
<?php $content = ob_get_clean(); ?>

<?php include "view/templates/layout.php";

