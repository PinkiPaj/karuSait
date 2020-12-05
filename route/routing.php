<?php
$host = explode('?', $_SERVER['REQUEST_URI'])[0];
$num = substr_count($host, '/');
$path = explode('/', $host)[$num];
if($path == '' || $path == 'index.php'){
    $response = Controller::index();
}
//regitr-------------------------------
elseif ($path == 'registr') {
    $response = Controller::registr();
}
elseif ($path == 'registrPerson') {
    $response = Controller::registrPerson();
}
//login----------------------
elseif ($path == 'login') {
    $response = Controller::login();
}
//logout----------------------
elseif ($path == 'logout') {
    $response = Controller::logout();
}
//personList----------------------------
elseif ($path == 'personList') {
    $response = Controller::personList();
}
//editperson----------------------------
elseif ($path == 'editPerson' && isset ($_GET['id'])) {
    $response = Controller::editPerson($_GET['id']);
}
elseif ($path == 'editePerson') {
    $response = Controller::editePerson();
}
//delete
elseif ($path == 'deletPerson' && isset ($_GET['id'])) {
    $response = Controller::deletPerson($_GET['id']);
}
//achivment
elseif ($path == 'achivmentList') {
    $response = Controller::achivmentList();
}
elseif ($path == 'addAchivments') {
    $response = Controller::addAchivments();
}
elseif ($path == 'addAchivment') {
    $response = Controller::addAchivment();
}
//
elseif ($path == 'profil') {
    $response = Controller::profil();
}
//
else{
    $response = Controller::error404();
}