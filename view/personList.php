
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>E-mail</th>
            <th>телефон</th>
            <th>Статус</th>
            <th>Логин</th>
        </tr>
    </thead>
    <tbody>
        <?php

            foreach ($personList as $person){
                echo '<tr>';
                    echo '<td>'.$person['ID'].'</td>';
                    echo '<td>'.$person['Name'].'</td>';
                    echo '<td>'.$person['FerstName'].'</td>';
                    echo '<td>'.$person['E-mail'].'</td>';
                    echo '<td>'.$person['Telefon'].'</td>';
                    echo '<td>'.$person['Status'].'</td>';
                    echo '<td>'.$person['Nicname'].'</td>';
                    if($_SESSION['status'] == 'ADMIN'){
                        echo '<td><a href="editPerson?id='.$person['ID'].'">Изменить</a></td>';
                        echo '<td><a href="deletPerson?id='.$person['ID'].'">Удалить</a></td>';
                        echo '<td><a href="givePerson?id='.$person['ID'].'">Выдать отчивку</a></td>';
                    }
                echo '</tr>';
            }
        ?>
    </tbody>
</table>
<?php $content = ob_get_clean(); ?>

<?php
include "view/templates/layout.php";