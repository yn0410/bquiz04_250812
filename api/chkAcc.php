<?php include_once "./api/db.php";

echo $User->count(['acc'=>$_GET['acc']]);

/* $chk=$User->count(['acc'=>$_GET['acc']]);

if($chk){ //>0 = true
    echo 1;
}else{
    echo 0;
} */



?>