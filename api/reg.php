<?php include_once "db.php";
if(!isset($_POST['id'])){
    $_POST['regdate'] = date("Y-m-d"); //註冊時才需要，編輯會員資料不需要此行
}
$User->save($_POST);

?>