<?php

class PasswordCipher {
    
    public static function PasswordCiphers($password,$salt){
       $password = CRYPT($password,$salt);
       return $password;
    }
    public static function Salt(){
        $salt = PasswordCipher::generateRandomString();
        return $salt;
    }
    public static function generateRandomString() {
        $length = 16;
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        };
        $randomString = '$6$rounds=5000$'.$randomString.'$';
        return $randomString;
    }
}
