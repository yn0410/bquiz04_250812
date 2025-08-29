<?php include_once "db.php";

/*
$_POST['acc']=?;
$_POST['items']=?;
$_POST['no']=?;
$_POST['created_at']=?; //db會自己產生
*/

$_POST['acc']=$_SESSION['login'];
$_POST['items']=serialize($_SESSION['cart']);
$_POST['no']=date("Ymd") . rand(100000,999999);

$Order->save($_POST);

// 清空購物車，考試時非必要功能
unset($_SESSION['cart']);

to("../index.php");

?>