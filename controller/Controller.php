<?php

class Controller {

    //error404------------------------
    public static function error404() {
        include_once 'view/404.php';
    }

    //index---------
    public static function index() {
        include_once 'view/index.php';
    }

    //registr------------------
    public static function registr() {
        include_once 'view/registr.php';
    }
    public static function registrPerson(){
        $salt= PasswordCipher::Salt();
        $password = PasswordCipher::PasswordCiphers($_POST["password"],$salt);
        Model::setResistr($password,$salt);
        header('Location:index.php');
    }
    //login------------
    public static function login() {
        $password_test = $_POST["password"];
        $inf_login = Model::getLoginInf();
        $salt = $inf_login['Solt'];
        $password_true = $inf_login['Password'];
        $password = PasswordCipher::PasswordCiphers($password_test, $salt);
        if($password_true == $password){
           $login = Model::getLogin($password_true,$salt);
           $_SESSION['id'] = $login['ID'];
           $_SESSION['status'] = $login['Status'];
        include_once 'view/index.php';
        }
    }
    //logout----------------
    public static function logout(){       
        unset($_SESSION['id']);
        unset($_SESSION["status"]);
        header('Location:index.php');
    }
    //personList-------------
    public static function personList(){
        $personList = Model::getPersonList();
        include_once 'view/personList.php';
    }
    //editPerson-------------
    public static function editPerson($id){
        $editPerson = Model::getEditPerson($id);
        include_once 'view/editPerson.php';
    }
    public static function editePerson(){
        Model::setEditePerson();
        $personList = Model::getPersonList();
        include_once 'view/personList.php';
    }
    //deletePerson---------
    public static function deletPerson($id){
        Model::setDeletPerson($id);
        $personList = Model::getPersonList();
        include_once 'view/personList.php';
    }
    //achivment---------
    public static function achivmentList(){
        $achivmentList = Model::getAchivmentList();
        include_once 'view/achivmentList.php';
    }
    //add
    public static function addAchivments(){
        include_once 'view/addAchivment.php';
    }
    
    public static function addAchivment(){
        if(isset($_POST['submit']) and $_FILES){
        move_uploaded_file($_FILES['file']['tmp_name'], "images/".$_FILES['file']['name']);
        $sql = Model::setAddAchivment();
        }
         header('Location:achivmentList');
    }
    //
    public static function profil(){
        $phofil = Model::getProfil();
        include_once 'view/profil.php';
    }
}
