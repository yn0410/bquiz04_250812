<?php

//"麵包屑"區 start
$type = $_GET['type']??0;
$nav = '全部商品';
if($type != 0){
    $row = $Type->find($type);
    if($row['big_id']==0){ //是大分類
        $nav = $row['name'];
        $items = $Item->all(['big'=>$type, 'sh'=>1]);
    }else{ //是中分類
        $big = $Type->find($row['big_id']);
        $nav = $big['name']." > " .$row['name'];
        $items = $Item->all(['mid'=>$type, 'sh'=>1]);
    }
}else{ //是全部商品
    $items = $Item->all(['sh'=>1]);

}
//"麵包屑"區 end

?>


<h2><?=$nav;?></h2>

<?php
foreach($items as $item){
    echo $item['name'];
    echo "<br>";
}



?>