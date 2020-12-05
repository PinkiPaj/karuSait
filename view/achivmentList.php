<?php
ob_start();
$title = "отчивки";
?>
<?php
    echo '<form action="addAchivments" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="Добавить отчивку">';
    echo '</form>';
    //
    echo '<form action="acivkaPersonList" method="POST">';
    echo '<input type="hidden"><br>';
    echo '<input type="submit" value="просмотр ачивок пользователей">';
    echo '</form>';
    //

?>
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Название</th>
            <th>Описание</th>
            <th>Картинка</th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($achivmentList as $achimhent){
            echo '<tr>';
                echo'<td>'.$achimhent['IDAchievement'].'</td>';
                echo'<td>'.$achimhent['Name'].'</td>';
                echo'<td>'.$achimhent['Description'].'</td>';
                echo'<td><img src="images/'.$achimhent['NameFail'].'"></td>';
            echo '</tr>';
        }
        ?>
    </tbody>
</table>
<?php $content = ob_get_clean(); ?>

<?php
include "view/templates/layout.php";