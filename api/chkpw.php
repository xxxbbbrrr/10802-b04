<?php
include_once "../base.php";
$table=$_GET['table'];
$acc=$_GET['acc'];
$pw=$_GET['pw'];
$chk=nums($table,["acc"=>$acc,"pw"=>$pw]);
if($chk>0){
    echo 1;
}else{
    echo 0;
}