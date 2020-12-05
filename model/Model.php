<?php
class Model{
    //registr-------------------------------
    public static function setResistr($password,$sault){
        $login = $_POST['login'];
        $name=$_POST["name"];
        $fersName=$_POST["festName"];
        $e_mail=$_POST["e_mail"];
        $number=$_POST["number"];
        $sql="INSERT INTO `user`(`Nicname`, `Password`, `Solt`) 
                 VALUES ('".$login."','".$password."','".$sault."')";
        $db=new database();
        $rows=$db->getAll($sql);
        $sql ="SELECT * FROM `user` WHERE "
                . "Nicname ='".$login."' AND "
                . "Password ='".$password."' AND "
                . "Solt ='".$sault."'";
        $rows=$db->getOne($sql);
        $id = $rows['IDUser'];
        $sql="INSERT INTO `userinf`(`Name`, `FerstName`, `E-mail`, `Telefon`, `Status`, `IDUser`)"
                . " VALUES "
                . "('".$name."',"
                . "'".$fersName."',"
                . "'".$e_mail."',"
                . "".$number.","
                . "2,"
                . "".$id.")";
        $rows=$db->getAll($sql);
        return $rows;
    }
    //login-------------------------------
    public static function getLoginInf(){
        $login = $_POST['login'];
        $sql="SELECT * FROM `user` WHERE `Nicname` = '".$login."'";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getOne($sql);
        return $rows;
    }
    public static function getLogin($password,$sault){
        $login = $_POST['login'];
        $sql ="SELECT * FROM `user` WHERE "
                . "Nicname ='".$login."' AND "
                . "Password ='".$password."' AND "
                . "Solt ='".$sault."'";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getOne($sql);
        $id = $rows['IDUser'];
        $sql="SELECT * FROM `userinf`,`user`,rols WHERE userinf.Status=rols.IDStatus AND user.IDUser = userinf.IDUser "
                . "AND userinf.`IDUser` =".$id."";
        $rows=$db->getOne($sql);
        return $rows;
    }
    //personList-----------------------
    public static function getPersonList(){
        $sql="SELECT * FROM `userinf`,`user`,rols WHERE userinf.Status=rols.IDStatus AND user.IDUser = userinf.IDUser";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getAll($sql);
        return $rows;
    }
    //
    //getPersonList-----------------------
    public static function getEditPerson($id){
        $sql="SELECT * FROM `userinf`,`user`,rols WHERE userinf.Status=rols.IDStatus AND user.IDUser = userinf.IDUser "
                . "AND `ID` = ".$id."";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getOne($sql);
        return $rows;
    }
    public static function setEditePerson(){
        $id=$_POST['id'];
        $name=$_POST['name'];
        $ferstName=$_POST['festName'];
        $e_mail=$_POST['e_mail'];
        $telefon=$_POST['number'];
        $status=$_POST['status'];
        $sql="UPDATE `userinf` "
                . "SET`Name`='".$name."',"
                . "`FerstName`='".$ferstName."',"
                . "`E-mail`='".$e_mail."',"
                . "`Telefon`= ".$telefon.","
                . "`Status`=".$status.""
                . " WHERE ID = ".$id."";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getAll($sql);
        return $rows;
    }
    //deletPerson
    public static function setDeletPerson($id){
        $sql="DELETE FROM `userinf` WHERE ID = ".$id."";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getOne($sql);
        return $rows;
    }
    //Achivment
    public static function getAchivmentList(){
        $sql="SELECT * FROM `achievement`";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getAll($sql);
        return $rows;
    }
    
    public static function setAddAchivment(){
        $Name=$_POST['name'];
        $Description=$_POST['Description'];
        $NameFail=$_FILES['file']['name'];
        $sql="INSERT INTO `achievement`(`Name`, `Description`, `NameFail`) "
                . "VALUES ('".$Name."','".$Description."','".$NameFail."')";
        $db=new database();
        //result = row -1 запись
        $rows=$db->getAll($sql);
        return $sql;
    }
    public static function getProfil(){
        $id=$_SESSION['id'];
        $sql="SELECT * FROM `userinf`,`user`,rols WHERE userinf.Status=rols.IDStatus AND user.IDUser = userinf.IDUser "
                . "AND `ID` =".$id;
        $db=new database();
        //result = row -1 запись
        $rows=$db->getOne($sql);
        return $rows;
    }
}