<h2 class="ct">商品分類</h2>
<!-- div.ct>input:text+button -->
<div class="ct">
    新增大分類
    <input type="text" name="big" id="big">
    <button onclick="addBig()">新增</button>
</div>
<!-- div.ct>select+input:text+button -->
 <div class="ct">
    新增中分類
    <select name="selBig" id="selBig"></select>
    <input type="text" name="mid" id="mid">
    <button onclick="addMid()">新增</button>
</div>

<!-- table.all>(tr.tt>td+td.ct>button*2) -->
<table class="all">
    <?php
    // 大分類 start
    $bigs=$Type->all(['big_id'=>0]);
    foreach($bigs as $big):
    ?>
        <tr class="tt">
            <td><?=$big['name'];?></td>
            <td class="ct">
                <button class="edit-btn" data-id="<?=$big['id'];?>">修改</button>
                <button class="del-btn" data-id="<?=$big['id'];?>">刪除</button>
            </td>
        </tr>
        <?php
        // 中分類 start
        if($Type->count(['big_id'=>$big['id']])>0): //算大分類中有沒有中分類
            $mids=$Type->all(['big_id'=>$big['id']]);
            foreach($mids as $mid):
        ?>
                <tr class="pp ct">
                    <td><?=$mid['name'];?></td>
                    <td>
                        <button class="edit-btn" data-id="<?=$mid['id'];?>">修改</button>
                        <button class="del-btn" data-id="<?=$mid['id'];?>">刪除</button>
                    </td>
                </tr>
    <?php
            endforeach;
        endif; // 中分類 end
    endforeach; // 大分類 end
    
    ?>
</table>

<script>
    getBigs();

    function addBig(){
        let name=$("#big").val();
        $.post("./api/save_type.php",{name,big_id:0},()=>{
            $("#big").val("");
            getBigs();
        });
    }

    function addMid(){
        let name=$("#mid").val();
        let big_id=$("#selBig").val();
        $.post("./api/save_type.php",{name,big_id},()=>{
            location.reload();
        });
    }

    function getBigs(){
        $.get("./api/get_bigs.php", (options)=>{
            $("#selBig").html(options);
        });
    }

    $(".del-btn").on("click",function(){ //從"back/admin.php"中複製過來的
        let id=$(this).data("id");
        if(confirm(`確定要刪除這筆分類嗎?`)){
            $.post("./api/del.php",{id,table:'Type'},()=>{
                location.reload();
            })
        }
    });

    $(".edit-btn").on("click",function(){ //從"back/admin.php"中複製過來的
        let id=$(this).data("id");
        let name=$(this).parent().prev().text();
        let newName=prompt("請輸入新的分名稱",name);
        // console.log('newName',newName); //按"確定"，輸出"輸入的名稱"; 按"取消"，輸出"null";
        if(newName != null){
            $.post("./api/save_type.php",{id, name:newName}, ()=>{
                // location.reload(); //法一
                $(this).parent().prev().text(newName); //法二
            });

        }
        
    });

</script>



<h2 class="ct">商品管理</h2>
<div class="ct">
    <button onclick="location.href='?do=add_item'">新增商品</button>
</div>
 <table class="all">
    <tr class="tt ct">
        <td>編號</td>
        <td>商品名稱</td>
        <td>庫存量</td>
        <td>狀態</td>
        <td>操作</td>
    </tr>
    <?php
    $items=$Item->all();
    foreach($items as $item):
    ?>
    <tr class="pp ct">
        <td><?=$item['no'];?></td>
        <td><?=$item['name'];?></td>
        <td><?=$item['stock'];?></td>
        <td>
            <?php
            echo ($item['sh']==1) ? "販售中" : "已下架";
            ?>
        </td>
        <td>
            <button data-id="<?=$item['id'];?>" class="edit-btn">修改</button>
            <button data-id="<?=$item['id'];?>" class="del-btn">刪除</button>
            <button data-id="<?=$item['id'];?>" class="up-btn">上架</button>
            <button data-id="<?=$item['id'];?>" class="down-btn">下架</button>
        </td>
    </tr>
    <?php
    endforeach;
    ?>
 </table>

 <script>
    $(".del-btn").on("click",function(){ //從"back/mem.php"中複製過來的
        let id=$(this).data("id");
        if(confirm(`確定要刪除這筆商品資料嗎?`)){
            $.post("./api/del.php",{id,table:'Item'},()=>{
                location.reload();
            });
        }
    });

    $(".up-btn, .down-btn").on("click", function(){
        let id=$(this).data("id");
        let sh=1;
        let action=$(this).text();
        switch(action){
            case "上架":
                sh=1;
                break;
            case "下架":
                sh=0;
                break;
        }
        $.post("./api/sw.php", {id,sh}, ()=>{ //切換上架下架
            // location.reload;
            $(this).parent().prev().text(); //還沒打完...
        });
    });
 </script>